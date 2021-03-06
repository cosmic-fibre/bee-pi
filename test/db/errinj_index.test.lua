errinj = db.error.injection

-- Check a failed realloc in tree index.

s = db.schema.space.create('tweedledum')
index = s:create_index('primary', {type = 'tree'} )

for i = 1,10 do s:insert{i, i, 'test' .. i} end
res = {}
for i = 1,10 do table.insert(res, s:get{i}) end
res
res = {}
for _, t in s.index[0]:pairs() do table.insert(res, t) end
res

errinj.set("ERRINJ_INDEX_ALLOC", true)

res = {}
for i = 1,10 do table.insert(res, s:get{i}) end
res
res = {}
for _, t in s.index[0]:pairs() do table.insert(res, t) end
res

for i = 501,2500 do s:insert{i, i} end
s:delete{1}

res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 501,510 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 2001,2010 do table.insert(res, (s:get{i})) end
res

--count must be greater that 1000 but less than 2000
function check_iter_and_size() local count = 0 for _, t in s.index[0]:pairs() do count = count + 1 end return count <= 1000 and "fail 1" or count >= 2000 and "fail 2" or "ok" end
check_iter_and_size()

for i = 2501,3500 do s:insert{i, i} end
s:delete{2}
check_iter_and_size()
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res

for i = 3501,4500 do s:insert{i, i} end
s:delete{3}
check_iter_and_size()

errinj.set("ERRINJ_INDEX_ALLOC", false)

for i = 4501,5500 do s:insert{i, i} end
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
s:delete{8}
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 5001,5010 do table.insert(res, (s:get{i})) end
res
s:drop()

-----------------------------------

-- Check a failed realloc in hash index.

s = db.schema.space.create('tweedledum')
index = s:create_index('primary', {type = 'hash'} )

for i = 1,10 do s:insert{i, i, 'test' .. i} end
res = {}
for i = 1,10 do table.insert(res, s:get{i}) end
res
res = {}
for _, t in s.index[0]:pairs() do table.insert(res, t) end
res

errinj.set("ERRINJ_INDEX_ALLOC", true)

res = {}
for i = 1,10 do table.insert(res, s:get{i}) end
res
res = {}
for _, t in s.index[0]:pairs() do table.insert(res, t) end
res

for i = 501,2500 do s:insert{i, i} end
s:delete{1}

res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 501,510 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 2001,2010 do table.insert(res, (s:get{i})) end
res

--since every insertion is rejected, count must be (10 - number of deletions)
function check_iter_and_size(size_must_be) local count = 0 for _, t in s.index[0]:pairs() do count = count + 1 end print (count) return count ~= size_must_be and "fail 1" or "ok" end
check_iter_and_size(9)

for i = 2501,3500 do s:insert{i, i} end
s:delete{2}
check_iter_and_size(8)
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res

for i = 3501,4500 do s:insert{i, i} end
s:delete{3}
check_iter_and_size(7)

errinj.set("ERRINJ_INDEX_ALLOC", false)

for i = 4501,5500 do s:insert{i, i} end
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
s:delete{8}
res = {}
for i = 1,10 do table.insert(res, (s:get{i})) end
res
res = {}
for i = 5001,5010 do table.insert(res, (s:get{i})) end
res
s:drop()

errinj = nil
