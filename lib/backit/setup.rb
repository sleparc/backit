module Backit
  class Setup
    def self.git_init(worktree)
      git = Git.get_command(worktree)

      puts "Initializing your repository..."
      `git init #{worktree}`

      puts "Tracking files and committing"
      `#{git} add .`
      `#{git} commit -m 'initial backup commit -- #{Time.now.to_s}'`

      puts "Setting up the remote connection..."
      `#{git} remote add origin git@github.com:sleparc/test_dir.git`

      puts "Pushing to master branch..."
      `#{git} push origin master`

      puts "Done!"
    end

    def new_crontab

    end
  end
end
