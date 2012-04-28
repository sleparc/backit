module Backit
  class Commit
    # TO DO LIST
    #   - commit should be done when there is something to commit
    #   - should rename 'start' method


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
