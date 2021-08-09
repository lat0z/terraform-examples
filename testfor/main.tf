variable "words" {
  type    = list
  default = ["army", "panther", "walnuts", "sandwich", "Zeus", "banana", "cat","dog","bug"]
}
 
locals{
# wor = { for k,v in var.words: k => upper(v) }
  wor = [ for k,v in var.words:  upper(v) ]
}

output "varshow" {
  value = local.wor
}
