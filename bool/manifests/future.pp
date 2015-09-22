class bool::future (
  String $some_parameter = undef,
) {

  if $some_parameter {
    notice('This is true.')
  }
  else {
    notice('This is false.')
  }

}
