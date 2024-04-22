import express from "express";
import bodyParser, { json } from "body-parser";
import cors from "cors";

const port = process.env.PORT || 3000;
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(cors({
        origin: "http://localhost:5173",
        methods: "GET, POST, PUT, HEAD, PATCH, DELETE",
        credentials:true
    })
);

app.listen(port, () => {
    console.log(`server running on port ${port}`);
});
