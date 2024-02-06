import axiosInstance from "../../api/axiosInstance";

const API_URL = "/courses";

const getCourses = async (query = { name: "", country: "", level: "" }) => {
  const response = await axiosInstance.get(
    `${API_URL}?name=${query.name}&country=${query.country}&level=${query.level}`
  );
  return response.data;
};

const courseService = {
  getCourses,
};

export default courseService;
