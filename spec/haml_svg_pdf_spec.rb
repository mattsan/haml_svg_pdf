require 'spec_helper'

describe HamlSvgPdf do
  it 'has a version number' do
    expect(HamlSvgPdf::VERSION).not_to be nil
  end

  context 'dpi' do
    context 'default' do
      it { expect(HamlSvgPdf.dpi).to eq 72 }
    end

    context 'set 90' do
      before { HamlSvgPdf.dpi = 90 }
      it { expect(HamlSvgPdf.dpi).to eq 90 }
    end
  end
end
