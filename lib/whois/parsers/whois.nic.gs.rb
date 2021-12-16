#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base_cocca2'


module Whois
  class Parsers

    # Parser for the whois.nic.gs server.
    #
    # @see Whois::Parsers::Example
    #   The Example parser for the list of all available methods.
    #
    class WhoisNicGs < BaseCocca2

      property_supported :status do
        list = Array(node("Domain Status")).map(&:downcase)
        list.include?("available") ? :available : super()
      end

    end

  end
end
