-- 계정 생성
CREATE USER 'study'@'%' IDENTIFIED BY 'it2116016^^';
CREATE USER 'bm'@'%' IDENTIFIED BY 'it2116016^^';

GRANT ALL PRIVILEGES ON study.* TO 'study'@'%';
GRANT ALL PRIVILEGES ON bm.* TO 'bm'@'%';
