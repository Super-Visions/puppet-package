define package::install ( $params = {} ) 
{
  $package = { "${name}" => $params }
  create_resources( package, $package )
}
