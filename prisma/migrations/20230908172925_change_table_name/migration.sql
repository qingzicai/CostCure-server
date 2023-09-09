/*
  Warnings:

  - You are about to drop the `Hospital` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "UserSavedHospital" DROP CONSTRAINT "UserSavedHospital_hospital_id_fkey";

-- DropTable
DROP TABLE "Hospital";

-- CreateTable
CREATE TABLE "hospitals" (
    "id" SERIAL NOT NULL,
    "cms_certification_num" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "zip5" INTEGER NOT NULL,
    "phone_number" INTEGER NOT NULL,
    "homepage_url" TEXT NOT NULL,
    "chargemaster_url" TEXT NOT NULL,

    CONSTRAINT "hospitals_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "UserSavedHospital" ADD CONSTRAINT "UserSavedHospital_hospital_id_fkey" FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
