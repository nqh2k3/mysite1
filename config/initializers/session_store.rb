Rails.application.config.session_store :redis_store,
  servers: ENV["REDIS_URL"],
  expire_after: 90.minutes,
  key: "_your_app_session",
  secure: Rails.env.production?
