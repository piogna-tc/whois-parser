# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.me/me/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.me", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.me/me/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.me")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("Access to WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the registry database. The data in this record is provided by The Registry Operator for informational purposes only, and accuracy is not guaranteed.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Registry Operator reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy. The Registrar of Record identified in this output may have an RDDS service that can be queried for additional information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.domain).to eq("google.me")
    expect(subject.domain_id).to eq("D108500000000011599-AGRS")
    expect(subject.status).to eq(["clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited", "clientTransferProhibited https://icann.org/epp#clientTransferProhibited", "clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited", "serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited", "serverTransferProhibited https://icann.org/epp#serverTransferProhibited", "serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2008-06-13 17:17:40 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2021-05-12 09:39:59 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2022-06-13 17:17:40 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("292")
    expect(subject.registrar.name).to eq("MarkMonitor Inc.")
    expect(subject.registrar.url).to eq("http://www.markmonitor.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq(nil)
    expect(subject.registrant_contacts[0].organization).to eq("Google LLC")
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(0)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(0)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns4.google.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns3.google.com")
  end
end
