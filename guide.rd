
Summary
Notify.js is a jQuery plugin to provide simple yet fully customisable notifications. The javascript code snippets in this documentation with the green edge are runnable by clicking them.

$.notify("Hello World");

Download
Download Notify.js including the pre-made bootstrap notification style:
Download notify.js Download notify.min.js

Basic Usage
Element Notifications
You can place notifications on any element:

$(".elem-demo").notify("Hello Box");
Like this box

Global Notifications
If you don't specify an element, notification will appear in the top left (unless you specify a different position - See Positioning)

$.notify("I'm over here !");
Notification Styles
Each style may define a set of classes to use to substyle the notification. The pre-packaged version includes a bootstrap notification style (see more below in Styling). These classes include:

Success
$.notify("Access granted", "success");Info
$.notify("Do not press this button", "info");Warning
$.notify("Warning: Self-destruct in 3.. 2..", "warn");Error
$.notify("BOOM!", "error");
Note: This page has set the default class to"success" with$.notify.defaults({ className: "success" });.

Positioning
The string option is used to describe both vertical and horizontal alignment. Element notifications and Global notifications can be vertically repositioned to: , or and horozontally repositioned to: , or . If we don't provide a option the default alignments are defined in the default settings: and . When only one alignment is provided, the vertical alignment is and horizontal alignment is position"top""middle" "bottom" "left""center" "right"positionglobalPositionelementPositionmiddlecentre.

$(".pos-demo").notify(
  "I'm to the right of this box", 
  { position:"right" }
);
We can position the notification around this box

Use this positioning tool to see all possible position combinations.

Element  Global 
An awesome cool larrrggggeeee box

API
$.notify( string|object, [ options ])
string|object - global notification data
options - an options object or class name string

$.notify( element, string|object, [ options ])
element - a jquery element
string|object - element notification data
options - an options object or class name string

$( selector ).notify( string|object, [ options ])
selector - jquery selector
string|object - element notification data
options - an options object or class name string

$.notify.addStyle( styleName, styleDefinition )
styleName - string (the style option references this name)
styleDefinition - style definition object (see Styling below)

$.notify.defaults( options )
options - an options object (updates the defaults listed below)

Options
The options object listed above are in the form below. This object below is the actual used to check option validity and set defaults.

{
  // whether to hide the notification on click
  clickToHide: true,
  // whether to auto-hide the notification
  autoHide: true,
  // if autoHide, hide after milliseconds
  autoHideDelay: 5000,
  // show the arrow pointing at the element
  arrowShow: true,
  // arrow size in pixels
  arrowSize: 5,
  // position defines the notification position though uses the defaults below
  position: '...',
  // default positions
  elementPosition: 'bottom left',
  globalPosition: 'top right',
  // default style
  style: 'bootstrap',
  // default class (string or [string])
  className: 'error',
  // show animation
  showAnimation: 'slideDown',
  // show animation duration
  showDuration: 400,
  // hide animation
  hideAnimation: 'slideUp',
  // hide animation duration
  hideDuration: 200,
  // padding between element and notification
  gap: 2
}