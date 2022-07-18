package com.furusystems.dconsole2
{
   import §!!n§.§8y§;
   import §!#C§.§0#R§;
   import §#f§.§3@§;
   import §'#%§.§2#?§;
   import §+!J§.§""A§;
   import §+!J§.§>n§;
   import §+!J§.§[#U§;
   import §,!k§.Assistant;
   import §1"b§.§,A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §6#§.§#!z§;
   import §6#§.§4"K§;
   import §6#§.§7#C§;
   import §6§.§%I§;
   import §6=§.§+!,§;
   import §6=§.§8"q§;
   import §6=§.§@"c§;
   import §6Z§.§8#O§;
   import §6Z§.§9j§;
   import §6Z§.§>"K§;
   import §7g§.§,!B§;
   import §87§.§?§;
   import §;"v§.§]!+§;
   import §>!$§.§6"§;
   import §>!c§.§?!;§;
   import §>"%§.§ "R§;
   import §>"%§.§"!5§;
   import §>"%§.§%"4§;
   import §]!"§.§+"d§;
   import §]"T§.§'"N§;
   import §]"U§.§ !X§;
   import §]"r§.§ k§;
   import §]"r§.§7v§;
   import §]"r§.§["g§;
   import §^#W§.§>!W§;
   import §^#W§.§@#§;
   import §^V§.Logging;
   import com.furusystems.dconsole2.core.style.§7"h§;
   import §default§.§4>§;
   import §default§.§7#,§;
   import §default§.§=W§;
   import §default§.§`#O§;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import static.§='§;
   
   public class DConsole extends §>n§ implements §!!%§
   {
      
      public static const §<!g§:int = 0;
      
      public static const §+"j§:int = 1;
      
      public static const §!!@§:int = -1;
      
      private static const §'!u§:int = 0;
      
      private static const §8!I§:int = 1;
      
      public static var §;Z§:Boolean = true;
      
      public static var §@!&§:Boolean = true;
      
      private static var §7#I§:DConsole;
      
      private static var §"p§:Array = [];
      
      public static const §["w§:String = "DConsole";
       
      
      public var ignoreBlankLines:Boolean = true;
      
      private var §!"8§:Boolean = false;
      
      private var §="=§:§>!W§;
      
      private var §2!a§:§@#§;
      
      private var § !'§:§7"h§;
      
      private var §-"_§:§+"d§;
      
      private var §-"x§:§7#C§;
      
      private var §+V§:§4>§;
      
      private var §4"$§:§7v§;
      
      private var §4!U§:Boolean = false;
      
      private var §=B§:Boolean = true;
      
      private var §!!1§:§?!;§;
      
      private var §[j§:§7#,§;
      
      private var §+"r§:§7#,§;
      
      private var §!!T§:§7#,§;
      
      private var §-#O§:§7#,§;
      
      private var §]#A§:Boolean = true;
      
      private var §>!i§:int = 0;
      
      private var §3"c§:Sprite;
      
      private var §5![§:Sprite;
      
      private var §5"R§:Sprite;
      
      private var §>#L§:uint = 13;
      
      private var §@b§:uint = 33.0;
      
      private var _lock:§2#?§;
      
      private var §?"z§:§ !X§;
      
      private var §-!z§:§"!5§;
      
      private var §8"&§:Boolean = true;
      
      private var §;9§:§["g§;
      
      private var §@O§:Function = null;
      
      private var §,#'§:Boolean = false;
      
      private var §+!N§:Function;
      
      private var §7"E§:§]!+§;
      
      private var §7@§:§0#R§;
      
      private var §?"§:Sprite;
      
      private var §5"d§:§>l§;
      
      private var §2!$§:uint = 9;
      
      private var §+u§:§='§;
      
      private var §1!?§:Boolean = false;
      
      private var §4+§:int = 1;
      
      private var §"!r§:Timer;
      
      private var §##a§:Boolean = false;
      
      private var §;#U§:Boolean;
      
      private var §="S§:§4]§;
      
      public function DConsole()
      {
         this.§2!a§ = new §@#§();
         this.§3"c§ = new Sprite();
         this.§5![§ = new Sprite();
         this.§5"R§ = new Sprite();
         this._lock = new §2#?§();
         this.§5"d§ = new §>l§();
         this.§"!r§ = new Timer(33);
         this.§="S§ = new §4]§();
         super();
         this.§ !'§ = new §7"h§(this);
         this.§!!1§ = new §?!;§(this);
         this.§"!r§.addEventListener(TimerEvent.TIMER,this.§23§);
         this.§-!z§ = new §"!5§(this);
         this.§7"E§ = new §]!+§(this);
         this.§+u§ = new §='§(this.§5"d§);
         this.output.§^"%§ = this.§-!z§.§^"%§;
         this.input.§`!N§.addEventListener(TextEvent.TEXT_INPUT,this.§#n§);
         tabEnabled = false;
         tabChildren = false;
         this.§7@§ = new §0#R§(this.§5"d§);
         this.§="=§ = new §>!W§(this.input.§`!N§);
         this.§-"x§ = new §7#C§(this,this.§="=§);
         this.§="=§.§#!c§(this.§2!a§);
         this.§-"_§ = new §+"d§(this,this.§-"x§);
         this.§?"z§ = new § !X§(this.§-"x§,this.§-"_§,this,this.§5![§,this.§3"c§,this.§5"R§,this.§-!z§);
         this.§+V§ = new §4>§(this,this.§!!1§,this.§-"_§,this.§?"z§);
         this.§-"x§.§4z§(this.§+V§);
         this.§?"§ = new Sprite();
         addChild(this.§?"§);
         this.§?"§.addChild(this.§7@§.shape);
         this.§?"§.addChild(this.§3"c§);
         this.§?"§.addChild(this.§7"E§);
         this.§?"§.addChild(this.§5![§);
         this.§;9§ = new §["g§();
         this.§?"§.addChild(this.§;9§);
         this.§4"$§ = new §7v§(this);
         this.§?"§.addChild(this.§4"$§);
         this.input.addEventListener(Event.CHANGE,this.§0!@§);
         this.§8#R§.addEventListener(Event.CHANGE,this.§?5§,false,0,true);
         this.§]"z§.addCallback(§""A§.§2#J§,this.§0!j§);
         this.§]"z§.addCallback(§""A§.§`",§,this.§`"U§);
         this.§]"z§.addCallback(§""A§.§3#G§,this.§!##§);
         §-#1§.§%!E§.§3"%§(this.§>#L§,this.§@b§,this.toggleDisplay);
         this.§[j§ = new §7#,§("call",this.§-"x§.§8h§,"Introspection","Calls a method with args within the current introspection scope");
         this.§!!T§ = new §=W§("set",this.§-"x§.§^#H§,"Introspection","Sets a variable within the current introspection scope");
         this.§+"r§ = new §=W§("get",this.§-"x§.§37§,"Introspection","Prints a variable within the current introspection scope");
         this.§-#O§ = new §=W§("select",this.select,"Introspection","Selects the specified object or reference by identifier as the current introspection scope");
         var _loc1_:* = "";
         _loc1_ += "\tKeyboard commands\n";
         _loc1_ += "\t\tControl+Shift+Enter (default) -> Show/hide console\n";
         _loc1_ += "\t\tMaster key (Default TAB) -> (When out of focus) Set the keyboard focus to the input field\n";
         _loc1_ += "\t\tMaster key (Default TAB) -> (While caret is on an unknown term) Context sensitive search\n";
         _loc1_ += "\t\tEnter -> Execute line\n";
         _loc1_ += "\t\tPage up/Page down -> Vertical scroll by page\n";
         _loc1_ += "\t\tArrow up -> Recall the previous executed line\n";
         _loc1_ += "\t\tArrow down -> Recall the more recent executed line\n";
         _loc1_ += "\t\tShift + Arrow keys -> Scroll\n";
         _loc1_ += "\t\tMouse functions\n";
         _loc1_ += "\t\tMousewheel -> Vertical scroll line by line\n";
         _loc1_ += "\t\tClick drag below the input line -> Change console height\n";
         _loc1_ += "\t\tClick drag console header -> Move the console window\n";
         _loc1_ += "\tMisc\n";
         _loc1_ += "\t\tUse the \'commands\' command to list available commmands";
         this.§+u§.§;!Q§("Basic instructions",_loc1_);
         this.§""W§("Welcome to Doomsday Console II - www.doomsday.no",§+!,§.§>y§);
         this.§""W§("Today is " + new Date().toString(),§+!,§.§>y§);
         this.§""W§("Console version " + §[#U§.§;!D§ + "." + §[#U§.§["d§,§+!,§.§>y§);
         this.§""W§("Player version " + Capabilities.version,§+!,§.§>y§);
         this.§?";§();
         this.setRepeatFilter(§8"q§.§-"T§);
         this.visible = false;
         this.§""W§("Ready. Type help to get started.",§+!,§.§>y§);
         addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
      }
      
      public static function get §-#&§() : §0#R§
      {
         return §[![§.§-#&§;
      }
      
      public static function refresh() : void
      {
         §[![§.refresh();
      }
      
      public static function §?#4§() : void
      {
         §[![§.§?#4§();
      }
      
      public static function §8#P§() : void
      {
         §[![§.§78§ = null;
      }
      
      public static function §;!X§(param1:Function) : void
      {
         if(param1.length != 1)
         {
            throw new Error("The default input callback must accept exactly 1 string argument");
         }
         §[![§.§78§ = param1;
      }
      
      public static function get ignoreBlankLines() : Boolean
      {
         return DConsole(§[![§).ignoreBlankLines;
      }
      
      public static function set ignoreBlankLines(param1:Boolean) : void
      {
         DConsole(§[![§).ignoreBlankLines = param1;
      }
      
      public static function §!# §() : Object
      {
         return (§[![§ as DConsole).§9!T§.§0%§.§5#L§;
      }
      
      public static function get §[![§() : §!!%§
      {
         if(!§7#I§)
         {
            §7#I§ = new DConsole();
            if(§"p§.length > 0)
            {
               §[![§.§[!P§(§"p§[0],§"p§[1]);
            }
         }
         return §7#I§;
      }
      
      public static function §>"x§(param1:String) : void
      {
         §[![§.§%!^§(param1);
      }
      
      public static function get view() : DisplayObject
      {
         return §[![§ as DisplayObject;
      }
      
      public static function §""W§(param1:String, param2:String = "Info", param3:String = "DConsole") : void
      {
         §[![§.§""W§(param1,param2,param3);
      }
      
      public static function §"#L§(param1:String, param2:String = "DConsole") : void
      {
         §[![§.§""W§(param1,§+!,§.§>y§,param2);
      }
      
      public static function §1z§(param1:String, param2:String = "DConsole") : void
      {
         §[![§.§""W§(param1,§+!,§.§',§,param2);
      }
      
      public static function §4E§(param1:String, param2:String = "DConsole") : void
      {
         §[![§.§""W§(param1,§+!,§.ERROR,param2);
      }
      
      public static function §[!u§(param1:String, param2:String = "DConsole") : void
      {
         §[![§.§""W§(param1,§+!,§.§4"'§,param2);
      }
      
      public static function §&!p§(param1:String, param2:String = "DConsole") : void
      {
         §[![§.§""W§(param1,§+!,§.FATAL,param2);
      }
      
      public static function §0#Q§(param1:String, param2:Function, param3:String = "Application", param4:String = "") : void
      {
         §[![§.§0#Q§(param1,param2,param3,param4);
      }
      
      public static function §=#I§(param1:String) : void
      {
         §[![§.§=#I§(param1);
      }
      
      public static function get §]!,§() : Function
      {
         return §[![§.§]!,§;
      }
      
      public static function get clear() : Function
      {
         return §[![§.clear;
      }
      
      public static function §[#?§(... rest) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < rest.length)
         {
            (§[![§ as DConsole).§^b§.§'"W§(rest[_loc2_]);
            _loc2_++;
         }
      }
      
      public static function select(param1:Object) : void
      {
         §[![§.select(param1);
      }
      
      public static function show() : void
      {
         §[![§.show();
      }
      
      public static function hide() : void
      {
         §[![§.hide();
      }
      
      public static function §8j§(param1:String, param2:Boolean = false) : *
      {
         return §[![§.§8j§(param1,param2);
      }
      
      public static function §<x§(param1:uint, param2:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         if(§-#1§.§%!E§.§1§(param1,param2))
         {
            if(!§7#I§)
            {
               §"p§ = [param1,param2];
            }
            else
            {
               §[![§.§[!P§(param1,param2);
            }
            _loc3_ = true;
         }
         return _loc3_;
      }
      
      private static function §[!P§(param1:uint, param2:uint) : void
      {
         §[![§.§[!P§(param1,param2);
      }
      
      public static function §?8§(param1:Function) : void
      {
         §[![§.§?8§(param1);
      }
      
      public static function §;!3§() : void
      {
         §[![§.§;!3§();
      }
      
      public static function §8!&§() : void
      {
         DConsole(§[![§).persistence.clearAll();
      }
      
      public static function dock(param1:int) : void
      {
         §[![§.view.§^7§ = param1;
      }
      
      public static function §?"3§(param1:String) : void
      {
         DConsole(§[![§)._lock.lockWithKeycodes(§=D§.§!#P§(param1),DConsole(§[![§).toggleDisplay);
      }
      
      public static function §,#J§(param1:Array) : void
      {
         DConsole(§[![§)._lock.lockWithKeycodes(param1,DConsole(§[![§).toggleDisplay);
      }
      
      public static function setMasterKey(param1:uint) : void
      {
         DConsole(§[![§).setMasterKey(param1);
      }
      
      private function §!##§(param1:§7",§) : void
      {
         if(!param1.data)
         {
            this.§?"§.visible = false;
         }
      }
      
      private function §#n§(param1:TextEvent) : void
      {
         if(this.§,#'§)
         {
            param1.preventDefault();
         }
         this.§,#'§ = false;
      }
      
      public function get §0%§() : §#!z§
      {
         return this.§-"x§.§0%§;
      }
      
      private function §`"U§(param1:§7",§) : void
      {
         this.§8j§(String(param1.data));
      }
      
      private function §0!j§(param1:§7",§) : void
      {
         this.select(param1.data);
      }
      
      private function §;""§() : void
      {
         if(this.§4+§ == §'!u§)
         {
            removeEventListener(Event.ENTER_FRAME,this.§23§);
         }
         else
         {
            this.§"!r§.stop();
         }
      }
      
      private function §'#S§() : void
      {
         if(this.§4+§ == §'!u§)
         {
            addEventListener(Event.ENTER_FRAME,this.§23§,false,-1000,false);
         }
         else
         {
            this.§"!r§.start();
         }
      }
      
      private function §23§(param1:Event = null) : void
      {
         this.§?"z§.update();
         this.view.inspector.§4R§(param1);
         this.§]"z§.§#!"§(§""A§.§9"u§,null,this);
      }
      
      public function get lock() : §2#?§
      {
         return this._lock;
      }
      
      public function §[!P§(param1:uint, param2:uint) : void
      {
         §-#1§.§%!E§.§3"%§(param1,param2,this.toggleDisplay,true);
      }
      
      private function §?";§() : void
      {
         this.§0#Q§("about",this.about,"System","Credits etc");
         this.§0#Q§("clear",this.clear,"View","Clear the console");
         this.§0#Q§("showTimestamps",this.output.§@"!§,"View","Toggle or set display of message timestamp");
         this.§0#Q§("showTags",this.§else§,"View","Toggle or set the display of message tags");
         this.§0#Q§("showLineNumbers",this.output.§@#'§,"View","Toggles or sets the display of line numbers");
         this.§0#Q§("setQuicksearch",this.§ !Z§,"System","Toggles or sets trigger key to search commands and methods for the current word");
         this.§0#Q§("help",this.§+"Z§,"System","Output instructions. Append an argument to read more about that topic.");
         this.§0#Q§("clearhistory",this.§!!1§.§&#<§,"System","Clears the stored command history");
         this.§0#Q§("dock",this.§2@§,"System","Docks the console to either \'top\'(default) \'bottom\'/\'bot\' or \'window\'");
         this.§0#Q§("maximizeConsole",this.§'#-§,"System","Sets console height to fill the screen");
         this.§0#Q§("minimizeConsole",this.§0"<§,"System","Sets console height to 1");
         this.§0#Q§("setRepeatFilter",this.setRepeatFilter,"System","Sets the repeat message filter; 0 - Stack, 1 - Ignore, 2 - Passthrough");
         this.§0#Q§("repeat",this.§&9§,"System","Repeats command string X Y times");
         this.§%C§(new §7#,§("resetConsole",this.resetConsole,"System","Resets and clears the console"),false);
         if(Capabilities.isDebugger)
         {
            this.§""W§("\tDebugplayer commands added",§+!,§.§>y§);
            this.§0#Q§("gc",System.gc,"Debugplayer","Forces a garbage collection cycle");
         }
         if(Capabilities.playerType == "StandAlone" || Capabilities.playerType == "External")
         {
            this.§""W§("\tProjector commands added",§+!,§.§>y§);
            this.§0#Q§("quitapp",this.§ #G§,"Projector","Quit the application");
         }
         this.§0#Q§("plugins",this.§?"z§.§#Y§,"Plugins","Lists enabled plugin information");
         this.§0#Q§("commands",this.§+V§.§0#]§,"Utility","Output a list of available commands. Add a second argument to search.");
         this.§0#Q§("search",this.§[!x§,"Utility","Searches the current log for a string and scrolls to the first matching line");
         this.§0#Q§("toClipboard",this.§%#O§,"Utility","Takes value X and puts it in the system clipboard (great for grabbing command XML output)");
         this.§%C§(this.§[j§);
         this.§%C§(this.§+"r§);
         this.§%C§(this.§!!T§);
         this.§%C§(this.§-#O§);
         this.§0#Q§("root",this.§-"x§.§<"r§,"Introspection","Selects the stage as the current introspection scope");
         this.§0#Q§("parent",this.§-"x§.up,"Introspection","(if the current scope is a display object) changes scope to the parent object");
         this.§0#Q§("children",this.§-"x§.§,#F§,"Introspection","Get available children in the current scope");
         this.§0#Q§("variables",this.§-"x§.§3"0§,"Introspection","Get available simple variables in the current scope");
         this.§0#Q§("complex",this.§-"x§.§>#F§,"Introspection","Get available complex variables in the current scope");
         this.§0#Q§("scopes",this.§-"x§.§?!p§,"Introspection","List available scopes in the current scope");
         this.§0#Q§("methods",this.§-"x§.§`!3§,"Introspection","Get available methods in the current scope");
         this.§0#Q§("updateScope",this.§-"x§.updateScope,"Introspection","Gets changes to the current scope tree");
         this.§0#Q§("referenceThis",this.§-"_§.getReference,"Referencing","Stores a weak reference to the current scope in a specified id (referenceThis 1)");
         this.§0#Q§("getReference",this.§-"_§.§4#A§,"Referencing","Stores a weak reference to the specified scope in the specified id (getReference scopename 1)");
         this.§0#Q§("listReferences",this.§-"_§.§%!a§,"Referencing","Lists all stored references and their IDs");
         this.§0#Q§("clearAllReferences",this.§-"_§.§+"D§,"Referencing","Clears all stored references");
         this.§0#Q§("clearReference",this.§-"_§.§0"&§,"Referencing","Clears the specified reference");
         this.§0#Q§("loadTheme",this.§ !'§.load,"Theme","Loads theme xml from urls; [x] theme [y] color table");
      }
      
      public function setMasterKey(param1:uint) : void
      {
         if(param1 == Keyboard.ENTER)
         {
            throw new Error("The master key can not be the enter key");
         }
         this.§2!$§ = param1;
      }
      
      private function §2@§(param1:String = "top") : void
      {
         param1 = param1.toLowerCase();
         switch(param1)
         {
            case "bot":
            case "bottom":
               dock(§+"j§);
               break;
            case "none":
            case "window":
               dock(§!!@§);
               break;
            case "top":
            default:
               dock(§<!g§);
         }
      }
      
      private function get dynamic() : §%I§
      {
         return this.§7"E§.§+!h§;
      }
      
      private function get §9!O§() : §,!B§
      {
         return this.§7"E§.§;!v§;
      }
      
      private function get output() : §?#8§
      {
         return this.§7"E§.output;
      }
      
      private function get §8#R§() : § k§
      {
         return this.§7"E§.§8#R§;
      }
      
      private function get assistant() : Assistant
      {
         return this.§7"E§.assistant;
      }
      
      private function get input() : §'"N§
      {
         return this.§7"E§.input;
      }
      
      private function § !W§(param1:String) : void
      {
      }
      
      private function §else§(param1:String = null) : void
      {
         if(param1 == null)
         {
            this.view.output.§%#C§ = !this.view.output.§%#C§;
         }
         else
         {
            this.view.output.§%#C§ = §6"§.§^p§(param1);
         }
         this.view.output.update();
      }
      
      private function resetConsole() : void
      {
         this.persistence.clearAll();
         this.view.§`_§ = this.persistence.verticalSplitRatio.value;
         this.§=_§();
         this.§-!z§.§^"%§.clear();
         this.§-!z§.§[!C§();
         §"#L§("GUI and history reset");
      }
      
      private function about() : void
      {
         §"#L§("Doomsday Console II");
         §"#L§("\t\tversion " + §[#U§.§;!D§ + "." + §[#U§.§["d§);
         §"#L§("\t\thttp://doomsdayconsole.googlecode.com");
         §"#L§("\t\tconcept and development by www.doomsday.no & www.furusystems.com");
      }
      
      private function §^3§(param1:String) : void
      {
         this.§-!z§.§="Q§(new §%"4§(param1));
      }
      
      public function §[!x§(param1:String) : void
      {
         var _loc2_:int = this.§-!z§.§[!x§(param1);
         if(_loc2_ > -1)
         {
            this.output.§"#[§(_loc2_);
         }
         else
         {
            §4E§("Not found");
         }
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§-!z§.§^"%§;
      }
      
      private function §%#O§(param1:String) : void
      {
         Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT,param1);
      }
      
      private function §59§(param1:String) : Loader
      {
         var _loc2_:Loader = new Loader();
         _loc2_.load(new URLRequest(param1));
         return _loc2_;
      }
      
      private function §&9§(param1:String, param2:int = 1) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            this.§8j§(param1);
            _loc3_++;
         }
      }
      
      public function select(param1:*) : void
      {
         var target:* = param1;
         if(this.§-"x§.§0%§ == target)
         {
            return;
         }
         try
         {
            this.§-"x§.§1!%§(String(target));
         }
         catch(e:Error)
         {
            try
            {
               §-"_§.§9#R§(target);
            }
            catch(e:Error)
            {
               try
               {
                  if(typeof target == "string")
                  {
                     throw new Error();
                  }
                  §-"x§.§4"i§(target);
               }
               catch(e:Error)
               {
                  §""W§("No such scope",§+!,§.ERROR);
               }
            }
         }
      }
      
      private function § !Z§(param1:String = null) : void
      {
         if(param1 == null)
         {
            this.§<,§(!this.§]#A§);
         }
         else
         {
            this.§<,§(§6"§.§^p§(param1));
         }
      }
      
      private function §?5§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
      }
      
      private function § #G§(param1:int = 0) : void
      {
         System.exit(param1);
      }
      
      private function §+"Z§(param1:String = "") : void
      {
         if(param1 == "")
         {
            §"#L§(this.§+u§.§'T§("Basic instructions"));
            §"#L§(this.§+u§.§,"n§());
         }
         else
         {
            §"#L§(this.§+u§.§'T§(param1));
         }
      }
      
      public function §8j§(param1:String, param2:Boolean = false) : *
      {
         if(param2)
         {
            this.§""W§(param1,§+!,§.§-!J§);
         }
         return this.§+V§.§else §(param1);
      }
      
      private function §0!@§(param1:Event = null) : void
      {
         var cmd:§`#O§ = null;
         var helpText:String = null;
         var e:Event = param1;
         if(this.§@O§ != null)
         {
            return;
         }
         try
         {
            cmd = this.§+V§.§ `§(this.input.text);
            helpText = cmd.helpText;
         }
         catch(e:Error)
         {
            helpText = "";
         }
         var secondElement:String = §3@§.§4f§(this.input.text);
         if(secondElement)
         {
            if(cmd == this.§[j§)
            {
               try
               {
                  helpText = §4"K§.§;"h§(this.§-"x§.§0%§.§5#L§,secondElement);
               }
               catch(e:Error)
               {
                  helpText = cmd.helpText;
               }
            }
            else if(cmd == this.§!!T§ || cmd == this.§+"r§)
            {
               try
               {
                  helpText = §4"K§.§>!l§(this.§-"x§.§0%§.§5#L§,secondElement);
               }
               catch(e:Error)
               {
                  helpText = cmd.helpText;
               }
            }
         }
         if(helpText != "")
         {
            this.assistant.text = "?\t" + cmd.trigger + ": " + helpText;
         }
         else
         {
            this.assistant.clear();
         }
      }
      
      public function §4"i§(param1:Object) : void
      {
         this.§-"x§.§4"i§(param1);
      }
      
      public function §0#Q§(param1:String, param2:Function, param3:String = "Application", param4:String = "") : void
      {
         this.§%C§(new §7#,§(param1,param2,param3,param4));
      }
      
      public function §%C§(param1:§`#O§, param2:Boolean = true) : void
      {
         var command:§`#O§ = param1;
         var includeInHistory:Boolean = param2;
         try
         {
            this.§+V§.§%C§(command,includeInHistory);
            this.§2!a§.§<#T§(command.trigger);
         }
         catch(e:ArgumentError)
         {
            §""W§(e.message,§+!,§.ERROR);
         }
      }
      
      public function §=#I§(param1:String) : void
      {
         this.§+V§.§=#I§(param1);
      }
      
      public function §]!,§(param1:Event) : void
      {
         this.§""W§("Event: " + param1.toString(),§+!,§.INFO);
      }
      
      private function §6s§(param1:String, param2:String, param3:String) : Vector.<§@"c§>
      {
         var _loc7_:§@"c§ = null;
         var _loc9_:String = null;
         var _loc4_:Vector.<§@"c§> = new Vector.<§@"c§>();
         var _loc5_:Array;
         if((_loc5_ = param1.split("\n").join("\r").split("\r")).join("").length < 1 && this.ignoreBlankLines)
         {
            return _loc4_;
         }
         var _loc6_:String = String(new Date().getTime());
         var _loc8_:int = 0;
         while(_loc8_ < _loc5_.length)
         {
            if(!((_loc9_ = _loc5_[_loc8_]).length < 1 && this.ignoreBlankLines))
            {
               if(!(_loc9_.indexOf("com.furusystems.dconsole2") > -1 || _loc9_.indexOf("adobe.com/AS3") > -1))
               {
                  _loc7_ = new §@"c§(_loc9_,_loc6_,param2,param3);
                  _loc4_.push(_loc7_);
               }
            }
            _loc8_++;
         }
         return _loc4_;
      }
      
      public function §;Q§(param1:String) : void
      {
         this.§-!z§.§="Q§(new §%"4§("",param1));
      }
      
      public function §7"d§(param1:String) : void
      {
         this.§-!z§.§="Q§(new §%"4§(param1));
      }
      
      public function §'"P§(param1:String, param2:String, param3:String = "Info", param4:String = "") : void
      {
         var _loc5_:§ "R§ = this.§-!z§.§=N§(param1);
         var _loc6_:Vector.<§@"c§> = this.§6s§(param2,param3,param4);
      }
      
      public function §""W§(param1:String, param2:String = "Info", param3:String = "DConsole") : void
      {
         var _loc4_:§ "R§ = null;
         var _loc7_:§@"c§ = null;
         var _loc9_:§,A§ = null;
         if(param3 != §["w§ && this.§8"&§)
         {
            _loc4_ = this.§-!z§.§=N§(param3);
         }
         var _loc5_:§ "R§ = this.§-!z§.§["2§;
         var _loc6_:Vector.<§@"c§> = this.§6s§(param1,param2,param3);
         var _loc8_:int = 0;
         for(; _loc8_ < _loc6_.length; _loc8_++)
         {
            _loc7_ = _loc6_[_loc8_];
            if(_loc5_.§%"v§)
            {
               if(_loc5_.§%"v§.text == _loc7_.text && _loc5_.§%"v§.tag == _loc7_.tag && _loc5_.§%"v§.type == _loc7_.type)
               {
                  switch(this.§>!i§)
                  {
                     case §8"q§.§-"T§:
                        ++_loc5_.§%"v§.§%"T§;
                        _loc5_.§%"v§.timestamp = _loc7_.timestamp;
                        _loc5_.§!"`§();
                        if(_loc4_)
                        {
                           _loc4_.§!"`§();
                        }
                        continue;
                     case §8"q§.§="'§:
                        continue;
                  }
               }
            }
            if(_loc7_.type != §+!,§.§-!J§)
            {
               if(_loc7_.type == §+!,§.ERROR)
               {
                  _loc9_ = §""A§.ERROR;
               }
               else
               {
                  _loc9_ = §""A§.§;"a§;
               }
               this.§]"z§.§#!"§(_loc9_,_loc7_,this);
            }
            _loc5_.§8!"§(_loc7_);
            if(_loc4_)
            {
               _loc4_.§8!"§(_loc7_);
            }
         }
         this.output.update();
      }
      
      public function clear() : void
      {
         this.§-!z§.§^"%§.clear();
         this.output.§["R§();
      }
      
      private function §;§() : void
      {
         stage.align = StageAlign.TOP_LEFT;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         this.§""W§("StageAlign set to TOP_LEFT, StageScaleMode set to NO_SCALE",§+!,§.§>y§);
      }
      
      private function §2f§(param1:Event) : void
      {
         this.§;#U§ = Capabilities.playerType == "Desktop";
         Logging.§<#$§ = new §8y§();
         §-#1§.§%!E§.§-!D§(stage);
         if(stage.align != StageAlign.TOP_LEFT)
         {
            this.§""W§("Warning: stage.align is not set to TOP_LEFT; This might cause scaling issues",§+!,§.ERROR);
            this.§""W§("Fix: stage.align = StageAlign.TOP_LEFT;",§+!,§.DEBUG);
         }
         if(stage.scaleMode != StageScaleMode.NO_SCALE)
         {
            this.§""W§("Warning: stage.scaleMode is not set to NO_SCALE; This might cause scaling issues",§+!,§.ERROR);
            this.§""W§("Fix: stage.scaleMode = StageScaleMode.NO_SCALE;",§+!,§.DEBUG);
         }
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§?B§,false,int.MAX_VALUE);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.§ "O§,false,int.MAX_VALUE);
         stage.addEventListener(Event.RESIZE,this.§=_§);
         removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         this.§-"x§.§<"r§();
         this.view.§%!^§("Doomsday Console " + §[#U§.§;!D§ + "." + §[#U§.§["d§);
         this.§=_§(param1);
      }
      
      private function §=_§(param1:Event = null) : void
      {
         this.§7"E§.§="l§();
         this.§;9§.resize();
      }
      
      public function §?#4§() : void
      {
         var _loc1_:Error = new Error();
         var _loc2_:String = _loc1_.getStackTrace();
         var _loc3_:Array = _loc2_.split("\n");
         _loc3_.shift();
         _loc2_ = "Stack trace: \n\t" + _loc3_.join("\n\t");
         this.§""W§(_loc2_,§+!,§.INFO);
      }
      
      private function §==§(param1:String, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : Vector.<String>
      {
         var _loc7_:Vector.<String> = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc5_:Vector.<String> = new Vector.<String>();
         if(param1.length < 1)
         {
            return _loc5_;
         }
         var _loc6_:Boolean = false;
         if(param4)
         {
            _loc7_ = this.§-"x§.§==§(param1,§7#C§.§@!^§);
            _loc5_ = _loc5_.concat(_loc7_);
            _loc9_ = "";
            _loc10_ = 0;
            if(_loc7_.length > 0)
            {
               this.§""W§("Scope methods matching \'" + param1 + "\'",§+!,§.§>y§);
               _loc11_ = 0;
               while(_loc11_ < _loc7_.length)
               {
                  _loc9_ += _loc7_[_loc11_] + " ";
                  _loc10_++;
                  if(_loc10_ > 4)
                  {
                     _loc10_ = 0;
                     this.§""W§(_loc9_,§+!,§.INFO);
                     _loc9_ = "";
                  }
                  _loc11_++;
               }
               if(_loc9_ != "")
               {
                  this.§""W§(_loc9_,§+!,§.INFO);
               }
               _loc6_ = true;
            }
         }
         if(param3)
         {
            _loc7_ = this.§+V§.§==§(param1);
            _loc5_ = _loc5_.concat(_loc7_);
            _loc10_ = 0;
            _loc9_ = "";
            if(_loc7_.length > 0)
            {
               this.§""W§("Commands matching \'" + param1 + "\'",§+!,§.§>y§);
               _loc11_ = 0;
               while(_loc11_ < _loc7_.length)
               {
                  _loc9_ += "\t" + _loc7_[_loc11_] + " ";
                  _loc10_++;
                  if(_loc10_ > 4)
                  {
                     _loc10_ = 0;
                     this.§""W§(_loc9_,§+!,§.INFO);
                     _loc9_ = "";
                  }
                  _loc11_++;
               }
               if(_loc9_ != "")
               {
                  this.§""W§(_loc9_,§+!,§.INFO);
               }
               _loc6_ = true;
            }
         }
         if(param2)
         {
            _loc7_ = this.§-"x§.§==§(param1,§7#C§.§]"h§);
            _loc5_ = _loc5_.concat(_loc7_);
            _loc10_ = 0;
            _loc9_ = "";
            if(_loc7_.length > 0)
            {
               this.§""W§("Scope accessors matching \'" + param1 + "\'",§+!,§.§>y§);
               _loc11_ = 0;
               while(_loc11_ < _loc7_.length)
               {
                  _loc9_ += _loc7_[_loc11_] + " ";
                  _loc10_++;
                  if(_loc10_ > 4)
                  {
                     _loc10_ = 0;
                     this.§""W§(_loc9_,§+!,§.INFO);
                     _loc9_ = "";
                  }
                  _loc11_++;
               }
               if(_loc9_ != "")
               {
                  this.§""W§(_loc9_,§+!,§.INFO);
               }
               _loc6_ = true;
            }
         }
         _loc7_ = this.§-"x§.§==§(param1,§7#C§.§<"_§);
         _loc5_ = _loc5_.concat(_loc7_);
         _loc10_ = 0;
         _loc9_ = "";
         if(_loc7_.length > 0)
         {
            this.§""W§("Children matching \'" + param1 + "\'",§+!,§.§>y§);
            _loc11_ = 0;
            while(_loc11_ < _loc7_.length)
            {
               _loc9_ += _loc7_[_loc11_] + " ";
               _loc10_++;
               if(_loc10_ > 4)
               {
                  _loc10_ = 0;
                  this.§""W§(_loc9_,§+!,§.INFO);
                  _loc9_ = "";
               }
               _loc11_++;
            }
            if(_loc9_ != "")
            {
               this.§""W§(_loc9_,§+!,§.INFO);
            }
            _loc6_ = true;
         }
         return _loc5_;
      }
      
      private function get §2!8§() : Vector.<§@"c§>
      {
         return this.§-!z§.§^"%§.§0!G§;
      }
      
      public function show() : void
      {
         if(!stage)
         {
            return;
         }
         if(!this.visible)
         {
            this.toggleDisplay();
         }
      }
      
      public function hide() : void
      {
         if(!stage)
         {
            return;
         }
         if(this.visible)
         {
            this.toggleDisplay();
         }
      }
      
      override public function get visible() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this.§4!U§ = param1;
         if(this.§4!U§)
         {
            this.§?"§.visible = true;
            this.view.show();
         }
         else
         {
            this.view.hide();
         }
      }
      
      public function set isVisible(param1:Boolean) : void
      {
         this.§=B§ = param1;
         super.visible = this.§=B§;
      }
      
      public function get isVisible() : Boolean
      {
         return this.§=B§;
      }
      
      public function toggleDisplay() : void
      {
         if(this.lock.locked)
         {
            return;
         }
         this.visible = !this.visible;
         var _loc2_:Rectangle = this.§!!1§.rect;
         if(this.visible)
         {
            if(!this.§!"8§)
            {
               this.initialize();
            }
            if(parent)
            {
               parent.addChild(this);
            }
            this.§+!R§();
            this.input.focus();
            this.input.text = "";
            this.§0!@§();
            this.§'#S§();
            this.§]"z§.§#!"§(§""A§.§+!@§,null,this);
         }
         else
         {
            this.§5#W§();
            this.§;""§();
            this.§]"z§.§#!"§(§""A§.§]! §,null,this);
         }
      }
      
      private function §5#W§() : void
      {
         if(parent)
         {
            parent.tabChildren = parent.tabEnabled = this.§##a§;
         }
      }
      
      private function §+!R§() : void
      {
         if(parent)
         {
            this.§##a§ = parent.tabChildren;
            parent.tabEnabled = false;
            parent.tabChildren = false;
         }
      }
      
      private function initialize() : void
      {
         this.§!"8§ = true;
         if(!this.§ !'§.§+"S§)
         {
            this.§ !'§.load();
         }
         this.§7"E§.§="l§();
      }
      
      override public function get height() : Number
      {
         return this.§7"E§.height;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§7"E§.height = param1;
      }
      
      override public function get width() : Number
      {
         return this.§7"E§.rect.width;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§7"E§.width = param1;
      }
      
      public function §<,§(param1:Boolean = true) : void
      {
         this.§]#A§ = param1;
         this.§""W§("Quick-searching: " + this.§]#A§,§+!,§.§>y§);
      }
      
      public function §'#-§() : void
      {
         if(!stage)
         {
            return;
         }
         this.§7"E§.§'#-§();
      }
      
      public function §0"<§() : void
      {
         this.§7"E§.§0"<§();
      }
      
      private function § "O§(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         §-#1§.§%!E§.§^!5§(param1);
         if(this.visible)
         {
            _loc2_ = "";
            _loc3_ = false;
            if(param1.keyCode == Keyboard.UP)
            {
               if(param1.shiftKey)
               {
                  return;
               }
               _loc2_ = this.§!!1§.§-#8§();
               _loc3_ = true;
            }
            else if(param1.keyCode == Keyboard.DOWN)
            {
               if(param1.shiftKey)
               {
                  return;
               }
               _loc2_ = this.§!!1§.§set §();
               _loc3_ = true;
            }
            if(_loc3_)
            {
               this.input.text = _loc2_;
               this.input.focus();
               if((_loc4_ = this.input.text.indexOf(" ")) > -1)
               {
                  this.input.§`!N§.setSelection(this.input.text.indexOf(" ") + 1,this.input.text.length);
               }
               else
               {
                  this.input.§`!N§.setSelection(0,this.input.text.length);
               }
               this.§0!@§();
            }
         }
      }
      
      private function § !h§(param1:KeyboardEvent) : §4]§
      {
         var success:Boolean = false;
         var passToDefault:Boolean = false;
         var errorMessage:String = null;
         var attempt:* = undefined;
         var ret:* = undefined;
         var e:KeyboardEvent = param1;
         var out:§4]§ = this.§="S§;
         out.reset();
         var triggered:Boolean = e.keyCode == this.§2!$§;
         if(stage.focus == this.input.§`!N§)
         {
            if(!e.shiftKey && triggered)
            {
               out.§<W§ = true;
               out.§^"C§ = this.§7!y§();
               if(out.§^"C§)
               {
                  if(this.§9#7§(e.keyCode))
                  {
                     this.§7"N§(e);
                  }
               }
               return out;
            }
         }
         else if(triggered)
         {
            this.input.focus();
            out.§<W§ = true;
            return out;
         }
         if(e.keyCode == Keyboard.ESCAPE)
         {
            if(this.§@O§ != null)
            {
               this.§;!3§();
            }
            this.§]"z§.§#!"§(§""A§.§,#O§,null,this);
            out.§<W§ = true;
            return out;
         }
         if(e.shiftKey)
         {
            switch(e.keyCode)
            {
               case Keyboard.UP:
                  this.output.scroll(1);
                  out.§<W§ = true;
                  return out;
               case Keyboard.DOWN:
                  this.output.scroll(-1);
                  out.§<W§ = true;
                  return out;
               case Keyboard.LEFT:
                  break;
               case Keyboard.RIGHT:
            }
         }
         if(e.keyCode == Keyboard.ENTER && stage.focus == this.input.§`!N§)
         {
            out.§<W§ = true;
            if(this.input.text.length < 1)
            {
               return out;
            }
            success = false;
            passToDefault = false;
            errorMessage = "";
            this.§""W§(this.input.text,§+!,§.§-!J§);
            if(this.§@O§ != null)
            {
               this.§@O§(this.input.text);
               success = true;
            }
            else
            {
               try
               {
                  attempt = this.§8j§(this.input.text);
                  success = true;
               }
               catch(error:§9j§)
               {
               }
               catch(error:ArgumentError)
               {
                  switch(error.message)
                  {
                     case §8#O§.§?",§:
                        passToDefault = true;
                  }
                  errorMessage = error.message;
               }
               catch(error:§>"K§)
               {
                  passToDefault = true;
                  errorMessage = error.message;
               }
               catch(error:Error)
               {
                  §""W§(error.message,§+!,§.ERROR);
               }
            }
            if(passToDefault && this.§+!N§ != null)
            {
               ret = this.§+!N§(this.input.text);
               if(ret)
               {
                  this.§""W§(ret,§+!,§.INFO);
               }
            }
            else
            {
               this.§""W§(errorMessage,§+!,§.ERROR);
            }
            this.output.§6!P§();
            this.input.clear();
            this.§0!@§();
            out.§<W§ = true;
         }
         else if(e.keyCode == Keyboard.PAGE_DOWN)
         {
            this.output.scroll(-this.output.numLines);
            out.§<W§ = true;
         }
         else if(e.keyCode == Keyboard.PAGE_UP)
         {
            this.output.scroll(this.output.numLines);
            out.§<W§ = true;
         }
         else if(e.keyCode == Keyboard.HOME)
         {
            this.output.scrollIndex = 0;
            out.§<W§ = true;
         }
         else if(e.keyCode == Keyboard.END)
         {
            this.output.scrollIndex = this.output.§1"x§;
            out.§<W§ = true;
         }
         else if(e.keyCode == Keyboard.SPACE)
         {
            out.§<W§ = true;
         }
         return out;
      }
      
      private function §?B§(param1:KeyboardEvent) : void
      {
         §-#1§.§%!E§.§>7§(param1);
         if(!this.visible)
         {
            return;
         }
         if(param1.keyCode == Keyboard.TAB)
         {
            stage.focus = this.input.§`!N§;
         }
         var _loc2_:§4]§ = this.§ !h§(param1);
         if(_loc2_.§<W§)
         {
            if(this.§;#U§)
            {
               if(!_loc2_.§^"C§)
               {
                  if(param1.keyCode == Keyboard.SPACE)
                  {
                     this.view.input.§'&§(" ");
                  }
               }
               else
               {
                  this.input.§["7§();
               }
            }
            param1.stopImmediatePropagation();
            param1.stopPropagation();
            param1.preventDefault();
         }
      }
      
      private function §9#7§(param1:uint) : Boolean
      {
         return param1 >= 13 || param1 == Keyboard.SPACE;
      }
      
      private function §7"N§(param1:KeyboardEvent) : void
      {
         if(this.§;#U§)
         {
            return;
         }
         this.§,#'§ = true;
         param1.stopPropagation();
      }
      
      public function setRepeatFilter(param1:int) : void
      {
         switch(param1)
         {
            case §8"q§.§="'§:
               this.§""W§("Repeat mode: Repeated messages are now ignored",§+!,§.§>y§);
               break;
            case §8"q§.§%#P§:
               this.§""W§("Repeat mode: Repeated messages are now allowed",§+!,§.§>y§);
               break;
            case §8"q§.§-"T§:
               this.§""W§("Repeat mode: Repeated messages are now stacked",§+!,§.§>y§);
               break;
            default:
               throw new Error("Unknown filter type");
         }
         this.§>!i§ = param1;
      }
      
      private function §7!y§() : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:Vector.<String> = null;
         if(this.input.text.length < 1 || this.§@O§ != null)
         {
            return false;
         }
         var _loc2_:String = this.input.§0C§;
         var _loc3_:* = this.input.text.lastIndexOf(_loc2_) < 1;
         if(_loc3_)
         {
            _loc4_ = _loc2_;
         }
         else
         {
            _loc4_ = this.input.§`"@§;
         }
         if((_loc5_ = this.§="=§.§&!z§(_loc2_,!_loc3_,_loc3_)) || !isNaN(Number(_loc2_)))
         {
            _loc6_ = this.input.§%!Y§;
            if(this.input.§`!N§.selectedText.length > 0)
            {
               this.input.§?#E§(this.input.selectionBeginIndex);
               _loc6_ = this.input.selectionBeginIndex;
               addr160:
            }
            else if(this.input.text.charAt(this.input.caretIndex) == " " && this.input.caretIndex != this.input.text.length - 1)
            {
               §§goto(addr160);
            }
            _loc2_ = this.input.§0C§;
            _loc6_ = this.input.caretIndex;
            _loc7_ = this.input.text;
            try
            {
               _loc7_ = _loc7_.replace(_loc2_,this.§="=§.§]#Z§(_loc2_));
               this.input.text = _loc7_;
            }
            catch(e:Error)
            {
            }
            if(_loc6_ + _loc2_.length < this.input.text.length - 1)
            {
               this.input.§?#E§(_loc6_ + _loc2_.length);
               this.input.§0X§();
            }
            else
            {
               if(this.input.text.charAt(this.input.text.length - 1) != " ")
               {
                  this.input.§`!N§.appendText(" ");
               }
               this.input.§["7§();
            }
            return true;
         }
         if(this.§]#A§)
         {
            _loc8_ = _loc4_ == this.§+"r§.trigger || _loc4_ == this.§!!T§.trigger;
            _loc9_ = _loc4_ == this.§[j§.trigger;
            _loc10_ = _loc4_ == this.§-#O§.trigger;
            if((_loc11_ = this.§==§(_loc2_,!_loc3_ || _loc10_,_loc3_,_loc9_)).length == 1)
            {
               if(_loc11_[0].indexOf(_loc2_) == 0)
               {
                  this.input.§0X§();
                  this.input.§`!N§.replaceSelectedText(_loc11_[0] + " ");
                  this.input.§?#E§(_loc6_ + _loc11_[0].length + 1);
                  return true;
               }
            }
            else if(_loc11_.length > 1)
            {
               this.input.§["7§();
               return true;
            }
         }
         return false;
      }
      
      public function get view() : §]!+§
      {
         return this.§7"E§;
      }
      
      public function get §="b§() : §"!5§
      {
         return this.§-!z§;
      }
      
      public function get §78§() : Function
      {
         return this.§+!N§;
      }
      
      public function set §78§(param1:Function) : void
      {
         if(param1 == null)
         {
            this.§+!N§ = null;
            return;
         }
         if(param1.length != 1)
         {
            throw new Error("Default input callback must take exactly one argument");
         }
         this.§+!N§ = param1;
      }
      
      public function §0&§() : void
      {
         this.output.§0&§();
      }
      
      public function §7"+§() : void
      {
         this.output.§7"+§();
      }
      
      public function §5"w§(param1:String = null, param2:String = null) : void
      {
         this.§ !'§.load(param1,param2);
      }
      
      public function get §9!T§() : §7#C§
      {
         return this.§-"x§;
      }
      
      public function get persistence() : §?!;§
      {
         return this.§!!1§;
      }
      
      public function get §^b§() : § !X§
      {
         return this.§?"z§;
      }
      
      public function §%!^§(param1:String) : void
      {
         this.§7"E§.§+!h§.§>"x§(param1);
      }
      
      public function §?8§(param1:Function) : void
      {
         §"#L§("Override callback active, hit ESC to resume normal ops");
         this.§@O§ = param1;
      }
      
      public function §;!3§() : void
      {
         §"#L§("Override callback cleared");
         this.§@O§ = null;
      }
      
      public function get §-#&§() : §0#R§
      {
         return this.§7@§;
      }
      
      public function §%!>§(param1:XML, param2:XML) : void
      {
         this.§ !'§.§0!g§(param1,param2);
      }
      
      public function §8"+§() : Array
      {
         return [this.§ !'§.§^!A§,this.§ !'§.§?"!§];
      }
      
      public function refresh() : void
      {
         this.§9!T§.updateScope();
      }
      
      public function get §]"z§() : §>l§
      {
         return this.§5"d§;
      }
   }
}
