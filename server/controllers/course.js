import connection from "../config/db.js";

export const listCourses = async (req, res) => {
  try {
    const { name = "", country = "", level = "" } = req.query;
    const query = `SELECT * FROM Country JOIN University ON Country.country_id = University.country_id 
                             JOIN Course ON Course.university_id = University.university_id 
                             JOIN EducationLevel ON EducationLevel.level_id = Course.level_id
                             JOIN Scholarship ON Scholarship.university_id = University.university_id
                             WHERE Country.country_name LIKE ? AND 
                             EducationLevel.level_name LIKE ? AND 
                             (Course.course_name LIKE ? OR University.university_name LIKE ?)`;

    let [results, _fields] = await connection.query(query, [
      "%" + country + "%",
      "%" + level + "%",
      "%" + name + "%",
      "%" + name + "%",
    ]);

    return res.send(results);
  } catch (error) {
    console.log(error);
    res.status(500).send("Server error");
  }
};
