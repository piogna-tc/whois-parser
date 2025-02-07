# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/coza-whois.registry.net.za/co.za/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "coza-whois.registry.net.za", :aggregate_failures do

  subject do
    file = fixture("responses", "coza-whois.registry.net.za/co.za/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "coza-whois.registry.net.za")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("google.co.za")
    expect(subject.domain_id).to eq("dom_1SZMF--1")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2001-06-25 20:37:59 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2016-09-24 16:20:09 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2017-06-25 20:37:59 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("MarkMonitor")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].name).to eq("Google Inc.")
    expect(subject.registrant_contacts[0].organization).to eq("")
    expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.registrant_contacts[0].city).to eq("Mountain View")
    expect(subject.registrant_contacts[0].zip).to eq("94043")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.registrant_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.registrant_contacts[0].created_on).to eq(nil)
    expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].name).to eq("Google Inc.")
    expect(subject.admin_contacts[0].organization).to eq("")
    expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.admin_contacts[0].city).to eq("Mountain View")
    expect(subject.admin_contacts[0].zip).to eq("94043")
    expect(subject.admin_contacts[0].state).to eq("CA")
    expect(subject.admin_contacts[0].country_code).to eq("US")
    expect(subject.admin_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.admin_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.admin_contacts[0].created_on).to eq(nil)
    expect(subject.admin_contacts[0].updated_on).to eq(nil)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].name).to eq("Google Inc.")
    expect(subject.technical_contacts[0].organization).to eq("")
    expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.technical_contacts[0].city).to eq("Mountain View")
    expect(subject.technical_contacts[0].zip).to eq("94043")
    expect(subject.technical_contacts[0].state).to eq("CA")
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.technical_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.technical_contacts[0].created_on).to eq(nil)
    expect(subject.technical_contacts[0].updated_on).to eq(nil)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[2].ipv4).to eq(nil)
    expect(subject.nameservers[2].ipv6).to eq(nil)
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
    expect(subject.nameservers[3].ipv4).to eq(nil)
    expect(subject.nameservers[3].ipv6).to eq(nil)
  end
end
