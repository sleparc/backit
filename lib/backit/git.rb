module Backit
  class Git
    def self.get_command(worktree)
      "git --git-dir=#{worktree}/.git --work-tree=#{worktree}"
    end
  end
end
