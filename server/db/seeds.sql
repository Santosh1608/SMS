INSERT INTO
  Country (country_name, currency)
VALUES
  ("United States of America", "USD"),
  ("United Arab Emirates", "AED"),
  ("India", "INR");

INSERT INTO
  EducationLevel (level_name)
VALUES
  ("Diploma"),
  ("Undergraduate"),
  ("Postgraduate");

INSERT INTO
  University(university_name, country_id)
VALUES
  -- USA
  ("University 1 Lorem ipsum dolor sit amet", 1),
  ("University 2 Lorem ipsum", 1),
  ("University 3 Lorem ipsum", 1),
  ("University 4 Lorem ipsuem dolor sit", 1),
  -- UAE
  ("University 5 Lorem", 2),
  ("University 6 Lorem ipsum dolor sit amet", 2),
  ("University 7 Lorem", 2),
  -- UK
  ("University 8 Lorem ipsum dolor", 3),
  ("University 9 Lorem ipsum", 3),
  ("University 10 Lorem ipsum", 3);

INSERT INTO
  Course (
    course_name,
    course_tuition,
    course_duration,
    university_id,
    level_id
  )
VALUES
  -- USA
  (
    "Course 1 1 Lorem ipsum dolor sit amet",
    20000,
    "3 Years",
    1,
    1
  ),
  (
    "Course 1 2 Lorem ipsum dolor sit amet, consectetur adipiscing",
    20000,
    "3 Years",
    1,
    1
  ),
  (
    "Course 1 3 Lorem ipsum dolor sit amet, consectetur adipiscing",
    40000,
    "4 Years",
    1,
    2
  ),
  (
    "Course 2 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    130000,
    "3 Years",
    2,
    1
  ),
  (
    "Course 2 5 Lorem ipsum dolor sit amet, consectetur adipiscing",
    360000,
    "4 Years",
    2,
    2
  ),
  (
    "Course 2 6 Lorem ipsum dolor sit amet",
    16000,
    "2 Years",
    2,
    3
  ),
  (
    "Course 3 7 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    18000,
    "3 Years",
    3,
    1
  ),
  (
    "Course 3 8 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    44000,
    "4 Years",
    3,
    2
  ),
  (
    "Course 3 9 Lorem ipsum dolor sit amet, consectetur adipiscing",
    45000,
    "4 Years",
    3,
    2
  ),
  (
    "Course 4 10 Lorem ipsum dolor sit amet",
    50000,
    "4 Years",
    4,
    2
  ),
  (
    "Course 4 11 Lorem ipsum dolor sit amet",
    27000,
    "4 Years",
    4,
    2
  ),
  (
    "Course 4 12 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    24000,
    "2 Years",
    4,
    3
  ),
  -- UAE
  (
    "Course 5 13 Lorem ipsum dolor sit amet, consectetur adipiscing",
    120000,
    "4 Years",
    5,
    2
  ),
  (
    "Course 5 14 Lorem ipsum dolor sit amet, consectetur adipiscing",
    870000,
    "3 Years",
    5,
    1
  ),
  (
    "Course 5 15 Lorem ipsum dolor sit amet",
    110000,
    "4 Years",
    5,
    2
  ),
  (
    "Course 6 16 Lorem ipsum dolor sit amet",
    115000,
    "2 Years",
    6,
    3
  ),
  (
    "Course 6 17 Lorem ipsum dolor sit amet, consectetur adipiscing",
    125000,
    "4 Years",
    6,
    2
  ),
  (
    "Course 6 18 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    110000,
    "3 Years",
    6,
    1
  ),
  (
    "Course 7 19 Lorem ipsum dolor sit amet",
    130000,
    "4 Years",
    7,
    2
  ),
  (
    "Course 7 20 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    90000,
    "3 Years",
    7,
    1
  ),
  (
    "Course 7 21 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    1140000,
    "4 Years",
    7,
    2
  ),
  -- UK
  (
    "Course 8 22 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    250000,
    "2 Years",
    8,
    3
  ),
  (
    "Course 8 23 Lorem ipsum dolor sit amet",
    320000,
    "2 Years",
    8,
    3
  ),
  (
    "Course 8 24 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    500000,
    "2 Years",
    8,
    3
  ),
  (
    "Course 9 25 Lorem ipsum dolor sit amet, consectetur adipiscing",
    390000,
    "3 Years",
    9,
    1
  ),
  (
    "Course 9 26 Lorem ipsum dolor sit amet, consectetur adipiscing",
    375000,
    "4 Years",
    9,
    2
  ),
  (
    "Course 9 27 Lorem ipsum dolor sit amet",
    220000,
    "3 Years",
    9,
    1
  ),
  (
    "Course 10 28 Lorem ipsum dolor sit amet, consectetur adipiscing",
    425000,
    "4 Years",
    10,
    2
  ),
  (
    "Course 10 29 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    290000,
    "3 Years",
    10,
    1
  ),
  (
    "Course 10 30 Lorem ipsum dolor sit amet",
    340000,
    "2 Years",
    10,
    3
  );

