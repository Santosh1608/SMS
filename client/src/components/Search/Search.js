import React, { useCallback, useEffect, useMemo, useState } from "react";
import debounce from "lodash/debounce";
import { useDispatch } from "react-redux";
import { getCourses } from "../../features/course/courseSlice";
import styles from "./Search.module.css";

const DEBOUNCE_TIME_MS = 500;

function Search({ searchCountry, searchLevel, setSearchFromInput }) {
  const dispatch = useDispatch();

  const [name, setName] = useState("");
  const [level, setLevel] = useState("");
  const [country, setCountry] = useState("");

  useEffect(() => {
    setCountry(searchCountry);
    setLevel(searchLevel);
  }, [searchCountry, searchLevel]);

  const debounceInput = useMemo(
    () =>
      debounce((query) => {
        dispatch(getCourses(query));
      }, DEBOUNCE_TIME_MS),
    [dispatch]
  );

  useEffect(() => {
    return () => {
      debounceInput.cancel();
    };
  }, [debounceInput]);

  const onChangeHandler = useCallback(
    (e) => {
      switch (e.target.name) {
        case "name":
          setName(e.target.value);
          break;
        case "level":
          setLevel(e.target.value);
          break;
        case "country":
          setCountry(e.target.value);
          break;
        default:
          break;
      }

      const query = { name, level, country };
      query[e.target.name] = e.target.value;
      debounceInput(query);
      setSearchFromInput(true);
    },
    [country, debounceInput, level, name, setSearchFromInput]
  );

  return (
    <header className={styles.Header}>
      <input
        type="text"
        name="name"
        onChange={onChangeHandler}
        value={name}
        placeholder="Search Name"
      />
      <input
        type="text"
        name="level"
        onChange={onChangeHandler}
        value={level}
        placeholder="Search Level"
      />
      <input
        type="text"
        name="country"
        onChange={onChangeHandler}
        value={country}
        placeholder="Search Country"
      />
    </header>
  );
}

export default Search;
