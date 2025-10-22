source "https://rubygems.org"

# Rails ana çatısı
gem "rails", "~> 8.0.1"

# ✅ SQLite3 - doğru platformla, derlenebilir sürüm
gem "sqlite3", "~> 2.7"

# Web sunucusu (default olarak Puma)
gem "puma", ">= 5.0"

# JSON API yapıları için (isteğe bağlı)
# gem "jbuilder"

# Parola desteği için (isteğe bağlı)
# gem "bcrypt", "~> 3.1.7"

# Windows ortamında timezone desteği
gem "tzinfo-data"

# Rails cache / Active Job / Action Cable için back-end adaptörleri
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Boot süresini hızlandırmak için
gem "bootsnap", require: false

# Docker deploy desteği
gem "kamal", require: false

# HTTP performans optimizasyonları (opsiyonel)
gem "thruster", require: false

# Görsel işleme (isteğe bağlı)
# gem "image_processing", "~> 1.2"

# CORS yönetimi (frontend-backend bağlantısı için ileride eklenebilir)
# gem "rack-cors"

group :development, :test do
  # Debugging araçları
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Güvenlik analizi
  gem "brakeman", require: false

  # Kod stili kontrolü
  gem "rubocop-rails-omakase", require: false
end
