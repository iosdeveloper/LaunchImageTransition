Just copy both LaunchImageTransition.h and LaunchImageTransition.m to your project.

Don't forget to #import LaunchImageTransition.h in your app delegate.

Replace
self.window.rootViewController = self.viewController;
with
self.window.rootViewController = [[[LaunchImageTransition alloc] initWithViewController:self.viewController animation:UIModalTransitionStyleCrossDissolve delay:1.0] autorelease];

Animation has to be one of the UIModalTransitionStyles, Delay is optional.

Please take a look at the project for an example implementation.