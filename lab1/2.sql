/* add column status */
ALTER TABLE clients
ADD COLUMN status INTEGER CHECK ( status IN (0, 1) );