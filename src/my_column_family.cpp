#include <iostream>
#include <cstdio>
#include <string>
#include <rocksdb/db.h>
#include <rocksdb/slice.h>
#include <rocksdb/options.h>

using namespace rocksdb;

std::string kDBPath = "/tmp/rocksdb_simple_example";

int main(){
  DB* db;
  Options options;

  options.IncreaseParallelism();
  options.OptimizeLevelStyleCompaction();
  options.create_if_missing = true;

  Status s = DB::Open(options, kDBPath, &db);
  assert(s.ok());

  s = db->Put(WriteOptions(), "key", "value");
  assert(s.ok());
  s = db->Put(WriteOptions(), "head", "atam");
  assert(s.ok());
  s = db->Put(WriteOptions(), "hand", "te");
  assert(s.ok());
  s = db->Put(WriteOptions(), "leg", "asi");
  assert(s.ok());

  std::string value;
  s = db->Get(ReadOptions(), "head", &value);
  std::cout << "Answer is " << value << std::endl;

  delete db;
  return 0;
}
