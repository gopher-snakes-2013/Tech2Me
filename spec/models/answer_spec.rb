require 'spec_helper'

describe Answer do

    it { should validate_presence_of :author }
    it { should validate_presence_of :answer }

    it { should belong_to :question }

end