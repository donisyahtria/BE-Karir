import prisma from "../../prisma/prisma";
import express from "express";

const router = express.Router();

router.post("/updateskordays", async (req, res) => {
  try {
    res.status(200).json({ masukSkorDays });
  } catch (err) {
    console.log({ err });
    res.status(500).json({ message: "Internal server error", err });
  }
});

export default router;