if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'], # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAJV4FILVLQ3HC54KA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['shirait']
  end
end