## Working video
https://www.loom.com/share/44267a8d7f3f445dad3ae2532480b629?sid=79548baa-ee60-4c3e-92bf-8e98e9d90111

### Tech Used

- Node, Express JS, RESTapi (Backend)
- React 18, Redux Toolkit ⚛ (Frontend)
- MySQL (Database)
- Docker 🐳 (Containerization)


### Explanation

<table>
    <tbody>
    <tr>
      <th>Service</th>
      <th>Tech Used</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>Client</td>
      <td>
        <ul>
          <li>React JS </li>
          <li>Redux Toolkit(State managment)</li>
        </ul>
      </td>
      <td>
        <ul>
          <li>This is the front end of the application</li>
          <li>The client container provides an interface to search for the courses based on filters applied</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Server</td>
      <td>
        <ul>
          <li>Node JS</li>
          <li>Express JS</li>
        </ul>
      </td>
      <td>
        <ul>
          <li>Handles request to <code>/api/courses</code> to fetch all courses</li>
          <li>Handles request to <code>/api/courses?name={name}&country={country}&level={level}</code> to fetch courses based on the query params</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Database</td>
      <td>
        <ul>
          <li>MySQL</li>
        </ul>
      </td>
      <td>
        <ul>
          <li>Courses data is pre filled already in mysql production mock database</li>
          <li>Used mysql2 package to connect to mysql db on cloud</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

---

### Requirements to run the application

- NodeJS 20v
- Docker 🐳 (If you want to run it in docker)
---

Setup to run the application

Go to server folder and run
```
npm install
npm start
```
Go to client folder and run
```
npm install
npm start
```

