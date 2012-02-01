module Backit
  class Setup
    def self.start
      puts "setting up the cronjob"
    end
  end

  class Commit
    def self.start
      `git add .`
      `git commit -m "backup of #{DateTime.now.to_s}"`
    end
  end
end
