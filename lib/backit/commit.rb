module Backit
  class Commit
    def self.start(worktree)
      git = Git.get_command(worktree)

      `#{git} add .`
      `#{git} commit -m "backup of #{Time.now.strftime("%F %H:%M")}"`
      puts "Committed files..."

      `#{git} push origin master`
      puts "Successfully pushed backup"
    end
  end
end
