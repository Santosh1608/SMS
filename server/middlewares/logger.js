export const createLogger = (req, res, next) => {
  req.time = new Date(Date.now()).toString();
  console.log(req.method, decodeURI(req.url), req.hostname, req.time);
  next();
};
