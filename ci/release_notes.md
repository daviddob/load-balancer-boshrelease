# Improvements

- This BOSH release now ships with an oprtional `keepalived` job,
  for running VRRP virtual router groups in environments where you
  may not have easy access to a configurable single-endpoint IPv4
  system.

# Software Updates

- Updated haproxy from 1.8.14 to [1.9.5][1].

- Updated PCRE2 from 10.31 to 10.32.

[1]: http://www.haproxy.org/download/1.9/src/CHANGELOG