INSERT INTO
  Scholarship (
    scholarship_name,
    scholarship_promo,
    university_id,
    level_id
  )
VALUES
  -- USA
  (
    "Scholarship 1 1 Lorem ipsum",
    "Lorem ipsum dolor sit amet",
    1,
    1
  ),
  (
    "Scholarship 1 2 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    1,
    2
  ),
  (
    "Scholarship 1 3 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    1,
    3
  ),
  (
    "Scholarship 2 4 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    2,
    1
  ),
  (
    "Scholarship 2 5 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    2,
    2
  ),
  (
    "Scholarship 2 6 Lorem ipsum",
    "Lorem ipsum dolor sit amet",
    2,
    3
  ),
  (
    "Scholarship 3 7 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet",
    3,
    1
  ),
  (
    "Scholarship 3 8 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet",
    3,
    2
  ),
  (
    "Scholarship 3 9 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet",
    3,
    3
  ),
  (
    "Scholarship 4 10 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    4,
    1
  ),
  (
    "Scholarship 4 11 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    4,
    2
  ),
  (
    "Scholarship 4 12 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    4,
    3
  ),
  -- UAE
  (
    "Scholarship 5 13 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    5,
    1
  ),
  (
    "Scholarship 5 14 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    5,
    2
  ),
  (
    "Scholarship 5 15 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    5,
    3
  ),
  (
    "Scholarship 6 16",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    6,
    1
  ),
  (
    "Scholarship 6 17 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet",
    6,
    2
  ),
  (
    "Scholarship 6 18 Lorem ipsum",
    "Lorem ipsum dolor sit amet",
    6,
    3
  ),
  (
    "Scholarship 7 19 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    7,
    1
  ),
  (
    "Scholarship 7 20 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet",
    7,
    2
  ),
  (
    "Scholarship 7 21 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    7,
    3
  ),
  -- UK
  (
    "Scholarship 8 22 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet",
    8,
    1
  ),
  (
    "Scholarship 8 23 Lorem ipsum",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    8,
    2
  ),
  (
    "Scholarship 8 24 Lorem ipsum",
    "Lorem ipsum dolor sit amet",
    8,
    3
  ),
  (
    "Scholarship 9 25 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    9,
    1
  ),
  (
    "Scholarship 9 26 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    9,
    2
  ),
  (
    "Scholarship 9 27 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    9,
    3
  ),
  (
    "Scholarship 10 28 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
    10,
    1
  ),
  (
    "Scholarship 10 29 Lorem ipsum dolor",
    "Lorem ipsum dolor sit amet",
    10,
    2
  ),
  (
    "Scholarship 10 30 Lorem ipsum dolor sit amet",
    "Lorem ipsum dolor sit amet",
    10,
    3
  );

SET
  FOREIGN_KEY_CHECKS = 1;