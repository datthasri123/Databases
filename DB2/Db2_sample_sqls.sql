SELECT * FROM DB2.EMPLOYEE WITH UR;

CREATE TABLE DB2.CLAIMS (CLAIM_ID       VARCHAR(10),
                     POLICY_NUM     VARCHAR(12),
                     CUSTOMER_ID    VARCHAR(8),
                     STATUS         VARCHAR(20),
                     CALL_RECORDS   BLOB);
                     
                     
DROP TABLE DB2.CLAIMS;


-------------------------------------------------------------------> JSON Storage in DB2

CREATE TABLE MYLIB.FILE_INFO (
FILE_NAME     VARCHAR(64)  NOT NULL,
IFS_COPY_PATH VARCHAR(256) NOT NULL,
JSON_INFO     BLOB(32K)    NOT NULL);

INSERT INTO MYLIB.FILE_INFO
SELECT 'Processing.docx','/OneDrive/Processing.docx',
SYSTOOLS.JSON2BSON('{
   "data": [
     {
         "id": "file.22688711f5410e6c.22688711F5410E6C!942",
         "from": {
           "name": "Mike Sansoterra",
           "id": "22688711f5410e6c"
         },
         "name": "Processing.docx",
         "description": null,
         "parent_id": "folder.22688711f5410e6c.22688711F5410E6C!479",
         "size": 12692,
         "comments_count": 0,
         "comments_enabled": true,
         "is_embeddable": false,
         "type": "file",
         "shared_with": {
           "access": "Everyone (public)"
         },
         "created_time": "2011-10-12T23:18:23+0000",
         "updated_time": "2011-10-12T23:18:23+0000"
     }
   ]
}
')
FROM SYSIBM.SYSDUMMY1;

-------------------------------------------------------------------> JSON QUERYING IN DB2

SELECT FILE_NAME,SYSTOOLS.BSON2JSON(JSON_INFO) AS JSON_INFO FROM MYLIB.FILE_INFO WITH UR;


SELECT * FROM SYSIBM.SYSTABLES
  WHERE CREATOR = 'DB2'
WITH UR;

SELECT * FROM DEPARTMENT WITH UR;


