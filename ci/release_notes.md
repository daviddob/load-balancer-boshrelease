# Improvements

- This BOSH release now ships with an optional `keepalived` job,
  for running VRRP virtual router groups in environments where you
  may not have easy access to a configurable single-endpoint IPv4
  system.

- The hatop utility now works on Xenial stemcells, and works
  without mucking about with $PATH and the socket file path.

# Software Updates

- Updated haproxy from 1.8.14 to [1.9.5][1].

- Updated PCRE2 from 10.31 to 10.32.

[1]: http://www.haproxy.org/download/1.9/src/CHANGELOG
