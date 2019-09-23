global_defs {
  lvs_id <%= spec.name %>
}

vrrp_script health_check{
  script   "<%= p('check') %>"
  interval 2
  weight   2
}

vrrp_instance <%= "#{spec.name}_health_check" %> {
  <% if spec.bootstrap %>
  state MASTER
  priority 101

  <% else %>
  state SLAVE
  priority 100

  <% end -%>

  <% if p('ignore-interface-faults') %>
  dont_track_primary
  <% end -%>

  interface <%= p('interface') %>
  virtual_router_id <%= p('id') %>

  virtual_ipaddress {
    <%= p('vip') %>
  }

  track_script {
    health_check
  }
}
