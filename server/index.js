import app from "./app.js";

const PORT = process.env.PORT || 5000;

const init = () => {
  app.listen(PORT, () => {
    console.log(`server ⚡️ started on port ${PORT}`);
  });
};

init();
