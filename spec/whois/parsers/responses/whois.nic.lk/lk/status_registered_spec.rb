# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.lk/lk/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.lk", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.lk/lk/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.lk")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq("google.lk")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2003-04-01"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-03-09"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-04-01"))
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("Google Inc.")
    expect(subject.registrant_contacts[0].address).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[1].ipv4).to eq(nil)
  end
end
