# static-routes.rb
# Simple chef recipe to add static routes via attributes 
# Author: Benjamin Goodacre
# git@github.com:benvaljean/chef-static-routes.git
#
# Example:
#
#"static_routes": [
#      {
#        "dest": "5.1.1.0/24",
#        "gw": "1.1.1.1",
#        "device": "eth0"
#      },
#      {
#        "dest": "5.2.2.0/24",
#        "gw": "1.2.1.1",
#        "device": "eth0"
#      }
#    ]
#

if node.attribute? :static_routes
    for route in node['static_routes']
        route "#{route["dest"]}" do
            gateway "#{route["gw"]}"
            device "#{route["device"]}"
        end
    end
end
