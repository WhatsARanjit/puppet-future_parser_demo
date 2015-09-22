class case::release (
  $myvar = $::operatingsystemrelease,
) {

  case $myvar {
    '6.60': {
      notice('I matched 6.60.')
    }
    '6.6': {
      notice('I matched 6.6.')
    }
  }

}
