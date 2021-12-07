# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sx/sx/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.sx", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.sx/sx/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.sx")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("WHOIS LEGAL STATEMENT AND TERMS & CONDITIONS\nThe WHOIS service offered by OpenRegistry and the access to the\nrecords in the OpenRegistry WHOIS database are provided for information\npurposes only. It allows persons to check whether a specific domain name\nis still available or not and to obtain information related to the\nregistration records of existing domain names. You are not authorized to\naccess or query our WHOIS  database through the use of electronic\nprocesses that are high-volume and  automated except as reasonably\nnecessary to register domain names or modify existing registrations.\n\nOpenRegistry cannot, under any circumstances, be held liable should the\nstored information prove to be wrong, incomplete or inaccurate in any sense.\n\nBy submitting a WHOIS query you agree not to use the information made\navailable to:\n- Allow, enable or otherwise support the transmission of unsolicited,\ncommercial advertising or other solicitations whether via email, telephone\nor otherwise;\n- Target advertising in any possible way;\n- Cause nuisance in any possible way to the registrants by sending (whether\nby automated, electronic processes capable of enabling high volumes or\nother possible means) messages to them.\n\nWithout prejudice to the above, it is explicitly forbidden to extract, copy\nand/or use or re-utilise in any form and  by any means (electronically or\nnot) the whole or a quantitatively or qualitatively substantial part of the\ncontents of the WHOIS database without prior and explicit permission by\nOpenRegistry, nor in any attempt hereof, to apply automated, electronic\nprocesses to OpenRegistry (or its systems).\n\nBy submitting the query you agree that any reproduction and/or transmission\nof data for commercial purposes will always be considered as the extraction\nof a substantial part of the content of the WHOIS database. You also agree\nto abide by this policy and accept that OpenRegistry can take measures to\nlimit the use of its WHOIS services in order to protect the privacy of its\nregistrants and/or the integrity of the database. OpenRegistry reserves the\nright  to restrict your access to the WHOIS database in its sole discretion\nto ensure operational stability.  OpenRegistry may restrict or terminate your\naccess to the WHOIS database for failure to abide by these terms of use.\n\nOpenRegistry reserves the right to modify these terms at any time.")
    expect(subject.domain).to eq("whois.sx")
    expect(subject.domain_id).to eq("d5-sx")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2011-12-09 14:07:22 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-02-25 16:50:39 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2022-12-09 14:07:22 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("SX Registry O")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("C65")
    expect(subject.registrant_contacts[0].name).to eq("SX Registry SA administrator")
    expect(subject.registrant_contacts[0].organization).to eq("SX Registry SA")
    expect(subject.registrant_contacts[0].address).to eq("2, rue Léon Laval")
    expect(subject.registrant_contacts[0].city).to eq("Leudelange")
    expect(subject.registrant_contacts[0].zip).to eq("L3372")
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq("LUXEMBOURG")
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq("registry@registry.sx")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("C65")
    expect(subject.admin_contacts[0].name).to eq("SX Registry SA administrator")
    expect(subject.admin_contacts[0].organization).to eq("SX Registry SA")
    expect(subject.admin_contacts[0].address).to eq("2, rue Léon Laval")
    expect(subject.admin_contacts[0].city).to eq("Leudelange")
    expect(subject.admin_contacts[0].zip).to eq("L3372")
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq("LUXEMBOURG")
    expect(subject.admin_contacts[0].country_code).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq(nil)
    expect(subject.admin_contacts[0].fax).to eq(nil)
    expect(subject.admin_contacts[0].email).to eq("registry@registry.sx")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("C65")
    expect(subject.technical_contacts[0].name).to eq("SX Registry SA administrator")
    expect(subject.technical_contacts[0].organization).to eq("SX Registry SA")
    expect(subject.technical_contacts[0].address).to eq("2, rue Léon Laval")
    expect(subject.technical_contacts[0].city).to eq("Leudelange")
    expect(subject.technical_contacts[0].zip).to eq("L3372")
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq("LUXEMBOURG")
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq(nil)
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq("registry@registry.sx")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(3)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("a.ns.sx")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("b.ns.sx")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("c.ns.sx")
    expect(subject.nameservers[2].ipv4).to eq(nil)
    expect(subject.nameservers[2].ipv6).to eq(nil)
  end
end
