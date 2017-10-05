use waproj;
create table if not exists loginserviceprovider(provider varchar(20) not null primary key);
create table if not exists userlist(loginprovider varchar(15) not null , id varchar(15) not null, storage_session_id varchar(300) not null, primary key(loginprovider,id),foreign key(loginprovider) references loginserviceprovider(provider) on delete cascade on update cascade,unique(storage_session_id));
create table if not exists user_storage (stor_sess varchar(300) not null,path varchar(400) not null default "/",filename varchar(100) not null,filecontent text(65535), primary key(stor_sess,path,filename),foreign key(stor_sess) references userlist(storage_session_id) on delete cascade on update cascade );
