# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.inregistry.net/in/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.inregistry.net", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.inregistry.net/in/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.inregistry.net")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("Access to .IN WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the .IN registry database. The data in this record is provided by .IN Registry for informational purposes only ,and .IN does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator or a Registrar, or Neustar except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. .IN reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy.")
    expect(subject.domain).to eq("google.in")
    expect(subject.domain_id).to eq("D21089-IN")
    expect(subject.status).to eq(["clientTransferProhibited http://www.icann.org/epp#clientTransferProhibited", "clientDeleteProhibited http://www.icann.org/epp#clientDeleteProhibited", "clientUpdateProhibited http://www.icann.org/epp#clientUpdateProhibited"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to eq(DateTime.parse("2005-02-14 20:35:14 UTC"))
    expect(subject.updated_on).to eq(DateTime.parse("2021-01-18 10:38:43 UTC"))
    expect(subject.expires_on).to eq(DateTime.parse("2022-02-14 20:35:14 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("292")
    expect(subject.registrar.name).to eq("MarkMonitor Inc.")
    expect(subject.registrar.url).to eq("http://www.markmonitor.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].organization).to eq("Google LLC")
    expect(subject.registrant_contacts[0].address).to eq("REDACTED FOR PRIVACY\nREDACTED FOR PRIVACY\nREDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].fax).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].email).to eq("Please contact the Registrar listed above")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].address).to eq("REDACTED FOR PRIVACY\nREDACTED FOR PRIVACY\nREDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].phone).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].fax).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].email).to eq("Please contact the Registrar listed above")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].address).to eq("REDACTED FOR PRIVACY\nREDACTED FOR PRIVACY\nREDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].phone).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].fax).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].email).to eq("Please contact the Registrar listed above")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns4.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns1.google.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns3.google.com")
  end
end
