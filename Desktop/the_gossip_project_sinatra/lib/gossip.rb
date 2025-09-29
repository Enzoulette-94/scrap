require 'bundler'
Bundler.require
require "csv"

class Gossip
    attr_reader :auteur, :contenu
    def initialize (auteur, contenu)
        @auteur = auteur
        @contenu = contenu
    end
    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << [@auteur, @contenu]
        end
    end
    def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
    all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
    end

    def self.find(id)
        all[id]
    end
end

