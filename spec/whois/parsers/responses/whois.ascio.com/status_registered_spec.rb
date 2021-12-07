# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ascio.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.ascio.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.ascio.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.ascio.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("ascio.com")
    expect(subject.domain_id).to eq("")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2005-03-01 14:11:50 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-06-02 00:23:21 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-05-31 00:00:00 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("106")
    expect(subject.registrar.name).to eq("Ascio Technologies, Inc")
    expect(subject.registrar.url).to eq("http://www.ascio.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].name).to eq("Hostmaster Ascio")
    expect(subject.registrant_contacts[0].organization).to eq("ASCIO Technologies Inc.")
    expect(subject.registrant_contacts[0].address).to eq("Islands Brygge 55")
    expect(subject.registrant_contacts[0].city).to eq("Copenhagen")
    expect(subject.registrant_contacts[0].zip).to eq("2300")
    expect(subject.registrant_contacts[0].state).to eq("S")
    expect(subject.registrant_contacts[0].country_code).to eq("DK")
    expect(subject.registrant_contacts[0].phone).to eq("")
    expect(subject.registrant_contacts[0].fax).to eq("")
    expect(subject.registrant_contacts[0].email).to eq("")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].name).to eq("Technical Hostmaster")
    expect(subject.admin_contacts[0].organization).to eq("Speednames")
    expect(subject.admin_contacts[0].address).to eq("Rejsbygade 8a")
    expect(subject.admin_contacts[0].city).to eq("Copenhagen")
    expect(subject.admin_contacts[0].zip).to eq("1759")
    expect(subject.admin_contacts[0].state).to eq("DK")
    expect(subject.admin_contacts[0].country_code).to eq("DK")
    expect(subject.admin_contacts[0].phone).to eq("+45.33886300")
    expect(subject.admin_contacts[0].fax).to eq("+45.33886301")
    expect(subject.admin_contacts[0].email).to eq("hostmaster@speednames.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].name).to eq("Netnames Hostmaster")
    expect(subject.technical_contacts[0].organization).to eq("Group NBT")
    expect(subject.technical_contacts[0].address).to eq("3rd Floor Prospero House, 241 Borough High St.")
    expect(subject.technical_contacts[0].city).to eq("London")
    expect(subject.technical_contacts[0].zip).to eq("SE1 1GA")
    expect(subject.technical_contacts[0].state).to eq("")
    expect(subject.technical_contacts[0].country_code).to eq("GB")
    expect(subject.technical_contacts[0].phone).to eq("+44.2070159370")
    expect(subject.technical_contacts[0].fax).to eq("+44.2070159375")
    expect(subject.technical_contacts[0].email).to eq("hostmaster@netnames.net")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.ascio.net")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.ascio.net")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.ascio.net")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.ascio.net")
  end
end
