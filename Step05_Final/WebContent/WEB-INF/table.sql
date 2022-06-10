
--사용자(회원)정보를 저장할 테이블
CREATE TABLE users(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), --프로필 이미지 경로를 저장할 칼럼
	regdate DATE
);
--게시글을 저장할 테이블
CREATE TABLE board_cafe(
	num NUMBER PRIMARY KEY,--글번호
	writer VARCHAR2(100) NOT NULL, --작성자(로그인된 아이디)
	title VARCHAR2(100) NOT NULL, --제목
	content CLOB,--글내용
	viewCount NUMBER,--조회수
	regdate DATE--글 작성일
);

--게시글의 번호를 얻어낼 시퀀스
CREATE SEQUENCE board_cafe_seq;

select*
from
	(select num,writer,title,
	lead(num,1,0)over(order by num desc)as prevNum,
	lag(num,1,0)over(order by num desc)as nextNum
	from board_cafe)
where num=30



-- 업로드된 파일의 정보를 저장할 테이블
CREATE TABLE board_file(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100) NOT NULL,
   title VARCHAR2(100) NOT NULL,
   orgFileName VARCHAR2(100) NOT NULL, -- 원본 파일명
   saveFileName VARCHAR2(100) NOT NULL, -- 서버에 실제로 저장된 파일명
   fileSize NUMBER NOT NULL, -- 파일의 크기 
   regdate DATE
);

CREATE SEQUENCE board_file_seq;

-- 이미지 겔러리를 만들기 위한 테이블 
CREATE TABLE board_gallery(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   caption VARCHAR2(100), -- 이미지에 대한 설명
   imagePath VARCHAR2(100), -- 업로드된 이미지의 경로  ex) /upload/xxx.jpg
   regdate DATE -- 이미지 업로드 날짜 
);

CREATE SEQUENCE board_gallery_seq;

