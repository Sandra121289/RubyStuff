# encoding: UTF-8
class Betraege < ActiveRecord::Base
  attr_accessible :betrag, :name, :vorname, :email

validates :name, :presence => {:message => "Der Name muss ausgefüllt werden."},  :length => { :maximum => 50, :message => "Der Name darf nicht länger als 50 Zeichen sein." }
validates :vorname, :presence => {:message => "Der Vorname muss ausgefüllt werden."},  :length => { :maximum => 50, :message => "Der Vorname darf nicht länger als 50 Zeichen sein." }
validates_format_of :email, :with =>  /\A([\w\.\-\+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,:message => "Die E-Mail-Adresse ist ungültig."
validates_format_of :vorname, :with => /[a-zA-Z\s]+/,:message => "Der Vorname darf nur aus Buchstaben bestehen."
validates_format_of :name, :with => /[a-zA-Z\s]+/,:message => "Der Name darf nur aus Buchstaben bestehen."
validates_format_of :betrag_before_type_cast, :with => /\A((\d{1,3}.\d{2})|\d{1,3})\z/,:message => "Der Betrag muss eine durch einen Punkt getrennte Dezimalzahl mit 2 Nachkommastellen sein."
validates_numericality_of :betrag_before_type_cast, :greater_than => 0, :less_than_or_equal_to => 165, :message => "Der Betrag muss zwischen 0 und 165 Euro liegen." 

end
