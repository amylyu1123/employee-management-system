CREATE TABLE ou_account(
    id INT NOT NULL   COMMENT '' ,
    usercode VARCHAR(32) NOT NULL   COMMENT '' ,
    username VARCHAR(32) NOT NULL   COMMENT '' ,
    passwd VARCHAR(32) NOT NULL   COMMENT '' ,
    email VARCHAR(32) NOT NULL   COMMENT '' ,
    status VARCHAR(1) NOT NULL   COMMENT 'A/Active,I/Inavtive,F/Forbidden' ,
    deptcode VARCHAR(32) NOT NULL   COMMENT '' ,
    registertime VARCHAR(19) NOT NULL   COMMENT '' ,
    lastlogin VARCHAR(19)    DEFAULT  NULL COMMENT '' ,
    lastloginip VARCHAR(32)    DEFAULT  NULL COMMENT '' ,
    seqnum INT    DEFAULT  NULL COMMENT '' ,
    PRIMARY KEY (usercode)
)  COMMENT = 'Account';

CREATE TABLE ou_dept(
    id INT NOT NULL   COMMENT '' ,
    deptcode VARCHAR(32) NOT NULL   COMMENT '' ,
    pathcode VARCHAR(256) NOT NULL   COMMENT 'xxx/yyy/zzz' ,
    deptname VARCHAR(64) NOT NULL   COMMENT '' ,
    status VARCHAR(1) NOT NULL   COMMENT 'A/Active,I/Inactive' ,
    description VARCHAR(64)    DEFAULT  NULL COMMENT '' ,
    seqnum INT    DEFAULT  NULL COMMENT '' ,
    PRIMARY KEY (deptcode)
)  COMMENT = 'Department';

CREATE TABLE ou_resource(
    id INT NOT NULL   COMMENT '' ,
    code VARCHAR(128) NOT NULL   COMMENT '' ,
    name VARCHAR(32) NOT NULL   COMMENT '' ,
    sysname VARCHAR(32) NOT NULL   COMMENT '' ,
    modelname VARCHAR(32) NOT NULL   COMMENT '' ,
    actionname VARCHAR(32) NOT NULL   COMMENT '' ,
    accesstype VARCHAR(1) NOT NULL   COMMENT 'L/login access,A/anonymous,R/role' ,
    PRIMARY KEY (code)
)  COMMENT = 'Resource';

CREATE TABLE ou_role(
    id INT NOT NULL   COMMENT '' ,
    rolecode VARCHAR(32) NOT NULL   COMMENT '' ,
    rolename VARCHAR(32) NOT NULL   COMMENT '' ,
    description VARCHAR(64)    DEFAULT  NULL COMMENT '' ,
    seqnum INT    DEFAULT  NULL COMMENT '' ,
    PRIMARY KEY (rolecode)
)  COMMENT = 'Role';

CREATE TABLE ou_roleresource(
    id INT NOT NULL   COMMENT '' ,
    rolecode VARCHAR(32)    COMMENT '' ,
    resourcecode VARCHAR(128) NOT NULL   COMMENT '' ,
    rightflag VARCHAR(1) NOT NULL   COMMENT 'Y/Yes,N/No' ,
    PRIMARY KEY (rolecode)
)  COMMENT = 'Roleresource';

CREATE TABLE ou_userrole(
    id INT NOT NULL   COMMENT '' ,
    usercode VARCHAR(32) NOT NULL   COMMENT '' ,
    rolecode VARCHAR(32) NOT NULL   COMMENT '' ,
    PRIMARY KEY (usercode)
)  COMMENT = 'Userrole';

CREATE TABLE gl_dic(
    id INT NOT NULL   COMMENT '' ,
    dickey VARCHAR(64) NOT NULL   COMMENT '' ,
    dicvalue VARCHAR(64) NOT NULL   COMMENT '' ,
    PRIMARY KEY (dickey)
)  COMMENT = 'Systemdict';

