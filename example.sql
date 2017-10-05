insert into loginserviceprovider values('github');
insert into userlist values('github','userid',concat(md5(concat('githubuserid',sha2('githubuserid',256))),sha2('githubuserid',512)));
