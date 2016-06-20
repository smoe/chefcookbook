# boinc Cookbook

This cookbook makes your machine contribute to Einstein@Home.

## Requirements

TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

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

TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: Steffen Moeller <moeller@debian.org>

