-- CreateTable
CREATE TABLE "Provider" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "licenseNumber" TEXT NOT NULL,
    "active" BOOLEAN NOT NULL,
    "approved" BOOLEAN NOT NULL,
    "backgroundCheck" BOOLEAN NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "Provider_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- -- CreateTable
-- CREATE TABLE "Client" (
--     "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     "active" BOOLEAN NOT NULL,
--     "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     "updatedAt" DATETIME NOT NULL,
--     "userId" INTEGER NOT NULL,
--     CONSTRAINT "Client_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
-- );

-- -- CreateTable
-- CREATE TABLE "Location" (
--     "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     "name" TEXT NOT NULL,
--     "addressLine1" TEXT NOT NULL,
--     "addressLine2" TEXT NOT NULL,
--     "addressLine3" TEXT NOT NULL,
--     "city" TEXT NOT NULL,
--     "province" TEXT NOT NULL,
--     "postalCode" TEXT NOT NULL,
--     "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     "updatedAt" DATETIME NOT NULL,
--     "userId" INTEGER NOT NULL,
--     CONSTRAINT "Location_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
-- );
