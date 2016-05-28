require 'haml_svg_pdf/version'
require 'haml'
require 'rsvg2'
require 'cairo'

module HamlSvgPdf
  def self.dpi=(value)
    @dpi = value
  end

  def self.dpi
    @dpi ||= 72
  end

  def self.haml_svg_pdf(haml, sink)
    source = Haml::Engine.new(haml).to_html
    svg = RSVG::Handle.new_from_data(source)
    svg.dpi = self.dpi
    dim = svg.dimensions
    surface = Cairo::PDFSurface.new('sample.pdf', dim.width, dim.height)
    cairo = Cairo::Context.new(surface)
    cairo.render_rsvg_handle(svg)
  end
end
