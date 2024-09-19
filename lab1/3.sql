/*change the type of column*/
ALTER TABLE clients
ALTER COLUMN status TYPE BOOLEAN USING status :: boolean;