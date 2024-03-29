## Working Video
https://www.loom.com/share/678ae61f8f834ecdbd34c62e2bb46416?sid=952de5e3-0a60-4246-8c76-629fba0f1843

## Screenshots
![image](https://github.com/Santosh1608/SMS/assets/50845652/f3d9a3f9-0e08-444f-adb1-1f7488b98d30)


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

- NodeJS <code>v20</code>
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

