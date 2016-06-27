# boinc Cookbook

This cookbook makes your machine contribute to Einstein@Home.

## Requirements

The recipe uses "apt-get" to install the regular BOINC package. Any Debian-derivative distribution, like Ubuntu, would support that. Particular attention needs to be taken for the support of GPU systems. The regular distribution may not ship all kernel module dependencies, e.g. drm, for the nvidia driver. For GPU-support, extra efforts are hence required.

### Platforms

- Debian or Ubuntu
- Einstein@Home account

### Chef

- Chef 12.0 or later

## Attributes

There are two attributes to consider - one for the project to contribute to and the other for the authorisation code.

### boinc::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['boinc']['auth']</tt></td>
    <td>String</td>
    <td>Strong or weak authorisation code for Einstein@Home</td>
    <td><tt>11376_ed6638d7db21cc162e96f75c4e54dd7b</tt></td>
  </tr>
  <tr>
    <td><tt>['boinc']['project']</tt></td>
    <td>String</td>
    <td>URL of project to contribute to</td>
    <td><tt>https://einstein.phys.uwm.edu</tt></td>
  </tr>
</table>

## Usage

### boinc::default

TODO: Write usage instructions for each cookbook.

e.g.
Just include `boinc` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[boinc]"
  ]
}
```

## Contributing

This cookbook lives on http://github.com/smoe/chefcookbook. Please feel free to send patches.

## License and Authors

Authors: Steffen Moeller <moeller@debian.org>

License: Affero GPL
