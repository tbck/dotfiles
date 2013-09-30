//!javascript
//<adblock_subscriptions___SCRIPT
extensions.load("adblock_subscriptions", {
//<adblock_subscriptions___CONFIG

// Shortcut to subscribe to a filterlist
scSubscribe : null, 
// Command to subscribe to a filterlist
cmdSubscribe : "adblock_subscribe", 

// Shortcut to unsubscribe from a filterlist
scUnsubscribe : null, 

// Command to unsubscribe from a filterlist
cmdUnsubscribe : "adblock_unsubscribe",

// Shortcut to update subscriptions and reload filter rules
// Note that dwb will also update all subscriptions on startup
scUpdate : null, 

// Command to update subscriptions and reload filter rules
// Note that dwb will also update all subscriptions on startup
cmdUpdate : "adblock_update", 

// Path to the filterlist directory, will be created if it doesn't exist. 
filterListDir : data.configDir + "/adblock_lists"
//>adblock_subscriptions___CONFIG
});
//>adblock_subscriptions___SCRIPT
//<speeddial___SCRIPT
extensions.load("speeddial", {
//<speeddial___CONFIG
    // Shortcut for adding a site
    add : "sda",
    // Shortcut for showing the speedial site
    show : "sds", 
    // Command for adding a site
    cmdAdd : "speeddial_add",
    // Shortcut for showing the speedial site
    cmdShow : "",
    // Number of vertical items, if set to null there will be no limit for
    // number of items
    nVert : 3, 
    // Number of horizontal items
    nHorz : 3,
    // Limit of number of items, <= 0 means no limit 
    limit : 0,
    // Whether to update snapshot images every time a bookmarked site is visited
    autoUpdate : false,
    // Cachedir where the template file and snapshots are saved
    cachedir : system.getEnv("HOME") + "/.local/share/dwb/speeddial",
    // Width of a snapshot image
    snapshotWidth : 640, 
    // Height of a snapshot image
    snapshotHeight : 480
//>speeddial___CONFIG

});
//>speeddial___SCRIPT
//<grabscrolling___SCRIPT
extensions.load("grabscrolling", {
//<grabscrolling___CONFIG
  // Whether grab-scroll-mode is enabled by default
  grabModeEnabled : true,

  // Button to grab-scroll
  grabButton : 1,

  // Buttons to start grab-scroll-mode
  // e.g. grabModeButtons : [ 1, 3 ],
  grabModeButtons : [ 1 ], 

  // Clicktype to start grab-scroll-mode
  // supported values are 
  // ClickType.click, ClickType.doubleClick and ClickType.tripleClick
  grabModeClickType : ClickType.doubleClick,

  // Buttons to end grab-scroll-mode
  // e.g. normalModeButtons : [ 1, 3 ],
  normalModeButtons: [ 1 ],

  // Clicktype to end grab-scroll-mode
  // supported values are
  // ClickType.click, ClickType.doubleClick and ClickType.tripleClick
  normalModeClickType : ClickType.doubleClick,

  // Reverse scroll direction
  reverse : false
//>grabscrolling___CONFIG
});
//>grabscrolling___SCRIPT
//<downloadhandler___SCRIPT
extensions.load("downloadhandler", {
//<downloadhandler___CONFIG
   handler : [
     // Each handler must have 2 or 3 properties:
     //
     // command : command to execute, must contain %f which will be replaced with
     //           the filepath, this property is mandatory
     //
     // extension : a filename extension, optional
     //
     // mimeType  : a mimetype, optional
     //
     
     // { command : "xpdf %f", mimeType : "application/pdf" }
     // { command : "xdvi %f", extension : "dvi" }
     
   ]
//>downloadhandler___CONFIG
});
//>downloadhandler___SCRIPT
//<navtools___SCRIPT
extensions.load("navtools", {
//<navtools___CONFIG
// Shortcut for navigating to the next page
forwardBind : "]]",

// Shortcut for navigating to the previous page
backBind : "[[",

// Go up one directory, e.g. from http://www.example.com/foo/bar to 
// http://www.example.com/foo
updirBind : "gu", 

// Go to top directory, e.g. from http://www.example.com/foo/bar to 
// http://www.example.com
topdirBind : "gU", 

// Patterns to match against when searching for "next"-links
nextPatterns : "next,more,>,\u2192,\xbb,\u226b,>>",

// Patterns to match against when searching for "previous"-links
previousPatterns : "prev,previous,back,<,\u2190,\xab,\u226a,<<"

//>navtools___CONFIG
});
//>navtools___SCRIPT
