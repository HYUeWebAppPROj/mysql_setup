insert into loginserviceprovider(provider)  (select a.provider from (select "github" as provider union select "test" as provider) as a where a.provider not in (select provider from loginserviceprovider));
#insert into userlist values('github','userid',concat(md5(concat('githubuserid',sha2('githubuserid',256))),sha2('githubuserid',512)));
