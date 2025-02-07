#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base'


module Whois
  class Parsers

    # Parser for the whois.cat server.
    #
    # @note This parser is just a stub and provides only a few basic methods
    #   to check for domain availability and get domain status.
    #   Please consider to contribute implementing missing methods.
    #
    # @see Whois::Parsers::Example
    #   The Example parser for the list of all available methods.
    #
    class WhoisCat < Base

      property_supported :status do
        if content_for_scanner =~ /Status:\s+(.+?)\n/
          Array($1.split(", "))
        end
      end

      property_supported :available? do
        !!(content_for_scanner =~ /Object (.*?) NOT FOUND/)
      end

      property_supported :registered? do
        !available?
      end


      property_supported :created_on do
        if content_for_scanner =~ /Created On:\s+(.*)\n/
          parse_time($1)
        end
      end

      property_supported :updated_on do
        if content_for_scanner =~ /Last Updated On:\s+(.*)\n/
          parse_time($1)
        end
      end

      property_supported :expires_on do
        if content_for_scanner =~ /Expiration Date:\s+(.*)\n/
          parse_time($1)
        end
      end

      # Nameservers are listed in the following formats:
      #
      #   Name Server: dns2.gencat.cat 83.247.132.4
      #   Name Server: dns.gencat.net
      #
      property_supported :nameservers do
        content_for_scanner.scan(/Name Server:\s+(.+)\n/).flatten.map do |line|
          name, ipv4 = line.split(/\s+/)
          Parser::Nameserver.new(:name => name, :ipv4 => ipv4)
        end
      end

    end

  end
end
