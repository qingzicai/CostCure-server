/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserSavedHospital` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "UserSavedHospital" DROP CONSTRAINT "UserSavedHospital_hospital_id_fkey";

-- DropForeignKey
ALTER TABLE "UserSavedHospital" DROP CONSTRAINT "UserSavedHospital_user_id_fkey";

-- DropTable
DROP TABLE "User";

-- DropTable
DROP TABLE "UserSavedHospital";

-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_saved_hospitals" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "hospital_id" INTEGER NOT NULL,

    CONSTRAINT "user_saved_hospitals_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "user_saved_hospitals" ADD CONSTRAINT "user_saved_hospitals_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_saved_hospitals" ADD CONSTRAINT "user_saved_hospitals_hospital_id_fkey" FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
