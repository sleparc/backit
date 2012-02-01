module Backit
  class Setup
    def self.start
      `cd ~/test_dir/`
      puts "Initializing your repository..."
      `git init`
      `git add .`
      `git commit -m 'setup test'`
      puts "Setting up the remote connection..."
      `git remote add origin git@github.com:sleparc/test_dir.git`
      puts "Pushing to master branch..."
      `git push origin master`
      puts "Done!"
    end
  end
end
