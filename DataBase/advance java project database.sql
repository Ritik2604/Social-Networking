create database dbsocial
use dbsocial
create table tbuser(userid varchar(50) primary key,usrpwd varchar(50),usrsecques varchar(50),usrname varchar(50),usradd varchar(50),usrgen varchar(50),usrmob varchar(50),usrqualification varchar(50),usrdob varchar(50),usrimg varchar(50))
create table tbfriend(sno int primary key,userid varchar(50),fid varchar(50),status int,foreign key(userid) references tbuser(userid),foreign key(fid) references tbuser(userid))
create table tbmsg(msgid int primary key,msgfrmuserid varchar(50),msgtouserid varchar(50),msgdesc varchar(50),msgdate varchar(50),msgtime varchar(50),foreign key(msgfrmuserid) references tbuser(userid),foreign key(msgtouserid) references tbuser(userid))
create table tbgroup(groupid int primary key,groupdesc varchar(50),groupowner varchar(50),foreign key(groupowner) references tbuser(userid))
create table tbgroupmember(memberid int primary key,memberuserid varchar(50),membergid int,foreign key(memberuserid) references tbuser(userid),foreign key(membergid) references tbgroup(groupid))
create table tbtopiccomment(commentid int primary key,commentdesc varchar(50),commentdate varchar(50),commenttime varchar(50),commentuserid varchar(50),commenttopicid int,foreign key(commentuserid) references tbuser(userid),foreign key(commenttopicid) references tbtopic(topicid))