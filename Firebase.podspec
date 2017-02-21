Pod::Spec.new do |spec|
  spec.name         = 'Firebase'
  spec.version      = '3.8.0'
  spec.license      = { :type => 'Copyright', :text => 'Copyright 2016 Google'}
  spec.summary      = 'Firebase for iOS'
  spec.description	= 'Simplify your iOS development, grow your user base, and monetize more effectively with Firebase.'
  spec.homepage     = 'https://firebase.google.com'
  spec.author       = 'Google, Inc.'
  spec.source       = { :http => 'https://dl.google.com/dl/cpdc/39904b8c19e8792c/Firebase-3.8.0.tar.gz'}
  spec.platforms	= {:ios => '7.0'}
  spec.requires_arc = true
  spec.preserve_paths	= ['.cocoapods.yml', 'CHANGELOG.md', 'NOTICES', 'README.md']
  spec.default_subspecs	= 'Core'
  
  spec.subspec 'Core' do |core|
    core.source_files = 'Core/Sources/Firebase.h'
    core.preserve_paths	= ['Core/Sources/module.modulemap']
    core.dependencies	= { :FirebaseAnalytics => '3.5.1', :FirebaseCore => '3.4.4'}
    core.user_target_xcconfig	= { :HEADER_SEARCH_PATHS => '$(inherited) ${PODS_ROOT}/Firebase/Core/Sources' }
  end
  spec.subspec 'AdMob' do |admob|
    admob.dependencies	= { :'Google-Mobile-Ads-SDK' => '7.13.1', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Analytics' do |analytics|
    analytics.dependencies	= { :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'AppIndexing' do |appindexing|
	appindexing.dependencies	= { :FirebaseAppIndexing => '1.2.0', :FirebaseCore => '3.4.4'}
  end
	spec.subspec 'Auth' do |auth|
    auth.dependencies	= { :FirebaseAuth => '3.0.6', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Crash' do |crash|
    crash.dependencies	= { :FirebaseCrash => '1.1.3', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Crash' do |crash|
    crash.dependencies	= { :FirebaseDatabase => '3.1.0', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'DynamicLinks' do |dynamiclinks|
    dynamiclinks.dependencies	= { :FirebaseDynamicLinks => '1.3.1', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Invites' do |invites|
    invites.dependencies	= { :FirebaseInvites => '1.2.2', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Messaging' do |messaging|
    messaging.dependencies	= { :FirebaseMessaging => '1.2.1', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'RemoteConfig' do |remoteconfig|
    remoteconfig.dependencies	= { :FirebaseRemoteConfig => '1.3.1', :FirebaseCore => '3.4.4'}
  end
  spec.subspec 'Storage' do |storage|
    storage.dependencies	= { :FirebaseStorage => '1.0.4', :FirebaseCore => '3.4.4'}
  end
end
