-- preparatory stuff
db.schema.user.grant('guest', 'replication')
_ = db.schema.space.create('test')
_ = db.space.test:create_index('pk')
--
-- reopen xlog
--
--# stop server default
--# start server default
db.space.test ~= nil
-- insert some stuff
-- 
db.space.test:auto_increment{'before snapshot'}
--
-- this snapshot will go to the replica
--
db.snapshot()
-- 
-- create a replica, let it catch up somewhat
--
--# create server replica with rpl_master=default, script='xlog/replica.lua'
--# start server replica
--# set connection replica
db.space.test:select{}
-- 
-- stop replica, restart the master, insert more stuff
-- which will make it into an xlog only
--
--# stop server replica
-- 
--# set connection default
db.space.test:auto_increment{'after snapshot'}
db.space.test:auto_increment{'after snapshot - one more row'}
--
-- save snapshot and remove xlogs
-- 
db.snapshot()
fio = require('fio')
glob = fio.pathjoin(db.cfg.wal_dir, '*.xlog')
files = fio.glob(glob)
for _, file in pairs(files) do fio.unlink(file) end
--# stop server default
--# start server default
--
-- make sure the server has some xlogs, otherwise the
-- replica doesn't discover the gap in the logs
--
db.space.test:auto_increment{'after snapshot and restart'}
db.space.test:auto_increment{'after snapshot and restart - one more row'}
--  
--  check that panic is true
--
db.cfg{panic_on_wal_error=true}
db.cfg.panic_on_wal_error
-- 
-- try to start the replica, ha-ha
-- (replication should fail, some rows are missing)
--
--# start server replica
--# set connection replica
fiber = require('fiber')
while db.info.replication.status ~= "stopped" do fiber.sleep(0.001) end
db.info.replication.status
db.info.replication.message
db.space.test:select{}
--
--
--# set connection default 
--# stop server replica
--
-- cleanup
db.space.test:drop()
db.schema.user.revoke('guest', 'replication')
