# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.bnnic.bn/bn/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.bnnic.bn", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.bnnic.bn/bn/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.bnnic.bn")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2014-10-07 00:00:00"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2014-12-17 18:07:42"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2015-10-07 00:00:00"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("dns.brunet.bn")
    expect(subject.nameservers[0].ipv4).to eq("61.6.254.147")
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("dns2.brunet.bn")
    expect(subject.nameservers[1].ipv4).to eq("61.6.254.148")
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("dns3.brunet.bn")
    expect(subject.nameservers[2].ipv4).to eq("61.6.254.166")
    expect(subject.nameservers[2].ipv6).to eq(nil)
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("dns4.brunet.bn")
    expect(subject.nameservers[3].ipv4).to eq("61.6.254.168")
    expect(subject.nameservers[3].ipv6).to eq(nil)
  end
end
