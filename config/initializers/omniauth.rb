Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '691164481009376', '683519030dbcae7769af59e6e2223cc5'
end