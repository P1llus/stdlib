import gleam/list
import gleam/os
import gleam/should

pub fn env_test() {
  os.put_env("GLEAM_TEST", "hello")
  os.get_env()
  |> list.key_find("GLEAM_TEST")
  |> should.equal(Ok("hello"))

  os.delete_env("GLEAM_TEST")
  os.get_env()
  |> list.key_find("GLEAM_TEST")
  |> should.equal(Error(Nil))
}