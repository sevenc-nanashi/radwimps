require "rspec"
require "radwimps"

RSpec.describe do
  context "normal mode" do
    let(:radwimps) { RADWIMPS.new }

    it "says 前前前世" do
      expect { radwimps.then.then.then.set }.to output("前前前世\n").to_stdout
    end
    it "says 前前前世 with alias" do
      expect { radwimps.前.前.前.世 }.to output("前前前世\n").to_stdout
    end
    it "says 来来来世" do
      expect { radwimps.raise.raise.raise.set }.to output("来来来世\n").to_stdout
    end
    it "says 来来来世 with alias" do
      expect { radwimps.来.来.来.世 }.to output("来来来世\n").to_stdout
    end
    it "says 現世" do
      expect { radwimps.set }.to output("現世\n").to_stdout
    end
  end
  context "strict mode" do
    let(:radwimps) { RADWIMPS.new(strict: true) }

    it "raises error when went too far" do
      expect { radwimps.then.then.then.then.set }.to raise_error(RADWIMPS::Error)
    end
    it "raises error when not enough times to go previous" do
      expect { radwimps.raise.raise.raise.set }.to raise_error(RADWIMPS::Error)
    end
    it "raises error when not gone anywhere" do
      expect { radwimps.set }.to raise_error(RADWIMPS::Error)
    end
    it "is ok when went previous" do
      expect { radwimps.then.then.then.set }.to output("前前前世\n").to_stdout
    end
  end
end
