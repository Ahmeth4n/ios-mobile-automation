# ios-mobile-automation
Since I could hardly find any resources on iOS automation development on Google and Stackoverflow, I was able to write an automation tool in different ways by doing some research.
Under normal circumstances, you can perform UI Tests on your applications by using the XCTestCase class offered by Apple. So is this class used for automation? available.
https://developer.apple.com/documentation/xctest/xctestcase


Everyone who owns an Apple device, Apple offers an account to sign applications. The only problem here is that applications signed with this signature expire after about 1 week.

And to make successful UI Tests with this tool, you need to be on the same network as the iOS device you are working with.

# Local Network Problem
We install OpenVPN by opening a simple EC-2 machine from Amazon AWS (You can install it ready from the marketplace: 
https://aws.amazon.com/marketplace/pp/prodview-y3m73u6jd5srk). 

You are tunneling your iOS device and your device where you built your application to the same network with openvpn.

Under normal conditions, you can build/run your application, which is not built outside of the local network, by tunneling two machines to the same network with vpn.

If you want to find the name of the target package you want to automate, search your app in the app store and right click > view page source.

![find app package name](https://i.imgur.com/22NccFm.png)

If you wish on the page, "." directly at the beginning of your application name. search by putting it, if you wish, you can search directly by saying "bundleId". The package name that appears will be the package name of your application. You can start working by pasting the code where it says com.target.app.
