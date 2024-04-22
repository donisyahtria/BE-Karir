-- CreateTable
CREATE TABLE "Karyawan" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "nama" VARCHAR(255) NOT NULL,
    "id_level_jabatan" INTEGER NOT NULL,
    "tempat_lahir" VARCHAR(255),
    "tanggal_lahir" DATE NOT NULL,
    "tanggal_sumpah" DATE NOT NULL,
    "kode_jiwa" CHAR(3),
    "jenis_kelamin" CHAR(1),
    "status_kerja" INTEGER NOT NULL,
    "email" VARCHAR(255),

    CONSTRAINT "Karyawan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Mutasi" (
    "id" SERIAL NOT NULL,
    "kode_mutasi" INTEGER NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "id_jabatan_tujuan" INTEGER NOT NULL,
    "id_jenis_mutasi" INTEGER NOT NULL,
    "id_level_jabatan" INTEGER NOT NULL,
    "tanggal_skep" DATE NOT NULL,
    "nomor_skep" VARCHAR(255) NOT NULL,
    "tmt_skep" DATE NOT NULL,
    "crt" CHAR(1) NOT NULL,
    "keterangan" VARCHAR(255),
    "tanggal_pengisian" DATE NOT NULL,

    CONSTRAINT "Mutasi_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Jabatan_Kantor" (
    "id" SERIAL NOT NULL,
    "kode_jabatan_kantor" INTEGER NOT NULL,
    "id_jabatan_org" INTEGER NOT NULL,
    "nopend" CHAR(7),

    CONSTRAINT "Jabatan_Kantor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Jabatan_Bagian" (
    "id" SERIAL NOT NULL,
    "kode_jabatan_bagian" INTEGER NOT NULL,
    "kode_bagian" CHAR(7) NOT NULL,
    "kode_jabatan" CHAR(7) NOT NULL,
    "id_level_jabatan" INTEGER NOT NULL,

    CONSTRAINT "Jabatan_Bagian_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Jabatan" (
    "id" SERIAL NOT NULL,
    "kode_jabatan" CHAR(7) NOT NULL,
    "nama_jabatan" VARCHAR(255) NOT NULL,
    "status" CHAR(1) NOT NULL,

    CONSTRAINT "Referensi_Jabatan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Bagian" (
    "id" SERIAL NOT NULL,
    "kode_bagian" CHAR(7) NOT NULL,
    "nama_bagian" VARCHAR(255) NOT NULL,
    "status" CHAR(1) NOT NULL,
    "id_rumpun" INTEGER NOT NULL,

    CONSTRAINT "Referensi_Bagian_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Kantor" (
    "id" SERIAL NOT NULL,
    "nopend" CHAR(7) NOT NULL,
    "nama_kantor" VARCHAR(255) NOT NULL,
    "id_kelas_kantor" INTEGER NOT NULL,
    "id_wilayah" INTEGER NOT NULL,
    "status" CHAR(1) NOT NULL,

    CONSTRAINT "Referensi_Kantor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Level_Jabatan" (
    "id" SERIAL NOT NULL,
    "kode_level_jabatan" INTEGER NOT NULL,
    "nama_LJ" CHAR(2) NOT NULL,
    "ranking" INTEGER NOT NULL,

    CONSTRAINT "Referensi_Level_Jabatan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Rumpun" (
    "id" SERIAL NOT NULL,
    "kode_rumpun" INTEGER NOT NULL,
    "nama_rumpun" VARCHAR(255) NOT NULL,

    CONSTRAINT "Referensi_Rumpun_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Wilayah" (
    "id" SERIAL NOT NULL,
    "kode_wilayah" INTEGER NOT NULL,
    "nama_wilayah" VARCHAR(255) NOT NULL,

    CONSTRAINT "Referensi_Wilayah_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Talent" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "id_rumpun" INTEGER NOT NULL,
    "status" CHAR(1) NOT NULL,
    "jenis_talent" INTEGER NOT NULL,
    "berlaku_mulai" DATE NOT NULL,
    "berlaku_hingga" DATE NOT NULL,

    CONSTRAINT "Talent_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Individual_Performance" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "skor_nki" INTEGER NOT NULL,
    "tahun" DATE NOT NULL,

    CONSTRAINT "Individual_Performance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Penghargaan" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "nama_penghargaan" VARCHAR(255) NOT NULL,
    "jenis_penghargaan" INTEGER NOT NULL,
    "level_penghargaan" INTEGER NOT NULL,
    "lembaga_penyelenggara" VARCHAR(255) NOT NULL,

    CONSTRAINT "Penghargaan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Jenis_Penghargaan" (
    "id" SERIAL NOT NULL,
    "kode_jenis_penghargaan" INTEGER NOT NULL,
    "nama_jenis_penghargaan" VARCHAR(255) NOT NULL,

    CONSTRAINT "Referensi_Jenis_Penghargaan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Level_Penghargaan" (
    "id" SERIAL NOT NULL,
    "kode_level_penghargaan" INTEGER NOT NULL,
    "nama_level_penghargaan" VARCHAR(255) NOT NULL,

    CONSTRAINT "Referensi_Level_Penghargaan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ECP" (
    "id" SERIAL NOT NULL,
    "id_event" INTEGER NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "jenis_aspirasi" INTEGER NOT NULL,
    "id_jabatan_aspirasi" INTEGER NOT NULL,
    "tanggal_pengisian" DATE NOT NULL,

    CONSTRAINT "ECP_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MCP" (
    "id" SERIAL NOT NULL,
    "id_event" INTEGER NOT NULL,
    "nippos_atasan" CHAR(9) NOT NULL,
    "nippos_bawahan" CHAR(9) NOT NULL,
    "jenis_aspirasi" INTEGER NOT NULL,
    "id_jabatan_aspirasi" INTEGER NOT NULL,
    "tanggal_pengisian" DATE NOT NULL,

    CONSTRAINT "MCP_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SCP" (
    "id" SERIAL NOT NULL,
    "id_event" INTEGER NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "nippos_successor" CHAR(9) NOT NULL,
    "jenis_aspirasi" INTEGER NOT NULL,
    "tanggal_pengisian" DATE NOT NULL,

    CONSTRAINT "SCP_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pelatihan" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "nama_pelatihan" VARCHAR(255) NOT NULL,
    "jenis_pelatihan" INTEGER NOT NULL,
    "nilai_pelatihan" INTEGER,
    "tanggal_mulai" DATE NOT NULL,
    "tanggal_selesai" DATE NOT NULL,

    CONSTRAINT "Pelatihan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Risiko_Rumpun" (
    "id" SERIAL NOT NULL,
    "id_rumpun_asal" INTEGER NOT NULL,
    "id_rumpun_tujuan" INTEGER NOT NULL,
    "id_risiko" INTEGER NOT NULL,

    CONSTRAINT "Risiko_Rumpun_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Referensi_Risiko" (
    "id" SERIAL NOT NULL,
    "kode_risiko" INTEGER NOT NULL,
    "tingkat_risiko" VARCHAR(255) NOT NULL,

    CONSTRAINT "Referensi_Risiko_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Sosio_Kontributor" (
    "id" SERIAL NOT NULL,
    "nippos" CHAR(9) NOT NULL,
    "nama_sosio_kontributor" VARCHAR(25) NOT NULL,
    "level_sosio_kotributor" INTEGER NOT NULL,
    "jenis_sosio_kontributor" INTEGER NOT NULL,
    "tanggal_pengisian" DATE NOT NULL,
    "validasi" BOOLEAN NOT NULL,

    CONSTRAINT "Sosio_Kontributor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Jenis_Sosio_Kontributor" (
    "id" SERIAL NOT NULL,
    "kode_jenis_sc" INTEGER NOT NULL,
    "nama_jenis_sosio" VARCHAR(255) NOT NULL,

    CONSTRAINT "Jenis_Sosio_Kontributor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Level_Sosio_Kontributor" (
    "id" SERIAL NOT NULL,
    "kode_level_sc" INTEGER NOT NULL,
    "nama_level_sosio" VARCHAR(255) NOT NULL,

    CONSTRAINT "Level_Sosio_Kontributor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Parameter_Karir" (
    "id" SERIAL NOT NULL,
    "kode_parameter" INTEGER NOT NULL,
    "nama_paramter" VARCHAR(255) NOT NULL,
    "bobot" DOUBLE PRECISION NOT NULL,
    "nilaimax" INTEGER NOT NULL,

    CONSTRAINT "Parameter_Karir_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Aspek_Karir" (
    "id" SERIAL NOT NULL,
    "kode_aspek" INTEGER NOT NULL,
    "nama_aspek" VARCHAR(255) NOT NULL,
    "id_paramter" INTEGER NOT NULL,

    CONSTRAINT "Aspek_Karir_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Karyawan_nippos_key" ON "Karyawan"("nippos");

-- CreateIndex
CREATE UNIQUE INDEX "Mutasi_kode_mutasi_key" ON "Mutasi"("kode_mutasi");

-- CreateIndex
CREATE UNIQUE INDEX "Jabatan_Kantor_kode_jabatan_kantor_key" ON "Jabatan_Kantor"("kode_jabatan_kantor");

-- CreateIndex
CREATE UNIQUE INDEX "Jabatan_Bagian_kode_jabatan_bagian_key" ON "Jabatan_Bagian"("kode_jabatan_bagian");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Jabatan_kode_jabatan_key" ON "Referensi_Jabatan"("kode_jabatan");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Bagian_kode_bagian_key" ON "Referensi_Bagian"("kode_bagian");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Kantor_nopend_key" ON "Referensi_Kantor"("nopend");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Level_Jabatan_kode_level_jabatan_key" ON "Referensi_Level_Jabatan"("kode_level_jabatan");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Rumpun_kode_rumpun_key" ON "Referensi_Rumpun"("kode_rumpun");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Wilayah_kode_wilayah_key" ON "Referensi_Wilayah"("kode_wilayah");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Jenis_Penghargaan_kode_jenis_penghargaan_key" ON "Referensi_Jenis_Penghargaan"("kode_jenis_penghargaan");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Level_Penghargaan_kode_level_penghargaan_key" ON "Referensi_Level_Penghargaan"("kode_level_penghargaan");

-- CreateIndex
CREATE UNIQUE INDEX "Referensi_Risiko_kode_risiko_key" ON "Referensi_Risiko"("kode_risiko");

-- CreateIndex
CREATE UNIQUE INDEX "Jenis_Sosio_Kontributor_kode_jenis_sc_key" ON "Jenis_Sosio_Kontributor"("kode_jenis_sc");

-- CreateIndex
CREATE UNIQUE INDEX "Level_Sosio_Kontributor_kode_level_sc_key" ON "Level_Sosio_Kontributor"("kode_level_sc");

-- CreateIndex
CREATE UNIQUE INDEX "Parameter_Karir_kode_parameter_key" ON "Parameter_Karir"("kode_parameter");

-- CreateIndex
CREATE UNIQUE INDEX "Aspek_Karir_kode_aspek_key" ON "Aspek_Karir"("kode_aspek");

-- AddForeignKey
ALTER TABLE "Karyawan" ADD CONSTRAINT "Karyawan_id_level_jabatan_fkey" FOREIGN KEY ("id_level_jabatan") REFERENCES "Referensi_Level_Jabatan"("kode_level_jabatan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mutasi" ADD CONSTRAINT "Mutasi_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mutasi" ADD CONSTRAINT "Mutasi_id_jabatan_tujuan_fkey" FOREIGN KEY ("id_jabatan_tujuan") REFERENCES "Jabatan_Kantor"("kode_jabatan_kantor") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mutasi" ADD CONSTRAINT "Mutasi_id_level_jabatan_fkey" FOREIGN KEY ("id_level_jabatan") REFERENCES "Referensi_Level_Jabatan"("kode_level_jabatan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Jabatan_Kantor" ADD CONSTRAINT "Jabatan_Kantor_id_jabatan_org_fkey" FOREIGN KEY ("id_jabatan_org") REFERENCES "Jabatan_Bagian"("kode_jabatan_bagian") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Jabatan_Kantor" ADD CONSTRAINT "Jabatan_Kantor_nopend_fkey" FOREIGN KEY ("nopend") REFERENCES "Referensi_Kantor"("nopend") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Jabatan_Bagian" ADD CONSTRAINT "Jabatan_Bagian_kode_bagian_fkey" FOREIGN KEY ("kode_bagian") REFERENCES "Referensi_Bagian"("kode_bagian") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Jabatan_Bagian" ADD CONSTRAINT "Jabatan_Bagian_kode_jabatan_fkey" FOREIGN KEY ("kode_jabatan") REFERENCES "Referensi_Jabatan"("kode_jabatan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Jabatan_Bagian" ADD CONSTRAINT "Jabatan_Bagian_id_level_jabatan_fkey" FOREIGN KEY ("id_level_jabatan") REFERENCES "Referensi_Level_Jabatan"("kode_level_jabatan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Referensi_Bagian" ADD CONSTRAINT "Referensi_Bagian_id_rumpun_fkey" FOREIGN KEY ("id_rumpun") REFERENCES "Referensi_Rumpun"("kode_rumpun") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Referensi_Kantor" ADD CONSTRAINT "Referensi_Kantor_id_wilayah_fkey" FOREIGN KEY ("id_wilayah") REFERENCES "Referensi_Wilayah"("kode_wilayah") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Talent" ADD CONSTRAINT "Talent_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Talent" ADD CONSTRAINT "Talent_id_rumpun_fkey" FOREIGN KEY ("id_rumpun") REFERENCES "Referensi_Rumpun"("kode_rumpun") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Individual_Performance" ADD CONSTRAINT "Individual_Performance_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Penghargaan" ADD CONSTRAINT "Penghargaan_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Penghargaan" ADD CONSTRAINT "Penghargaan_jenis_penghargaan_fkey" FOREIGN KEY ("jenis_penghargaan") REFERENCES "Referensi_Jenis_Penghargaan"("kode_jenis_penghargaan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Penghargaan" ADD CONSTRAINT "Penghargaan_level_penghargaan_fkey" FOREIGN KEY ("level_penghargaan") REFERENCES "Referensi_Level_Penghargaan"("kode_level_penghargaan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ECP" ADD CONSTRAINT "ECP_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ECP" ADD CONSTRAINT "ECP_id_jabatan_aspirasi_fkey" FOREIGN KEY ("id_jabatan_aspirasi") REFERENCES "Jabatan_Bagian"("kode_jabatan_bagian") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MCP" ADD CONSTRAINT "MCP_nippos_atasan_fkey" FOREIGN KEY ("nippos_atasan") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MCP" ADD CONSTRAINT "MCP_nippos_bawahan_fkey" FOREIGN KEY ("nippos_bawahan") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MCP" ADD CONSTRAINT "MCP_id_jabatan_aspirasi_fkey" FOREIGN KEY ("id_jabatan_aspirasi") REFERENCES "Jabatan_Bagian"("kode_jabatan_bagian") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SCP" ADD CONSTRAINT "SCP_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SCP" ADD CONSTRAINT "SCP_nippos_successor_fkey" FOREIGN KEY ("nippos_successor") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pelatihan" ADD CONSTRAINT "Pelatihan_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Risiko_Rumpun" ADD CONSTRAINT "Risiko_Rumpun_id_rumpun_asal_fkey" FOREIGN KEY ("id_rumpun_asal") REFERENCES "Referensi_Rumpun"("kode_rumpun") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Risiko_Rumpun" ADD CONSTRAINT "Risiko_Rumpun_id_rumpun_tujuan_fkey" FOREIGN KEY ("id_rumpun_tujuan") REFERENCES "Referensi_Rumpun"("kode_rumpun") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Risiko_Rumpun" ADD CONSTRAINT "Risiko_Rumpun_id_risiko_fkey" FOREIGN KEY ("id_risiko") REFERENCES "Referensi_Risiko"("kode_risiko") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sosio_Kontributor" ADD CONSTRAINT "Sosio_Kontributor_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "Karyawan"("nippos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sosio_Kontributor" ADD CONSTRAINT "Sosio_Kontributor_level_sosio_kotributor_fkey" FOREIGN KEY ("level_sosio_kotributor") REFERENCES "Level_Sosio_Kontributor"("kode_level_sc") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sosio_Kontributor" ADD CONSTRAINT "Sosio_Kontributor_jenis_sosio_kontributor_fkey" FOREIGN KEY ("jenis_sosio_kontributor") REFERENCES "Jenis_Sosio_Kontributor"("kode_jenis_sc") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Aspek_Karir" ADD CONSTRAINT "Aspek_Karir_id_paramter_fkey" FOREIGN KEY ("id_paramter") REFERENCES "Parameter_Karir"("kode_parameter") ON DELETE RESTRICT ON UPDATE CASCADE;
