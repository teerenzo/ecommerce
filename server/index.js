//imports fro packages
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
//import from other files
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

//initialization
const PORT = 4000;
const app = express();
const DB="mongodb+srv://suhaila:wwVmDYEW3J7O45h3@cluster0.qzwi0js.mongodb.net/?retryWrites=true&w=majority"

//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((e) => {
    console.log(e);
  });

//GET,PUT,POST,DELETE,UPDATE =CRUD
app.listen(PORT, () => {
  console.log(`connected at port  ${PORT}`);
});
