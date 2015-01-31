# FactoryGirlBsGen [![Code Climate](https://codeclimate.com/github/fukuiretu/factory_girl_bs_gen/badges/gpa.svg)](https://codeclimate.com/github/fukuiretu/factory_girl_bs_gen) [![wercker status](https://app.wercker.com/status/dface65b15dd77718d9422920db079a0/s "wercker status")](https://app.wercker.com/project/bykey/dface65b15dd77718d9422920db079a0)
TODO: Gem


## Overview

FactoryGirlBsGen = factory_girl build syntax generater

The build syntax of factory_girl from a file is CLI tool to generate.
Currently I only supports CSV.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'factory_girl_bs_gen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install factory_girl_bs_gen



## Usage

```
$ factory_girl_bs_gen exec -t hoge -f data.csv -o factory_girl_bs_gen.out --format=build --omit_syntax=false
```

Input:
```csv:sample.csv
hoge,foo,bar
1,2,3
4,5,6
7,8,9
```

Output:
```
FactoryGirl.build(:hoge, hoge:1, foo:2, bar:3)
FactoryGirl.build(:hoge, hoge:4, foo:5, bar:6)
FactoryGirl.build(:hoge, hoge:7, foo:8, bar:9)
```



## CommandLine Option
<table>
  <thead>
      <td>Name</td>
      <td>Alias</td>
      <td>Type</td>
      <td>Required</td>
      <td>Setting</td>
      <td>Remarks</td>
  </thead>
  <tbody>
    <tr>
      <td>--table</td>
      <td>-t</td>
      <td>string</td>
      <td>true</td>
      <td>table name</td>
      <td>-</td>
    </tr>
    <tr>
      <td>--file</td>
      <td>-f</td>
      <td>string</td>
      <td>true</td>
      <td>input csv file</td>
      <td>-</td>
    </tr>
    <tr>
      <td>--format</td>
      <td>none</td>
      <td>string</td>
      <td>true</td>
      <td>create | build</td>
      <td>specifies the format of the output after</td>
    </tr>
    <tr>
      <td>--output</td>
      <td>-o</td>
      <td>string</td>
      <td>false</td>
      <td>output file name</td>
      <td>specify if you want to output the output results to a file. If not specified, the stdout.</td>
    </tr>
    <tr>
      <td>--omit_syntax</td>
      <td>none</td>
      <td>boolean</td>
      <td>false</td>
      <td>true | false</td>
      <td>enable an abbreviated notation. Ex: FactoryGirl.build -> build</td>
    </tr>
  </tbody>
</table>



## Contributing

1. Fork it ( https://github.com/[my-github-username]/factory_girl_bs_gen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
