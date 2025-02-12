# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.auda.org.au/au/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.auda.org.au", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.auda.org.au/au/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.auda.org.au")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("Afilias Australia Pty Ltd (Afilias), for itself and on behalf of .au Domain Administration Limited (auDA), makes the WHOIS registration data directory service (WHOIS Service) available solely for the purposes of:\n(a) querying the availability of a domain name licence;\n(b) identifying the holder of a domain name licence; and/or\n(c) contacting the holder of a domain name licence in relation to that domain name and its use.\nThe WHOIS Service must not be used for any other purpose (even if that purpose is lawful), including:\n(a) aggregating, collecting or compiling information from the WHOIS database, whether for personal or commercial purposes;\n(b) enabling the sending of unsolicited electronic communications; and / or\n(c) enabling high volume, automated, electronic processes that send queries or data to the systems of Afilias, any registrar, any domain name licence holder, or auDA.\nThe WHOIS Service is provided for information purposes only. By using the WHOIS Service, you agree to be bound by these terms and conditions. The WHOIS Service is operated in accordance with the auDA WHOIS Policy (available at https://www.auda.org.au/policies/index-of-published-policies/2014/2014-07/ ).")
    expect(subject.domain).to eq("GOOGLE.COM.AU")
    expect(subject.domain_id).to eq("D407400000001774763-AU")
    expect(subject.status).to eq(["clientDeleteProhibited https://afilias.com.au/get-au/whois-status-codes#clientDeleteProhibited", "clientUpdateProhibited https://afilias.com.au/get-au/whois-status-codes#clientUpdateProhibited", "serverDeleteProhibited https://afilias.com.au/get-au/whois-status-codes#serverDeleteProhibited", "serverRenewProhibited https://afilias.com.au/get-au/whois-status-codes#serverRenewProhibited", "serverTransferProhibited https://afilias.com.au/get-au/whois-status-codes#serverTransferProhibited", "serverUpdateProhibited https://afilias.com.au/get-au/whois-status-codes#serverUpdateProhibited"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2021-08-05 15:18:41 UTC"))
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.name).to eq("MarkMonitor Corporate Services Inc")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("MMR-174095")
    expect(subject.registrant_contacts[0].name).to eq("Domain Admin")
    expect(subject.registrant_contacts[0].organization).to eq("Google LLC")
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
    expect(subject.registrant_contacts[0].created_on).to eq(nil)
    expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("MMR-171195")
    expect(subject.technical_contacts[0].name).to eq("Domain Administrator")
    expect(subject.technical_contacts[0].organization).to eq(nil)
    expect(subject.technical_contacts[0].address).to eq(nil)
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq(nil)
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq(nil)
    expect(subject.technical_contacts[0].created_on).to eq(nil)
    expect(subject.technical_contacts[0].updated_on).to eq(nil)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("NS1.GOOGLE.COM")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("NS2.GOOGLE.COM")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("NS3.GOOGLE.COM")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("NS4.GOOGLE.COM")
  end
end
