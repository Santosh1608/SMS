import React from "react";
import styles from "./Card.module.css";
function Card({ course }) {
  return (
    <div className={styles.Card}>
      <div className={styles.Header}>
        <img
          className={styles.BackLogo}
          alt="background"
          src="https://picsum.photos/400/100"
        />
        <img
          className={styles.Logo}
          alt="logo"
          src="https://picsum.photos/100/100"
        />
      </div>
      <div className={styles.Footer}>
        <h2>{course.course_name}</h2>
        <p>
          {course.university_name}, {course.country_name}
        </p>
        <div className={styles.Box}>
          <div>
            <h3>
              {course.currency} {course.course_tuition}
            </h3>
            <p>Est, Annual Tution</p>
          </div>
          <div>
            <h3>{course.course_duration}</h3>
            <p>Course Duration</p>
          </div>
        </div>
        <div>
          <h4>{course.level_name}</h4>
          <div className={styles.Merit}>
            <div className={styles.Line}></div>
            <div className={styles.Right}>
              <p>{course.scholarship_name}</p>
            </div>
          </div>

          <div className={styles.Highlight}>
            <p>{course.scholarship_promo}</p>
          </div>

          <button>Secure Scholarship</button>
          <p className={styles.Final}>
            Secure your spot today and our experts will connect with you within
            <span>48 hours</span>
          </p>
        </div>
      </div>
    </div>
  );
}

export default Card;
