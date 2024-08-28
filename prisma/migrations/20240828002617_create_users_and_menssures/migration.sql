-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "menssures" (
    "id" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "customer_code" TEXT NOT NULL,
    "measure_type" INTEGER NOT NULL,
    "measure_datetime" TIMESTAMP(3) NOT NULL,
    "has_confirmed" TEXT NOT NULL,

    CONSTRAINT "menssures_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "menssures" ADD CONSTRAINT "menssures_customer_code_fkey" FOREIGN KEY ("customer_code") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
