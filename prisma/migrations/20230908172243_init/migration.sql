-- CreateTable
CREATE TABLE "Hospital" (
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

    CONSTRAINT "Hospital_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSavedHospital" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "hospital_id" INTEGER NOT NULL,

    CONSTRAINT "UserSavedHospital_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "UserSavedHospital" ADD CONSTRAINT "UserSavedHospital_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserSavedHospital" ADD CONSTRAINT "UserSavedHospital_hospital_id_fkey" FOREIGN KEY ("hospital_id") REFERENCES "Hospital"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
