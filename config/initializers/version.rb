Rails.application.config.app_version = '0.01'
#Rails.application.config.build_revision = `svn info | grep "Revision:"`.split(':').last.strip || 'none'
Rails.application.config.build_revision = `git rev-parse HEAD`.split(':').last.strip || 'none'
