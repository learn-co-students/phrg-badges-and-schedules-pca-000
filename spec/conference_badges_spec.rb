require "spec_helper"

describe "conference_badges" do
  def attendees
    ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
  end

  describe "#badge_maker" do
    it "should return a formatted badge" do
      expect(badge_maker("Arel")).to eq("Hello, my name is Arel.")
    end
  end

  describe "#batch_badge_creator" do
    def badges
      [
        "Hello, my name is Edsger.",
        "Hello, my name is Ada.",
        "Hello, my name is Charles.",
        "Hello, my name is Alan.",
        "Hello, my name is Grace.",
        "Hello, my name is Linus.",
        "Hello, my name is Matz."
      ]
    end

    it "should return a list of badge messages" do
      expect(batch_badge_creator(attendees)).to eq(badges)
    end

    it "should not hard-code response" do
      expect(batch_badge_creator(["Johnny"])).to eq(["Hello, my name is Johnny."])
    end
  end

  describe "#assign_rooms" do
    def room_assignments
      [
        "Hello, Edsger! You'll be assigned to room 1!",
        "Hello, Ada! You'll be assigned to room 2!",
        "Hello, Charles! You'll be assigned to room 3!",
        "Hello, Alan! You'll be assigned to room 4!",
        "Hello, Grace! You'll be assigned to room 5!",
        "Hello, Linus! You'll be assigned to room 6!",
        "Hello, Matz! You'll be assigned to room 7!"
      ]
    end

    it "should return a list of welcome messages and room assignments" do
      expect(assign_rooms(attendees)).to eq(room_assignments)
    end

    it "should not hard-code the response" do
      expect(assign_rooms(["Steve"])).to eq(["Hello, Steve! You'll be assigned to room 1!"])
    end
  end

  describe "#printer" do
    # For more info about heredocs, see this link:
    # http://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
    def badges_and_room_assignments
      <<~HEREDOC
        Hello, my name is Edsger.
        Hello, my name is Ada.
        Hello, my name is Charles.
        Hello, my name is Alan.
        Hello, my name is Grace.
        Hello, my name is Linus.
        Hello, my name is Matz.
        Hello, Edsger! You'll be assigned to room 1!
        Hello, Ada! You'll be assigned to room 2!
        Hello, Charles! You'll be assigned to room 3!
        Hello, Alan! You'll be assigned to room 4!
        Hello, Grace! You'll be assigned to room 5!
        Hello, Linus! You'll be assigned to room 6!
        Hello, Matz! You'll be assigned to room 7!
      HEREDOC
    end

    # To make this test pass, make sure you are iterating through your badges and
    # then your room assignments. Hint: Use methods you have already defined.
    it "should output the list of badges then after that, output the list of room_assignments" do
      badges_and_room_assignments.each_line do |line|
        expect($stdout).to receive(:puts).with(line.chomp)
      end

      printer(attendees)
    end
  end
end
