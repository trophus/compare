defmodule Compare do
  def distance(p1, p2) do
    lat1 = p1[:latitude]
    lon1 = p1[:longitude]
    lat2 = p2[:latitude]
    lon2 = p2[:longitude]
    radlat1 = :math.pi * lat1/180
    radlat2 = :math.pi * lat2/180
    radlon1 = :math.pi * lon1/180
    radlon2 = :math.pi * lon2/180
    theta = lon1-lon2
    radtheta = :math.pi * theta/180
    dist = :math.sin(radlat1)*:math.sin(radlat2) + :math.cos(radlat1)*:math.cos(radlat2)*:math.cos(radtheta)
    dist = :math.acos(dist)
    dist = dist* 180/:math.pi
    dist = dist*60*1.1515
    dist
  end
end

# Compare.distance(
#	%{"latitude" => user1.latitude, "longitude" => user1.longitude}, 
#	%{"latitude" => user2.latitude, "longitude" => user2.longitude}
# )
