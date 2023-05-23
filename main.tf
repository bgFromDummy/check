resource "local_file" "foo" {
  content  = "foo!"
  filename = "./foo.bar"
}

resource "local_sensitive_file" "foo1" {
  content  = "foo!"
  filename = "${path.module}/foo1.bar"
}
