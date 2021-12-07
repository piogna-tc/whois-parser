# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cdmon.com/com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.cdmon.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.cdmon.com/com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.cdmon.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2001-08-12T15:02:57Z"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2009-12-16T11:40:44Z"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2024-08-12T15:02:53Z"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("1403")
    expect(subject.registrar.name).to eq("10DENCEHISPAHARD, S.L")
    expect(subject.registrar.url).to eq("https://www.cdmon.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("10dencehispahard,s.l.")
    expect(subject.registrant_contacts[0].organization).to eq("10dencehispahard,s.l.")
    expect(subject.registrant_contacts[0].address).to eq("Girona 81-83 local 6")
    expect(subject.registrant_contacts[0].city).to eq("Malgrat de Mar")
    expect(subject.registrant_contacts[0].zip).to eq("08380")
    expect(subject.registrant_contacts[0].state).to eq("")
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("ES")
    expect(subject.registrant_contacts[0].phone).to eq("+34.902364138")
    expect(subject.registrant_contacts[0].email).to eq("info@cdmon.com")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq(nil)
    expect(subject.admin_contacts[0].name).to eq("10dencehispahard,s.l.")
    expect(subject.admin_contacts[0].organization).to eq("10dencehispahard,s.l.")
    expect(subject.admin_contacts[0].address).to eq("Girona 81-83 local 6")
    expect(subject.admin_contacts[0].city).to eq("Malgrat de Mar")
    expect(subject.admin_contacts[0].zip).to eq("08380")
    expect(subject.admin_contacts[0].state).to eq("")
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq("ES")
    expect(subject.admin_contacts[0].phone).to eq("+34.902364138")
    expect(subject.admin_contacts[0].email).to eq("info@cdmon.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("10dencehispahard,s.l.")
    expect(subject.technical_contacts[0].organization).to eq("10dencehispahard,s.l.")
    expect(subject.technical_contacts[0].address).to eq("Girona 81-83 local 6")
    expect(subject.technical_contacts[0].city).to eq("Malgrat de Mar")
    expect(subject.technical_contacts[0].zip).to eq("08380")
    expect(subject.technical_contacts[0].state).to eq("")
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("ES")
    expect(subject.technical_contacts[0].phone).to eq("+34.902364138")
    expect(subject.technical_contacts[0].email).to eq("info@cdmon.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(3)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns2.cdmon.es")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns3.cdmon.es")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns1.cdmon.es")
    expect(subject.nameservers[2].ipv4).to eq(nil)
    expect(subject.nameservers[2].ipv6).to eq(nil)
  end
end
