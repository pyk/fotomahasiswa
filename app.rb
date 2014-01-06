require "rubygems"
require "bundler/setup"

require "sinatra"

FAKULTAS = {
    "01" => "Fakultas Kedokteran",
    "02" => "Fakultas Kedokteran Gigi",
    "03" => "Fakultas Hukum",
    "04" => "Fakultas Ekonomi Dan Bisnis",
    "05" => "Fakultas Farmasi",
    "06" => "Fakultas Kedokteran Hewan",
    "07" => "Fakultas Ilmu Sosial dan Ilmu Politik",
    "08" => "Fakultas Sains Dan Teknologi",
    "10" => "Fakultas Kesehatan Masyarakat",
    "11" => "Fakultas Psikologi",
    "12" => "Fakultas Ilmu Budaya",
    "13" => "Fakultas Keperawatan",
    "14" => "Fakultas Perikanan dan Kelautan"
  }

get "/" do
  erb :index
end

get "/081311233038" do
  erb :bayu
end

get "/:nim" do |nim|
  @nim = nim
  kode_fakultas = nim.to_s[0,2]
  @nama_fakultas = FAKULTAS[kode_fakultas]
  @angkatan = nim.to_s[2,2]
  erb :fotomahasiswa
end