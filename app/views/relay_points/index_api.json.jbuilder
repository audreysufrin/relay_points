json.array! @relay_points do |relay_point|
  json.name relay_point.name
  json.address relay_point.address
  json.hours relay_point.hours
  json.status relay_point.status
