module Backit
  class Commit
    def self.start
      # `git add .`
      # `git commit -m "backup of #{DateTime.now.to_s}"`
      puts "commit"
    end
  end
end
