import React, { useEffect, useMemo, useState } from "react";
import { useSelector, useDispatch } from "react-redux";
import Search from "../../components/Search/Search";
import Card from "../../components/Card/Card";
import { getCourses } from "../../features/course/courseSlice";
import styles from "./Home.module.css";
import { useParams } from "react-router-dom";

function Home() {
  const dispatch = useDispatch();
  const { search1 = "", search2 = "" } = useParams();
  const { courses, loading } = useSelector((state) => state.course);

  const [filteredCourses, setFilteredCourses] = useState([]);
  const [countryParam, setCountryParam] = useState("");
  const [levelParam, setLevelParam] = useState("");
  const [searchFromInput, setSearchFromInput] = useState(false);

  useEffect(() => {
    const filteredCourses = courses.filter((course) => {
      return (
        course.country_name
          .toLowerCase()
          .includes(countryParam.toLowerCase()) &&
        course.level_name.toLowerCase().includes(levelParam.toLowerCase())
      );
    });

    setFilteredCourses(filteredCourses);
  }, [dispatch, setFilteredCourses, countryParam, levelParam, courses]);

  useEffect(() => {
    const isSearch1Country =
      search1.length &&
      courses.some((course) =>
        course.country_name.toLowerCase().includes(search1.toLowerCase())
      );

    const isSearch1Level =
      search1.length &&
      courses.some((course) =>
        course.level_name.toLowerCase().includes(search1.toLowerCase())
      );

    if (isSearch1Country) {
      setCountryParam(search1);
      setLevelParam(search2);
    } else if (isSearch1Level) {
      setLevelParam(search1);
      setCountryParam(search2);
    }
  }, [courses, search1, search2]);

  useEffect(() => {
    dispatch(getCourses());
  }, [dispatch]);

  const coursesToDisplay = useMemo(
    () => (searchFromInput ? courses : filteredCourses),
    [searchFromInput, courses, filteredCourses]
  );

  return (
    <div className={styles.Container}>
      <Search
        searchCountry={countryParam}
        searchLevel={levelParam}
        setSearchFromInput={setSearchFromInput}
      />
      {loading ? (
        <p>Loading...</p>
      ) : (
        <div className={styles.CardContainer}>
          {coursesToDisplay.length ? (
            coursesToDisplay.map((course) => {
              return (
                <Card
                  key={`${course.course_id} ${course.scholarship_id}`}
                  course={course}
                />
              );
            })
          ) : (
            <h1>Results Not Found</h1>
          )}
        </div>
      )}
    </div>
  );
}

export default Home;
