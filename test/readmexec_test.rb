require 'minitest/autorun'

describe "Readmexec" do
  it "executes commands from the README" do
    system "rm -rf readmexec"

    `./bin/readmexec`.must_equal <<-end.gsub(/^\ {6}/, '')
      gem install readmexec
      mkdir -p readmexec
      curl https://raw.githubusercontent.com/wojtekmach/readmexec/master/README.md > readmexec/README.md
      cd readmexec
      readmexec
    end
  end
end
