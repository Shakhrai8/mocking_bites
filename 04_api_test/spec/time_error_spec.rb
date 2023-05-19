require 'time_error'


RSpec.describe TimeError do
  context "mocking test" do
    it "returns the difference bewtween remote clock and local clock" do
      fake_requester = double :requester
      allow(fake_requester).to receive(:get).with(
        URI("https://worldtimeapi.org/api/ip")
      ).and_return('{"abbreviation":"BST","client_ip":"95.144.45.208","datetime":"2023-05-19T10:34:08.260564+01:00","day_of_week":5,"day_of_year":139,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1684488848,"utc_datetime":"2023-05-19T09:34:08.260564+00:00","utc_offset":"+01:00","week_number":20} ')
      time = Time.new(2023, 5, 19, 10, 34, 8)
      time_error = TimeError.new(fake_requester)
      expect(time_error.error(time)).to eq 0.260564
    end
  end
end
