# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registro.br/br/status_registered_limited.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.registro.br", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.registro.br/br/status_registered_limited.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.registro.br")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered_limited.expected" do
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
