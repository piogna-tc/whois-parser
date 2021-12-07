# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.schlund.info/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.schlund.info", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.schlund.info/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.schlund.info")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("schlund.com")
    expect(subject.domain_id).to eq(nil)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("1996-10-10 00:00:00"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-10-09 00:00:00"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-10-09 00:00:00"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("83")
    expect(subject.registrar.name).to eq("1&1 Internet AG")
    expect(subject.registrar.url).to eq("http://1and1.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("Markus Huhn")
    expect(subject.registrant_contacts[0].organization).to eq("1&1 Internet AG")
    expect(subject.registrant_contacts[0].address).to eq("Elgendorfer Str. 57")
    expect(subject.registrant_contacts[0].city).to eq("Montabaur")
    expect(subject.registrant_contacts[0].zip).to eq("56410")
    expect(subject.registrant_contacts[0].state).to eq("")
    expect(subject.registrant_contacts[0].country_code).to eq("DE")
    expect(subject.registrant_contacts[0].phone).to eq("+49.2602960")
    expect(subject.registrant_contacts[0].fax).to eq("+49.72191374215")
    expect(subject.registrant_contacts[0].email).to eq("hostmaster@1und1.de")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq(nil)
    expect(subject.admin_contacts[0].name).to eq("Markus Huhn")
    expect(subject.admin_contacts[0].organization).to eq("1&1 Internet AG")
    expect(subject.admin_contacts[0].address).to eq("Elgendorfer Str. 57")
    expect(subject.admin_contacts[0].city).to eq("Montabaur")
    expect(subject.admin_contacts[0].zip).to eq("56410")
    expect(subject.admin_contacts[0].state).to eq("")
    expect(subject.admin_contacts[0].country_code).to eq("DE")
    expect(subject.admin_contacts[0].phone).to eq("+49.2602960")
    expect(subject.admin_contacts[0].fax).to eq("+49.72191374215")
    expect(subject.admin_contacts[0].email).to eq("hostmaster@1und1.de")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("Hostmaster EINSUNDEINS")
    expect(subject.technical_contacts[0].organization).to eq("1&1 Internet AG")
    expect(subject.technical_contacts[0].address).to eq("Brauerstr. 48")
    expect(subject.technical_contacts[0].city).to eq("Karlsruhe")
    expect(subject.technical_contacts[0].zip).to eq("76135")
    expect(subject.technical_contacts[0].state).to eq("")
    expect(subject.technical_contacts[0].country_code).to eq("DE")
    expect(subject.technical_contacts[0].phone).to eq("+49.7219600")
    expect(subject.technical_contacts[0].fax).to eq("+49.72191374248")
    expect(subject.technical_contacts[0].email).to eq("hostmaster@1und1.de")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns-1and1.ui-dns.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns-1and1.ui-dns.org")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns-1and1.ui-dns.de")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns-1and1.ui-dns.biz")
  end
end
