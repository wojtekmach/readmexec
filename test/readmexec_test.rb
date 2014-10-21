require 'minitest/autorun'

describe "Readmexec" do
  it "executes commands from the README" do
    system "rm -rf readmexec"

    `./bin/readmexec`.must_equal <<-end.gsub(/^\ {6}/, '')
      mkdir -p readmexec && cp README.md readmexec/
      cd readmexec && readmexec
    end
  end
end
