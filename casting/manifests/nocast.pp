class casting::nocast (
  $some_string  = 'hello world',
  $some_array   = [ 'hello', 'world' ],
  $some_boolean = false,
) {

  # Validation
  validate_string($some_string)
  validate_array($some_array)
  validate_bool($some_boolean)

}
