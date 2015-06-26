
class TheSwissBanker
 
  TO_EURO = {
    usd: 0.89,
    gbp: 1.4,
    cad: 0.73,
    aud: 0.69
  }

  FROM_EURO = {
    usd: 1.12,
    gbp: 0.71,
    cad: 1.39,
    aud: 1.45
  }

  def self.convert(amount, from_currency, to_currency)
    result = (amount * TO_EURO[from_currency]) * FROM_EURO[to_currency]
  end
end

#money = TheSwissBanker.new
#TheSwissBanker.convert(1000, :usd, :gbp)
#TheSwissBanker.convert(5000, :usd, :cad)


describe TheSwissBanker do
  before do
    @money = TheSwissBanker.new
  end

 describe :convert_from_usd_to_gbp do
    it "should return 631.9 GBP for 1000 USD" do
      expect(TheSwissBanker.convert(1000, :usd, :gbp)).to eq(631.9)
    end
  end

describe :convert_from_usd_to_cad do
    it "should return 6185.5 CAD for 5000 USD" do
      expect(TheSwissBanker.convert(5000, :usd, :cad)).to eq(6185.5)
    end
  end

describe :convert_from_usd_to_aud do
    it "should return 1290.5 AUD for 1000 USD" do
      expect(TheSwissBanker.convert(1000, :usd, :aud)).to eq(1290.5)
    end
  end

describe :convert_from_gbp_to_usd do
    it "should return 1568.0000000000002 USD for 1000 GBP" do
      expect(TheSwissBanker.convert(1000, :gbp, :usd)).to eq(1568.0000000000002)
    end
  end

describe :convert_from_gbp_to_cad do
    it "should return 1945.9999999999998 USD for 1000 GBP" do
      expect(TheSwissBanker.convert(1000, :gbp, :cad)).to eq(1945.9999999999998)
    end
  end

describe :convert_from_gbp_to_aud do
  it "should return 2030 AUD for 1000 GBP" do
     expect(TheSwissBanker.convert(1000, :gbp, :aud)).to eq(2030)
   end
end

describe :convert_from_cad_to_aud do
  it "should return 1058.5 AUD for 1000 CAD" do
     expect(TheSwissBanker.convert(1000, :cad, :aud)).to eq(1058.5)
   end
end
end
