# Be sure to restart your server when you modify this file.

Date::DATE_FORMATS.merge!( :default => '%m/%d/%Y')
Date::DATE_FORMATS.merge!( :default => '%d/%m/%Y')
Date::DATE_FORMATS.merge!( :db => '%Y-%m-%d')
