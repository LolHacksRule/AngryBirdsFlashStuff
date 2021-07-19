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
      
      private static var §"p§:Array;
      
      public static const §["w§:String = "DConsole";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<!g§ = 0;
            loop0:
            while(true)
            {
               §+"j§ = 1;
               while(true)
               {
                  §!!@§ = -1;
                  continue loop0;
                  addr39:
                  if(!(_loc2_ && DConsole))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§2!a§ = new §@#§();
            if(_loc4_ || _loc2_)
            {
               this.§3"c§ = new Sprite();
               if(!(_loc3_ && _loc3_))
               {
                  this.§5![§ = new Sprite();
                  loop0:
                  while(true)
                  {
                     this.§5"R§ = new Sprite();
                     if(_loc4_)
                     {
                        this._lock = new §2#?§();
                        if(_loc4_ || this)
                        {
                           this.§5"d§ = new §>l§();
                           while(_loc4_)
                           {
                              this.§"!r§ = new Timer(33);
                              loop2:
                              while(true)
                              {
                                 this.§="S§ = new §4]§();
                                 loop3:
                                 while(true)
                                 {
                                    super();
                                    loop4:
                                    while(true)
                                    {
                                       this.§ !'§ = new §7"h§(this);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                       addr105:
                                       if(!(_loc3_ && this))
                                       {
                                          this.§-!z§ = new §"!5§(this);
                                          loop5:
                                          while(true)
                                          {
                                             this.§7"E§ = new §]!+§(this);
                                             loop6:
                                             while(true)
                                             {
                                                this.§+u§ = new §='§(this.§5"d§);
                                                if(!_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break loop5;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      this.output.§^"%§ = this.§-!z§.§^"%§;
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(this.input);
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§`!N§.addEventListener(TextEvent.TEXT_INPUT,this.§#n§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               addr524:
                                                               tabChildren = tabEnabled = false;
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  this.§7@§ = new §0#R§(this.§5"d§);
                                                                  this.§="=§ = new §>!W§(this.input.§`!N§);
                                                                  this.§-"x§ = new §7#C§(this,this.§="=§);
                                                                  addr625:
                                                                  while(true)
                                                                  {
                                                                     this.§="=§.§#!c§(this.§2!a§);
                                                                     addr616:
                                                                     while(true)
                                                                     {
                                                                        this.§-"_§ = new §+"d§(this,this.§-"x§);
                                                                        addr609:
                                                                        while(true)
                                                                        {
                                                                           this.§?"z§ = new § !X§(this.§-"x§,this.§-"_§,this,this.§5![§,this.§3"c§,this.§5"R§,this.§-!z§);
                                                                           do
                                                                           {
                                                                              this.§+V§ = new §4>§(this,this.§!!1§,this.§-"_§,this.§?"z§);
                                                                           }
                                                                           while(!(_loc4_ || _loc3_));
                                                                           
                                                                           this.§-"x§.§4z§(this.§+V§);
                                                                           addr561:
                                                                           while(true)
                                                                           {
                                                                              this.§?"§ = new Sprite();
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr625:
                                                                  addr641:
                                                                  addr634:
                                                               }
                                                               this.§!!T§ = new §=W§("set",this.§-"x§.§^#H§,"Introspection","Sets a variable within the current introspection scope");
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        §§goto(addr625);
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr432:
                                                                     while(true)
                                                                     {
                                                                        this.§8#R§.addEventListener(Event.CHANGE,this.§?5§,false,0,true);
                                                                        addr416:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(this.§]"z§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().addCallback(§""A§.§2#J§,this.§0!j§);
                                                                                 addr395:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§]"z§);
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addCallback(§""A§.§`",§,this.§`"U§);
                                                                                             addr382:
                                                                                             addr455:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr468:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§?"§.addChild(this.§;9§);
                                                                                                   break loop6;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§?"§.addChild(this.§4"$§);
                                                                                                break loop26;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr475:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§;9§ = new §["g§();
                                                                                       §§goto(addr468);
                                                                                    }
                                                                                 }
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§pop().addCallback(§""A§.§3#G§,this.§!##§);
                                                                                    continue loop26;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr641);
                                                                           }
                                                                           §§goto(addr609);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(_loc4_ || this)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr427:
                                                                        this.input.addEventListener(Event.CHANGE,this.§0!@§);
                                                                        §§goto(addr432);
                                                                        addr448:
                                                                     }
                                                                     §§goto(addr634);
                                                                  }
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           this.§?"§.addChild(this.§7"E§);
                                                                           break loop29;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr518:
                                                                     while(true)
                                                                     {
                                                                        this.§?"§.addChild(this.§3"c§);
                                                                        continue loop34;
                                                                     }
                                                                  }
                                                                  §§goto(addr561);
                                                                  addr256:
                                                                  if(_loc3_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr263:
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§+"r§ = new §=W§("get",this.§-"x§.§37§,"Introspection","Prints a variable within the current introspection scope");
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr280:
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       this.§-#O§ = new §=W§("select",this.select,"Introspection","Selects the specified object or reference by identifier as the current introspection scope");
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§[j§ = new §7#,§("call",this.§-"x§.§8h§,"Introspection","Calls a method with args within the current introspection scope");
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr574);
                                                                                       addr331:
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr280);
                                                                                 }
                                                                                 §§goto(addr416);
                                                                                 addr344:
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr382);
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr395);
                                                                        addr267:
                                                                     }
                                                                     var _loc1_:* = "";
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr1071:
                                                                        _loc1_ += "\tKeyboard commands\n";
                                                                        addr1066:
                                                                        _loc1_ += "\t\tControl+Shift+Enter (default) -> Show/hide console\n";
                                                                        addr1069:
                                                                        addr1064:
                                                                        addr1067:
                                                                        addr1072:
                                                                        §§push(_loc1_ + "\t\tMaster key (Default TAB) -> (When out of focus) Set the keyboard focus to the input field\n");
                                                                        if(!_loc3_)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           addr1036:
                                                                           addr1051:
                                                                           §§push(_loc1_ + "\t\tMaster key (Default TAB) -> (While caret is on an unknown term) Context sensitive search\n");
                                                                           if(!_loc3_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              addr1041:
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr1025:
                                                                                 _loc1_ += "\t\tEnter -> Execute line\n";
                                                                                 addr1026:
                                                                                 addr1023:
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr1019:
                                                                                    _loc1_ += "\t\tPage up/Page down -> Vertical scroll by page\n";
                                                                                    addr1020:
                                                                                    addr1017:
                                                                                    §§push(_loc1_ + "\t\tArrow up -> Recall the previous executed line\n");
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       _loc1_ = §§pop();
                                                                                       addr1014:
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr1005:
                                                                                          _loc1_ = §§pop() + "\t\tArrow down -> Recall the more recent executed line\n";
                                                                                          addr1006:
                                                                                          §§push(_loc1_);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr997:
                                                                                             _loc1_ = §§pop() + "\t\tShift + Arrow keys -> Scroll\n";
                                                                                             addr987:
                                                                                             _loc1_ += "\t\tMouse functions\n";
                                                                                             addr988:
                                                                                             addr998:
                                                                                             addr985:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr970:
                                                                                                §§push(_loc1_);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr979:
                                                                                                   _loc1_ = §§pop() + "\t\tMousewheel -> Vertical scroll line by line\n";
                                                                                                   addr980:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr937:
                                                                                                      §§push(_loc1_);
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr948:
                                                                                                            §§push(§§pop() + "\t\tClick drag below the input line -> Change console height\n");
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     addr960:
                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                     {
                                                                                                                        addr890:
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr913:
                                                                                                                                 §§push(§§pop() + "\t\tClick drag console header -> Move the console window\n");
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          addr925:
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || this)
                                                                                                                                             {
                                                                                                                                                addr880:
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr884:
                                                                                                                                                   §§push(§§pop() + "\tMisc\n");
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                      addr887:
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + "\t\tUse the \'commands\' command to list available commmands");
                                                                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                 this.§+u§.§;!Q§("Basic instructions",_loc1_);
                                                                                                                                                                                 this.§""W§("Welcome to Doomsday Console II - www.doomsday.no",§+!,§.§>y§);
                                                                                                                                                                                 addr807:
                                                                                                                                                                                 addr877:
                                                                                                                                                                                 addr823:
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§""W§("Today is " + new Date().toString(),§+!,§.§>y§);
                                                                                                                                                                                       addr800:
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push("Console version " + §[#U§.§;!D§);
                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + ".");
                                                                                                                                                                                          if(_loc4_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr781:
                                                                                                                                                                                             §§push(§§pop() + §[#U§.§["d§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§""W§(§§pop(),§+!,§.§>y§);
                                                                                                                                                                                          addr787:
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§""W§("Player version " + Capabilities.version,§+!,§.§>y§);
                                                                                                                                                                                             addr751:
                                                                                                                                                                                             if(!(_loc3_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§?";§();
                                                                                                                                                                                                addr730:
                                                                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.setRepeatFilter(§8"q§.§-"T§);
                                                                                                                                                                                                         addr715:
                                                                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.visible = false;
                                                                                                                                                                                                                  addr695:
                                                                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§""W§("Ready. Type help to get started.",§+!,§.§>y§);
                                                                                                                                                                                                                        addr681:
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr807);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr695);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr787);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr751);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1026);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr715);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr988);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr980);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr730);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr998);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr925);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr800);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr877);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr823);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr781);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1020);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr887);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1020);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr987);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr913);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr884);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1036);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1020);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr937);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr890);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr880);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1019);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1069);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1006);
                                                                                                                                          }
                                                                                                                                          §§goto(addr960);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1005);
                                                                                                                                    }
                                                                                                                                    §§goto(addr997);
                                                                                                                                 }
                                                                                                                                 §§goto(addr948);
                                                                                                                              }
                                                                                                                              §§goto(addr1023);
                                                                                                                           }
                                                                                                                           §§goto(addr1005);
                                                                                                                        }
                                                                                                                        §§goto(addr985);
                                                                                                                     }
                                                                                                                     §§goto(addr1014);
                                                                                                                  }
                                                                                                                  §§goto(addr1071);
                                                                                                               }
                                                                                                               §§goto(addr1036);
                                                                                                            }
                                                                                                            §§goto(addr979);
                                                                                                         }
                                                                                                         §§goto(addr1017);
                                                                                                      }
                                                                                                      §§goto(addr970);
                                                                                                   }
                                                                                                   §§goto(addr1051);
                                                                                                }
                                                                                                §§goto(addr1014);
                                                                                             }
                                                                                             §§goto(addr1041);
                                                                                          }
                                                                                          §§goto(addr1071);
                                                                                       }
                                                                                       §§goto(addr1064);
                                                                                    }
                                                                                    §§goto(addr1025);
                                                                                 }
                                                                                 §§goto(addr1067);
                                                                              }
                                                                              §§goto(addr1072);
                                                                           }
                                                                           §§goto(addr1071);
                                                                        }
                                                                        §§goto(addr1066);
                                                                     }
                                                                     §§goto(addr807);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               addr333:
                                                               loop35:
                                                               while(_loc4_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§?"§.addChild(this.§5![§);
                                                                     §§goto(addr475);
                                                                     continue loop35;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§?"§.addChild(this.§7@§.shape);
                                                                        §§goto(addr518);
                                                                     }
                                                                  }
                                                                  break loop0;
                                                                  §§goto(addr482);
                                                               }
                                                               addr482:
                                                               §§goto(addr616);
                                                            }
                                                            §§goto(addr448);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      break;
                                                   }
                                                   §-#1§.§%!E§.§3"%§(this.§>#L§,this.§@b§,this.toggleDisplay);
                                                   §§goto(addr344);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§4"$§ = new §7v§(this);
                                                §§goto(addr455);
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              this.§!!1§ = new §?!;§(this);
                              if(_loc4_)
                              {
                                 this.§"!r§.addEventListener(TimerEvent.TIMER,this.§23§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr105);
                                 }
                                 §§goto(addr475);
                              }
                              §§goto(addr489);
                           }
                           continue;
                        }
                        §§goto(addr267);
                     }
                     break;
                  }
                  while(true)
                  {
                     addChild(this.§?"§);
                     §§goto(addr524);
                  }
               }
               §§goto(addr625);
            }
            §§goto(addr489);
         }
         §§goto(addr548);
      }
      
      public static function get §-#&§() : §0#R§
      {
         return §[![§.§-#&§;
      }
      
      public static function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && DConsole))
         {
            §[![§.refresh();
         }
      }
      
      public static function §?#4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[![§.§?#4§();
         }
      }
      
      public static function §8#P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[![§.§78§ = null;
         }
      }
      
      public static function §;!X§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.length == 1)
            {
               do
               {
                  §[![§.§78§ = param1;
               }
               while(_loc2_);
               
               if(_loc3_)
               {
                  return;
                  addr42:
               }
            }
            throw new Error("The default input callback must accept exactly 1 string argument");
         }
         §§goto(addr42);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§7#I§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  §7#I§ = new DConsole();
                  loop2:
                  while(§"p§.length > 0)
                  {
                     if(_loc1_)
                     {
                        if(_loc2_ && DConsole)
                        {
                           continue;
                        }
                        if(!(_loc1_ || DConsole))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           §[![§.§[!P§(§"p§[0],§"p§[1]);
                        }
                     }
                     while(true)
                     {
                        break loop2;
                     }
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      public static function §>"x§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §[![§.§%!^§(param1);
         }
      }
      
      public static function get view() : DisplayObject
      {
         return §[![§ as DisplayObject;
      }
      
      public static function §""W§(param1:String, param2:String = "Info", param3:String = "DConsole") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §[![§.§""W§(param1,param2,param3);
         }
      }
      
      public static function §"#L§(param1:String, param2:String = "DConsole") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[![§.§""W§(param1,§+!,§.§>y§,param2);
         }
      }
      
      public static function §1z§(param1:String, param2:String = "DConsole") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §[![§.§""W§(param1,§+!,§.§',§,param2);
         }
      }
      
      public static function §4E§(param1:String, param2:String = "DConsole") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §[![§.§""W§(param1,§+!,§.ERROR,param2);
         }
      }
      
      public static function §[!u§(param1:String, param2:String = "DConsole") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && DConsole))
         {
            §[![§.§""W§(param1,§+!,§.§4"'§,param2);
         }
      }
      
      public static function §&!p§(param1:String, param2:String = "DConsole") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[![§.§""W§(param1,§+!,§.FATAL,param2);
         }
      }
      
      public static function §0#Q§(param1:String, param2:Function, param3:String = "Application", param4:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §[![§.§0#Q§(param1,param2,param3,param4);
         }
      }
      
      public static function §=#I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[![§.§=#I§(param1);
         }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= rest.length)
            {
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               (§[![§ as DConsole).§^b§.§'"W§(rest[_loc2_]);
               while(true)
               {
                  _loc2_++;
               }
               addr65:
            }
            while(_loc3_)
            {
               §§goto(addr65);
            }
         }
      }
      
      public static function select(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §[![§.select(param1);
         }
      }
      
      public static function show() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[![§.show();
         }
      }
      
      public static function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[![§.hide();
         }
      }
      
      public static function §8j§(param1:String, param2:Boolean = false) : *
      {
         return §[![§.§8j§(param1,param2);
      }
      
      public static function §<x§(param1:uint, param2:uint) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = false;
         if(!(_loc5_ && param1))
         {
            §§push(§-#1§.§%!E§.§1§(param1,param2));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr26:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
               while(true)
               {
                  if(§7#I§)
                  {
                     §[![§.§[!P§(param1,param2);
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || param1)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §"p§ = [param1,param2];
                                 addr108:
                                 while(true)
                                 {
                                 }
                              }
                              addr103:
                           }
                           while(true)
                           {
                              §§push(true);
                              continue loop0;
                           }
                        }
                        §§goto(addr108);
                        addr57:
                        _loc3_ = §§pop();
                        if(!(_loc4_ || param2))
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§goto(addr26);
                        }
                     }
                     continue;
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr65);
      }
      
      private static function §[!P§(param1:uint, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §[![§.§[!P§(param1,param2);
         }
      }
      
      public static function §?8§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §[![§.§?8§(param1);
         }
      }
      
      public static function §;!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[![§.§;!3§();
         }
      }
      
      public static function §8!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            DConsole(§[![§).persistence.clearAll();
         }
      }
      
      public static function dock(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §[![§.view.§^7§ = param1;
         }
      }
      
      public static function §?"3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            DConsole(§[![§)._lock.lockWithKeycodes(§=D§.§!#P§(param1),DConsole(§[![§).toggleDisplay);
         }
      }
      
      public static function §,#J§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            DConsole(§[![§)._lock.lockWithKeycodes(param1,DConsole(§[![§).toggleDisplay);
         }
      }
      
      public static function setMasterKey(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            DConsole(§[![§).setMasterKey(param1);
         }
      }
      
      private function §!##§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1.data)
            {
               if(_loc3_)
               {
                  this.§?"§.visible = false;
               }
            }
         }
      }
      
      private function §#n§(param1:TextEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§,#'§)
            {
               if(!_loc3_)
               {
                  param1.preventDefault();
                  addr62:
                  while(true)
                  {
                  }
                  addr62:
               }
               §§goto(addr62);
            }
            while(true)
            {
               this.§,#'§ = false;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get §0%§() : §#!z§
      {
         return this.§-"x§.§0%§;
      }
      
      private function §`"U§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8j§(String(param1.data));
         }
      }
      
      private function §0!j§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.select(param1.data);
         }
      }
      
      private function §;""§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§4+§ != §'!u§)
            {
               this.§"!r§.stop();
               if(!(_loc2_ && _loc1_))
               {
                  if(!(_loc1_ || this))
                  {
                     addr68:
                     removeEventListener(Event.ENTER_FRAME,this.§23§);
                     addr74:
                  }
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr68);
      }
      
      private function §'#S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§4+§ != §'!u§)
            {
               this.§"!r§.start();
               if(_loc2_)
               {
                  if(_loc1_ && _loc2_)
                  {
                     addEventListener(Event.ENTER_FRAME,this.§23§,false,-1000,false);
                     addr78:
                     addr59:
                  }
                  return;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr59);
      }
      
      private function §23§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§?"z§.update();
            do
            {
               this.view.inspector.§4R§(param1);
               do
               {
                  this.§]"z§.§#!"§(§""A§.§9"u§,null,this);
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function get lock() : §2#?§
      {
         return this._lock;
      }
      
      public function §[!P§(param1:uint, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §-#1§.§%!E§.§3"%§(param1,param2,this.toggleDisplay,true);
         }
      }
      
      private function §?";§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0#Q§("about",this.about,"System","Credits etc");
            loop0:
            while(true)
            {
               this.§0#Q§("clear",this.clear,"View","Clear the console");
               loop1:
               while(true)
               {
                  this.§0#Q§("showTimestamps",this.output.§@"!§,"View","Toggle or set display of message timestamp");
                  loop2:
                  while(true)
                  {
                     this.§0#Q§("showTags",this.§else§,"View","Toggle or set the display of message tags");
                     while(true)
                     {
                        this.§0#Q§("showLineNumbers",this.output.§@#'§,"View","Toggles or sets the display of line numbers");
                        loop4:
                        while(true)
                        {
                           this.§0#Q§("setQuicksearch",this.§ !Z§,"System","Toggles or sets trigger key to search commands and methods for the current word");
                           loop5:
                           while(true)
                           {
                              this.§0#Q§("help",this.§+"Z§,"System","Output instructions. Append an argument to read more about that topic.");
                              loop6:
                              while(true)
                              {
                                 this.§0#Q§("clearhistory",this.§!!1§.§&#<§,"System","Clears the stored command history");
                                 loop7:
                                 while(true)
                                 {
                                    this.§0#Q§("dock",this.§2@§,"System","Docks the console to either \'top\'(default) \'bottom\'/\'bot\' or \'window\'");
                                    loop8:
                                    while(true)
                                    {
                                       this.§0#Q§("maximizeConsole",this.§'#-§,"System","Sets console height to fill the screen");
                                       loop9:
                                       while(true)
                                       {
                                          this.§0#Q§("minimizeConsole",this.§0"<§,"System","Sets console height to 1");
                                          loop10:
                                          while(true)
                                          {
                                             this.§0#Q§("setRepeatFilter",this.setRepeatFilter,"System","Sets the repeat message filter; 0 - Stack, 1 - Ignore, 2 - Passthrough");
                                             loop11:
                                             while(!_loc1_)
                                             {
                                                this.§0#Q§("repeat",this.§&9§,"System","Repeats command string X Y times");
                                                while(true)
                                                {
                                                   this.§%C§(new §7#,§("resetConsole",this.resetConsole,"System","Resets and clears the console"),false);
                                                   while(true)
                                                   {
                                                      if(Capabilities.isDebugger)
                                                      {
                                                         while(!_loc1_)
                                                         {
                                                            this.§""W§("\tDebugplayer commands added",§+!,§.§>y§);
                                                            while(true)
                                                            {
                                                               this.§0#Q§("gc",System.gc,"Debugplayer","Forces a garbage collection cycle");
                                                               addr452:
                                                               while(_loc2_ || _loc1_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Capabilities.playerType == "StandAlone");
                                                                     addr440:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr443:
                                                                              do
                                                                              {
                                                                                 §§push(Capabilities.playerType == "External");
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                              while(!_loc1_);
                                                                              
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§""W§("\tProjector commands added",§+!,§.§>y§);
                                                                                 addr432:
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    this.§0#Q§("quitapp",this.§ #G§,"Projector","Quit the application");
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              addr427:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§0#Q§("plugins",this.§?"z§.§#Y§,"Plugins","Lists enabled plugin information");
                                                                              continue loop10;
                                                                              §§goto(addr410);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                         addr464:
                                                      }
                                                      §§goto(addr435);
                                                   }
                                                   loop39:
                                                   for(; _loc2_ || _loc2_; while(true)
                                                   {
                                                      if(_loc1_ && _loc1_)
                                                      {
                                                         continue loop39;
                                                      }
                                                      §§goto(addr148);
                                                   },§§goto(addr452))
                                                   {
                                                      this.§0#Q§("methods",this.§-"x§.§`!3§,"Introspection","Get available methods in the current scope");
                                                      loop40:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  this.§0#Q§("updateScope",this.§-"x§.updateScope,"Introspection","Gets changes to the current scope tree");
                                                                  continue loop2;
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop10;
                                                         }
                                                         loop37:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && this))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  this.§0#Q§("complex",this.§-"x§.§>#F§,"Introspection","Get available complex variables in the current scope");
                                                                  loop38:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        break loop37;
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        this.§0#Q§("scopes",this.§-"x§.§?!p§,"Introspection","List available scopes in the current scope");
                                                                        continue loop39;
                                                                     }
                                                                     continue loop5;
                                                                     addr108:
                                                                     if(!(_loc1_ && this))
                                                                     {
                                                                        loop46:
                                                                        while(true)
                                                                        {
                                                                           this.§0#Q§("clearReference",this.§-"_§.§0"&§,"Referencing","Clears the specified reference");
                                                                           addr73:
                                                                           addr125:
                                                                           for(; !(_loc1_ && _loc2_); this.§0#Q§("loadTheme",this.§ !'§.load,"Theme","Loads theme xml from urls; [x] theme [y] color table"),if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           },addr45:,if(_loc2_ || this)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop39;
                                                                              }
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr56:
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    break loop46;
                                                                                 }
                                                                                 addr302:
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    this.§0#Q§("children",this.§-"x§.§,#F§,"Introspection","Get available children in the current scope");
                                                                                    §§goto(addr278);
                                                                                    §§goto(addr56);
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr174:
                                                                              addr384:
                                                                              while(_loc2_)
                                                                              {
                                                                                 this.§0#Q§("getReference",this.§-"_§.§4#A§,"Referencing","Stores a weak reference to the specified scope in the specified id (getReference scopename 1)");
                                                                                 continue loop39;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§0#Q§("search",this.§[!x§,"Utility","Searches the current log for a string and scrolls to the first matching line");
                                                                              }
                                                                              §§goto(addr372);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr99:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_ && _loc2_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop40;
                                                                                 }
                                                                                 §§goto(addr108);
                                                                                 §§goto(addr45);
                                                                              }
                                                                              continue loop38;
                                                                              addr99:
                                                                           })
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr82:
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§%C§(this.§[j§);
                                                                                    addr347:
                                                                                    addr372:
                                                                                    while(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       this.§%C§(this.§+"r§);
                                                                                       while(_loc2_ || _loc1_)
                                                                                       {
                                                                                          this.§%C§(this.§!!T§);
                                                                                          while(true)
                                                                                          {
                                                                                             this.§%C§(this.§-#O§);
                                                                                             break loop40;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       this.§0#Q§("toClipboard",this.§%#O§,"Utility","Takes value X and puts it in the system clipboard (great for grabbing command XML output)");
                                                                                       continue loop29;
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    this.§0#Q§("variables",this.§-"x§.§3"0§,"Introspection","Get available simple variables in the current scope");
                                                                                    continue loop37;
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           while(_loc2_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 this.§0#Q§("clearAllReferences",this.§-"_§.§+"D§,"Referencing","Clears all stored references");
                                                                                 §§goto(addr99);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr432);
                                                                              }
                                                                           }
                                                                           §§goto(addr328);
                                                                        }
                                                                        return;
                                                                        addr115:
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr314:
                                                            while(true)
                                                            {
                                                               this.§0#Q§("parent",this.§-"x§.up,"Introspection","(if the current scope is a display object) changes scope to the parent object");
                                                               §§goto(addr302);
                                                               continue loop37;
                                                            }
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            this.§0#Q§("root",this.§-"x§.§<"r§,"Introspection","Selects the stage as the current introspection scope");
                                                            §§goto(addr314);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr464);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function setMasterKey(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != Keyboard.ENTER)
            {
               do
               {
                  this.§2!$§ = param1;
               }
               while(!_loc2_);
               
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         throw new Error("The master key can not be the enter key");
      }
      
      private function §2@§(param1:String = "top") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         var _loc2_:* = param1;
         if(!_loc3_)
         {
            if("bot" === _loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr163);
               }
               else
               {
                  §§goto(addr124);
               }
            }
            else if("bottom" === _loc2_)
            {
               if(!_loc3_)
               {
                  §§push(1);
                  if(_loc3_ && param1)
                  {
                     §§goto(addr141);
                  }
               }
               else
               {
                  addr138:
                  §§push(3);
                  if(!_loc3_)
                  {
                     §§goto(addr141);
                  }
               }
            }
            else
            {
               if("none" === _loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr124:
                     §§push(2);
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
               }
               else if("window" === _loc2_)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr138);
                  }
               }
               else if("top" !== _loc2_)
               {
                  addr163:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        dock(§+"j§);
                        addr45:
                        break;
                        addr58:
                     case 2:
                     case 3:
                        dock(§!!@§);
                        break;
                        addr51:
                     case 4:
                     default:
                        dock(§<!g§);
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr45);
                           }
                           else
                           {
                              §§goto(addr51);
                           }
                        }
                  }
                  return;
                  §§push(5);
               }
               §§goto(addr163);
               if(_loc3_)
               {
               }
            }
            §§goto(addr163);
         }
         §§goto(addr124);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(_loc2_)
               {
                  §§push(this.view);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().output);
                     addr109:
                     addr67:
                     while(true)
                     {
                        §§push(this.view.output.§%#C§);
                        addr113:
                        while(true)
                        {
                           §§push(!§§pop());
                           addr114:
                           while(true)
                           {
                              §§pop().§%#C§ = §§pop();
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           continue loop0;
                        }
                        §§push(§§pop().output);
                        loop7:
                        while(true)
                        {
                           §§push(§6"§.§^p§(param1));
                           if(!_loc3_)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§pop().§%#C§ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr90:
                                       while(true)
                                       {
                                          §§push(this.view);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop().output);
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§pop().update();
                                                if(_loc2_ || param1)
                                                {
                                                   return;
                                                   addr61:
                                                }
                                                continue loop8;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                          §§goto(addr90);
                                       }
                                       §§goto(addr109);
                                       addr23:
                                    }
                                    addr115:
                                    while(true)
                                    {
                                       §§goto(addr23);
                                    }
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr114);
                        }
                     }
                  }
               }
               §§goto(addr115);
            }
            else
            {
               §§push(this.view);
            }
            §§goto(addr67);
         }
         §§goto(addr61);
      }
      
      private function resetConsole() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.persistence.clearAll();
         }
         loop0:
         while(true)
         {
            this.view.§`_§ = this.persistence.verticalSplitRatio.value;
            while(true)
            {
               this.§=_§();
               loop2:
               while(true)
               {
                  §§push(this.§-!z§);
                  loop3:
                  while(true)
                  {
                     §§pop().§^"%§.clear();
                     addr72:
                     while(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                     continue loop2;
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr66);
            }
         }
      }
      
      private function about() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §"#L§("Doomsday Console II");
            loop0:
            while(true)
            {
               §§push(§§findproperty(§"#L§));
               §§push("\t\tversion " + §[#U§.§;!D§);
               if(!_loc1_)
               {
                  §§push(§§pop() + ".");
                  if(!_loc1_)
                  {
                     addr87:
                     §§push(§§pop() + §[#U§.§["d§);
                  }
                  §§pop().§"#L§(§§pop());
                  while(true)
                  {
                     §"#L§("\t\thttp://doomsdayconsole.googlecode.com");
                     while(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           §"#L§("\t\tconcept and development by www.doomsday.no & www.furusystems.com");
                           if(_loc2_ || _loc1_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  addr91:
               }
               §§goto(addr87);
            }
         }
         §§goto(addr91);
      }
      
      private function §^3§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!z§.§="Q§(new §%"4§(param1));
         }
      }
      
      public function §[!x§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§-!z§.§[!x§(param1));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            if(_loc2_ <= -1)
            {
               §4E§("Not found");
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc3_ && _loc3_)
                  {
                     addr86:
                     this.output.§"#[§(_loc2_);
                     addr90:
                  }
                  return;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr86);
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§-!z§.§^"%§;
      }
      
      private function §%#O§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT,param1);
         }
      }
      
      private function §59§(param1:String) : Loader
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Loader = new Loader();
         if(_loc4_ || _loc3_)
         {
            _loc2_.load(new URLRequest(param1));
         }
         return _loc2_;
      }
      
      private function §&9§(param1:String, param2:int = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param2)
            {
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               this.§8j§(param1);
            }
            _loc3_++;
         }
      }
      
      public function select(param1:*) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var target:* = param1;
         if(!_loc6_)
         {
            §§push(this.§-"x§);
            if(!_loc6_)
            {
               if(§§pop().§0%§ == target)
               {
                  if(!_loc6_)
                  {
                     return;
                  }
               }
               §§goto(addr150);
            }
            §§pop().§1!%§(String(target));
         }
         addr150:
         try
         {
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(_loc7_)
            {
               try
               {
                  §-"_§.§9#R§(target);
               }
               catch(e:Error)
               {
                  if(!_loc6_)
                  {
                     try
                     {
                        if(typeof target == "string")
                        {
                           if(_loc7_ || _loc3_)
                           {
                           }
                        }
                        §-"x§.§4"i§(target);
                     }
                     catch(e:Error)
                     {
                        if(_loc7_)
                        {
                           §""W§("No such scope",§+!,§.ERROR);
                        }
                     }
                  }
                  throw new Error();
               }
               addr148:
            }
            §§goto(addr148);
         }
         this.§-"x§;
      }
      
      private function § !Z§(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1 != null)
            {
               this.§<,§(§6"§.§^p§(param1));
               if(!(_loc2_ && this))
               {
                  if(!_loc3_)
                  {
                     addr60:
                     §§push(this);
                     §§push(this.§]#A§);
                     if(!(_loc2_ && param1))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§<,§(§§pop());
                     addr82:
                  }
                  return;
               }
               §§goto(addr82);
            }
         }
         §§goto(addr60);
      }
      
      private function §?5§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = 14;
      }
      
      private function § #G§(param1:int = 0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            System.exit(param1);
         }
      }
      
      private function §+"Z§(param1:String = "") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != "")
            {
               §"#L§(this.§+u§.§'T§(param1));
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        addr80:
                        §"#L§(this.§+u§.§'T§("Basic instructions"));
                        §"#L§(this.§+u§.§,"n§());
                        addr86:
                        addr66:
                     }
                     return;
                  }
                  §§goto(addr86);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr80);
      }
      
      public function §8j§(param1:String, param2:Boolean = false) : *
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2)
            {
               if(!_loc3_)
               {
                  this.§""W§(param1,§+!,§.§-!J§);
               }
            }
         }
         return this.§+V§.§else §(param1);
      }
      
      private function §0!@§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && param1))
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc5_ || this)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           if(this.§@O§ != null)
                           {
                              if(_loc5_ || this)
                              {
                                 return;
                              }
                              break;
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(!(_loc4_ && this))
                              {
                                 addr94:
                                 §§pop().§§slot[2] = this.§+V§.§ `§(this.input.text);
                                 if(_loc5_)
                                 {
                                    addr105:
                                    §§push(§§newactivation());
                                    §§push(cmd.helpText);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr116:
                                       §§pop().§§slot[3] = §§pop();
                                       break;
                                    }
                                    §§goto(addr116);
                                 }
                                 break;
                              }
                              §§goto(addr105);
                           }
                           catch(e:Error)
                           {
                              var _loc3_:* = e;
                              if(_loc5_ || _loc2_)
                              {
                                 var helpText:String = "";
                              }
                              addr141:
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 §§push(§3@§.§4f§(this.input.text));
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       §§pop().§§slot[4] = §§pop();
                                       if(_loc5_ || param1)
                                       {
                                          §§push(_loc2_);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§pop().§§slot[4]);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop().§§slot[2]);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(§§pop() == this.§[j§)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  try
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        §§push(§4"K§.§;"h§(this.§-"x§.§0%§.§5#L§,secondElement));
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr235:
                                                                           §§push(§§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                           }
                                                                           addr343:
                                                                           §§pop().§§slot[3] = §§pop();
                                                                           addr342:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr375:
                                                                              addr376:
                                                                              addr377:
                                                                              if(helpText != "")
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr386:
                                                                                    §§push(this.assistant);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push("?\t" + cmd.trigger);
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + ": ");
                                                                                          if(_loc4_ && param1)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr424);
                                                                                       }
                                                                                       addr424:
                                                                                       §§pop().text = §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                       }
                                                                                       return;
                                                                                       §§push(§§pop() + helpText);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.assistant);
                                                                              }
                                                                              §§pop().clear();
                                                                              §§goto(addr424);
                                                                              addr346:
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§pop().§§slot[3] = §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr275:
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        §§push(cmd.helpText);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§pop().§§slot[3] = §§pop();
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                               try
                                                               {
                                                                  addr329:
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr332:
                                                                     §§push(§4"K§.§>!l§(this.§-"x§.§0%§.§5#L§,secondElement));
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr342);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  _loc3_ = e;
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(cmd.helpText);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     §§pop().§§slot[3] = §§pop();
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().§§slot[2]);
                                                                  if(!_loc5_)
                                                                  {
                                                                  }
                                                                  addr321:
                                                                  if(§§pop() == this.§+"r§)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() == this.§!!T§);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§pop();
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc5_)
                                                            {
                                                               addr317:
                                                               §§goto(addr321);
                                                               §§push(§§pop().§§slot[2]);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   §§goto(addr424);
                                                }
                                                §§goto(addr375);
                                             }
                                             §§goto(addr377);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr317);
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr94);
               }
               §§goto(addr105);
            }
            §§goto(addr141);
         }
         §§goto(addr105);
      }
      
      public function §4"i§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-"x§.§4"i§(param1);
         }
      }
      
      public function §0#Q§(param1:String, param2:Function, param3:String = "Application", param4:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§%C§(new §7#,§(param1,param2,param3,param4));
         }
      }
      
      public function §%C§(param1:§`#O§, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && param2))
         {
            §§pop().§§slot[1] = param1;
            if(!_loc5_)
            {
               addr34:
               var includeInHistory:Boolean = param2;
            }
            try
            {
               this.§+V§.§%C§(command,includeInHistory);
               if(!_loc5_)
               {
                  this.§2!a§.§<#T§(command.trigger);
               }
            }
            catch(e:ArgumentError)
            {
               §""W§(e.message,§+!,§.ERROR);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §=#I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+V§.§=#I§(param1);
         }
      }
      
      public function §]!,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§""W§("Event: " + param1.toString(),§+!,§.INFO);
         }
      }
      
      private function §6s§(param1:String, param2:String, param3:String) : Vector.<§@"c§>
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§@"c§ = null;
         var _loc9_:* = null;
         var _loc4_:Vector.<§@"c§> = new Vector.<§@"c§>();
         var _loc5_:Array;
         §§push((_loc5_ = param1.split("\n").join("\r").split("\r")).join("").length < 1);
         if(_loc11_)
         {
            if(§§pop())
            {
               if(_loc11_ || this)
               {
                  addr55:
                  §§pop();
                  if(!(_loc10_ && param1))
                  {
                     §§push(this.ignoreBlankLines);
                     if(_loc11_ || param1)
                     {
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr76);
               }
            }
            addr73:
            if(§§pop())
            {
               if(!_loc10_)
               {
                  addr76:
                  return _loc4_;
               }
            }
            var _loc6_:String = String(new Date().getTime());
            var _loc8_:int = 0;
            while(_loc8_ < _loc5_.length)
            {
               §§push(_loc5_[_loc8_]);
               if(_loc11_ || param2)
               {
                  §§push(_loc9_ = §§pop());
                  if(_loc11_)
                  {
                     §§push(§§pop().length < 1);
                     if(!(_loc10_ && param3))
                     {
                        §§push(§§pop());
                        if(!(_loc10_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§pop();
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(this.ignoreBlankLines);
                                    if(_loc11_)
                                    {
                                       addr147:
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc10_ && param1))
                                       {
                                          addr155:
                                          if(§§pop())
                                          {
                                             if(_loc11_)
                                             {
                                                addr158:
                                             }
                                             else
                                             {
                                                addr203:
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc9_);
                                             if(_loc11_ || param1)
                                             {
                                                addr167:
                                                §§push(§§pop().indexOf("com.furusystems.dconsole2") > -1);
                                                if(_loc11_ || param3)
                                                {
                                                   addr178:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         addr187:
                                                         §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            addr191:
                                                            §§push(_loc9_.indexOf("adobe.com/AS3") > -1);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc11_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr203);
                                                }
                                                else
                                                {
                                                   _loc7_ = new §@"c§(_loc9_,_loc6_,param2,param3);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      _loc4_.push(_loc7_);
                                                      addr222:
                                                      _loc8_++;
                                                      if(!(_loc11_ || this))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr222);
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr147);
                  }
               }
               §§goto(addr167);
            }
            return _loc4_;
         }
         §§goto(addr55);
      }
      
      public function §;Q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!z§.§="Q§(new §%"4§("",param1));
         }
      }
      
      public function §7"d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§-!z§.§="Q§(new §%"4§(param1));
         }
      }
      
      public function §'"P§(param1:String, param2:String, param3:String = "Info", param4:String = "") : void
      {
         var _loc5_:§ "R§ = this.§-!z§.§=N§(param1);
         var _loc6_:Vector.<§@"c§> = this.§6s§(param2,param3,param4);
      }
      
      public function §""W§(param1:String, param2:String = "Info", param3:String = "DConsole") : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:§ "R§ = null;
         var _loc7_:§@"c§ = null;
         var _loc9_:§,A§ = null;
         if(!(_loc12_ && param3))
         {
            §§push(param3 == §["w§);
            if(_loc13_ || param2)
            {
               §§push(!§§pop());
               if(!(_loc12_ && param3))
               {
                  if(§§pop())
                  {
                     if(!(_loc12_ && param3))
                     {
                        §§goto(addr60);
                     }
                  }
               }
               §§goto(addr73);
            }
            addr60:
            §§pop();
            if(!(_loc12_ && this))
            {
               addr68:
               §§push(this.§8"&§);
               if(_loc13_)
               {
                  addr73:
                  if(§§pop())
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr82);
               }
               §§goto(addr73);
            }
            addr74:
            §§push(this.§-!z§);
            if(!_loc12_)
            {
               _loc4_ = §§pop().§=N§(param3);
               addr82:
               §§push(this.§-!z§);
            }
            var _loc5_:§ "R§ = §§pop().§["2§;
            var _loc6_:Vector.<§@"c§> = this.§6s§(param1,param2,param3);
            var _loc8_:int = 0;
            loop0:
            while(_loc8_ < _loc6_.length)
            {
               _loc7_ = _loc6_[_loc8_];
               if(_loc13_ || param3)
               {
                  §§push(_loc5_.§%"v§);
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_ || param1)
                        {
                           §§push(_loc5_.§%"v§);
                           if(_loc13_ || this)
                           {
                              §§push(§§pop().text);
                              if(!_loc12_)
                              {
                                 §§push(_loc7_.text);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc12_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc12_ && param1))
                                             {
                                                §§pop();
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(_loc5_.§%"v§);
                                                   if(_loc13_ || this)
                                                   {
                                                      addr174:
                                                      §§push(§§pop().tag);
                                                      if(!_loc12_)
                                                      {
                                                         addr177:
                                                         §§push(_loc7_.tag);
                                                         if(!(_loc12_ && param3))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc13_ || param2)
                                                            {
                                                               addr194:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr198:
                                                                     §§pop();
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc5_.§%"v§);
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr205:
                                                                           §§push(§§pop().type);
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              §§push(_loc7_.type);
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr218:
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       §§push(this.§>!i§);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          var _loc10_:* = §§pop();
                                                                                          if(!(_loc12_ && param3))
                                                                                          {
                                                                                             §§push(§8"q§.§-"T§);
                                                                                             if(_loc13_ || param3)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!(_loc12_ && param3))
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc12_ && param3))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr366:
                                                                                                         §§push(1);
                                                                                                         if(!(_loc12_ && this))
                                                                                                         {
                                                                                                            addr374:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(§8"q§.§="'§);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr365:
                                                                                                         if(§§pop() === _loc10_)
                                                                                                         {
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr380:
                                                                                                   loop2:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         §§push(_loc5_.§%"v§);
                                                                                                         if(_loc13_ || param2)
                                                                                                         {
                                                                                                            §§push((_loc10_ = §§pop()).§%"T§);
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                            }
                                                                                                            var _loc11_:* = §§pop();
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               _loc10_.§%"T§ = _loc11_;
                                                                                                            }
                                                                                                            if(!(_loc12_ && param2))
                                                                                                            {
                                                                                                               addr303:
                                                                                                               _loc5_.§%"v§.timestamp = _loc7_.timestamp;
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  addr313:
                                                                                                                  do
                                                                                                                  {
                                                                                                                     _loc5_.§!"`§();
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        _loc4_.§!"`§();
                                                                                                                        if(_loc13_ || param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr388:
                                                                                                                        addr388:
                                                                                                                        §§push(_loc7_.type);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr392:
                                                                                                                           §§push(§+!,§.§-!J§);
                                                                                                                           if(!(_loc12_ && param2))
                                                                                                                           {
                                                                                                                              addr401:
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    addr408:
                                                                                                                                    addr406:
                                                                                                                                    if(_loc7_.type == §+!,§.ERROR)
                                                                                                                                    {
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       _loc9_ = §""A§.ERROR;
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr428:
                                                                                                                                       _loc5_.§8!"§(_loc7_);
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          addr433:
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          if(!(_loc13_ || param2))
                                                                                                                                          {
                                                                                                                                             addr442:
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          addr442:
                                                                                                                                          _loc4_.§8!"§(_loc7_);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§goto(addr442);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc9_ = §""A§.§;"a§;
                                                                                                                                    }
                                                                                                                                    this.§]"z§.§#!"§(_loc9_,_loc7_,this);
                                                                                                                                 }
                                                                                                                                 §§goto(addr442);
                                                                                                                              }
                                                                                                                              §§goto(addr428);
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  while(false);
                                                                                                                  
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                            §§goto(addr433);
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      case 1:
                                                                                                         break;
                                                                                                      default:
                                                                                                         §§goto(addr388);
                                                                                                   }
                                                                                                   _loc8_++;
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       §§goto(addr380);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr388);
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                           §§goto(addr392);
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr411);
                                             }
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr401);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr388);
                  }
                  §§goto(addr205);
               }
               §§goto(addr388);
            }
            if(_loc13_ || param1)
            {
               this.output.update();
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-!z§.§^"%§.clear();
            do
            {
               this.output.§["R§();
            }
            while(_loc1_);
            
         }
      }
      
      private function §;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stage.align = StageAlign.TOP_LEFT;
            while(true)
            {
               stage.scaleMode = StageScaleMode.NO_SCALE;
               while(_loc1_)
               {
                  this.§""W§("StageAlign set to TOP_LEFT, StageScaleMode set to NO_SCALE",§+!,§.§>y§);
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §2f§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;#U§ = Capabilities.playerType == "Desktop";
            loop0:
            while(true)
            {
               Logging.§<#$§ = new §8y§();
               addr223:
               while(true)
               {
                  §-#1§.§%!E§.§-!D§(stage);
                  continue loop0;
               }
            }
         }
         §§goto(addr194);
      }
      
      private function §=_§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7"E§.§="l§();
         }
         do
         {
            this.§;9§.resize();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function §?#4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Error = new Error();
         var _loc2_:String = _loc1_.getStackTrace();
         var _loc3_:Array = _loc2_.split("\n");
         if(_loc4_)
         {
            _loc3_.shift();
         }
         do
         {
            _loc2_ = "Stack trace: \n\t" + _loc3_.join("\n\t");
            do
            {
               this.§""W§(_loc2_,§+!,§.INFO);
            }
            while(_loc5_ && this);
            
         }
         while(!(_loc4_ || _loc1_));
         
      }
      
      private function §==§(param1:String, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : Vector.<String>
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:Vector.<String> = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc5_:Vector.<String> = new Vector.<String>();
         if(!(_loc13_ && param3))
         {
            if(param1.length < 1)
            {
               if(!(_loc13_ && param2))
               {
                  §§goto(addr50);
               }
            }
            var _loc6_:Boolean = false;
            var _loc8_:int = 4;
            if(_loc12_ || param2)
            {
               if(param4)
               {
                  addr65:
                  _loc7_ = this.§-"x§.§==§(param1,§7#C§.§@!^§);
                  _loc5_ = _loc5_.concat(_loc7_);
                  if(!_loc13_)
                  {
                     _loc9_ = "";
                     loop74:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           _loc10_ = §§pop();
                           addr243:
                           addr247:
                           while(_loc7_.length > 0)
                           {
                              continue loop74;
                           }
                           addr247:
                           addr239:
                           §§push(param3);
                           if(_loc12_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc12_ || param1)
                                 {
                                    _loc7_ = this.§+V§.§==§(param1);
                                    _loc5_ = _loc5_.concat(_loc7_);
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(0);
                                       loop0:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop1:
                                          while(true)
                                          {
                                             §§push("");
                                             loop2:
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc7_.length > 0)
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push("Commands matching \'" + param1);
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            §§push(§§pop() + "\'");
                                                         }
                                                         §§pop().§""W§(§§pop(),§+!,§.§>y§);
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr482:
                                                            addr338:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               addr483:
                                                               while(true)
                                                               {
                                                                  addr312:
                                                                  addr513:
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(!(_loc13_ && param3))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr425:
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        loop16:
                                                                        while(!_loc13_)
                                                                        {
                                                                           this.§""W§(_loc9_,§+!,§.INFO);
                                                                           while(true)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc12_ || param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           addr393:
                                                                           _loc9_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc13_ && param2))
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc11_++;
                                                                                    addr376:
                                                                                    while(_loc13_ && param3)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr410);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           addr410:
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  if(param2)
                                                                  {
                                                                     addr515:
                                                                     §§push(this.§-"x§);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(§7#C§.§]"h§);
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc7_ = §§pop().§==§(§§pop(),§§pop());
                                                                              _loc5_ = _loc5_.concat(_loc7_);
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("");
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_.length > 0)
                                                                                             {
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push("Scope accessors matching \'" + param1);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§push(§§pop() + "\'");
                                                                                                   }
                                                                                                   §§pop().§""W§(§§pop(),§+!,§.§>y§);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(§§pop() >= _loc7_.length)
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 if(_loc12_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push("");
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          loop42:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && param2))
                                                                                                                                             {
                                                                                                                                                this.§""W§(_loc9_,§+!,§.INFO);
                                                                                                                                                loop43:
                                                                                                                                                while(_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   loop46:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr542:
                                                                                                                                                      loop33:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = true;
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                         if(_loc13_ && param3)
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               if(true)
                                                                                                                                                               {
                                                                                                                                                                  break loop32;
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                            addr654:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               addr655:
                                                                                                                                                               while(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                               }
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§""W§(_loc9_,§+!,§.INFO);
                                                                                                                                                            addr640:
                                                                                                                                                            while(_loc12_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push("");
                                                                                                                                                               if(!(_loc13_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr616:
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  break loop43;
                                                                                                                                                               }
                                                                                                                                                               addr674:
                                                                                                                                                               while(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                     addr678:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc10_++;
                                                                                                                                                                           break loop33;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop27;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                      addr661:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            while(!_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() <= _loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr604:
                                                                                                                                                                  _loc11_++;
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr654);
                                                                                                                                                            }
                                                                                                                                                            continue loop30;
                                                                                                                                                            addr650:
                                                                                                                                                         }
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc13_ && param3))
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr678);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr640);
                                                                                                                                                   §§goto(addr616);
                                                                                                                                                }
                                                                                                                                                §§goto(addr604);
                                                                                                                                             }
                                                                                                                                             §§goto(addr661);
                                                                                                                                          }
                                                                                                                                          addr587:
                                                                                                                                       }
                                                                                                                                       §§goto(addr542);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr673:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr668:
                                                                                                                                    §§push(_loc7_[_loc11_] + " ");
                                                                                                                                 }
                                                                                                                                 §§goto(addr673);
                                                                                                                              }
                                                                                                                              §§goto(addr677);
                                                                                                                           }
                                                                                                                           §§goto(addr604);
                                                                                                                        }
                                                                                                                        §§goto(addr587);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                     }
                                                                                                                     §§goto(addr668);
                                                                                                                  }
                                                                                                                  §§goto(addr650);
                                                                                                               }
                                                                                                               §§goto(addr655);
                                                                                                            }
                                                                                                            addr709:
                                                                                                            _loc7_ = this.§-"x§.§==§(param1,§7#C§.§<"_§);
                                                                                                            _loc5_ = _loc5_.concat(_loc7_);
                                                                                                            if(_loc12_ || param3)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop47:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  loop48:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push("");
                                                                                                                     loop49:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        addr927:
                                                                                                                        while(_loc7_.length > 0)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push("Children matching \'" + param1);
                                                                                                                              if(_loc12_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + "\'");
                                                                                                                              }
                                                                                                                              §§pop().§""W§(§§pop(),§+!,§.§>y§);
                                                                                                                              loop52:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop53:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    loop54:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop55:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(_loc12_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc12_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                                continue loop53;
                                                                                                                                             }
                                                                                                                                             loop60:
                                                                                                                                             while(§§pop() > _loc8_)
                                                                                                                                             {
                                                                                                                                                loop61:
                                                                                                                                                while(_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop62:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                      addr853:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc12_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break loop62;
                                                                                                                                                         }
                                                                                                                                                         this.§""W§(_loc9_,§+!,§.INFO);
                                                                                                                                                         loop63:
                                                                                                                                                         while(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push("");
                                                                                                                                                            if(!(_loc13_ && param2))
                                                                                                                                                            {
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc13_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop60;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop61;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop63;
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            continue loop49;
                                                                                                                                                         }
                                                                                                                                                         continue loop52;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop54;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop60;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc11_++;
                                                                                                                                                continue loop55;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr852);
                                                                                                                                       }
                                                                                                                                       continue loop48;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr730:
                                                                                                                        return _loc5_;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr784);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr709);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr603);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr709);
                                                               }
                                                            }
                                                            if(!(_loc12_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc9_);
                                                            if(_loc12_ || this)
                                                            {
                                                               §§push("");
                                                               if(_loc13_ && this)
                                                               {
                                                                  addr462:
                                                                  §§push(§§pop() + §§pop());
                                                                  continue loop2;
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§""W§(_loc9_,§+!,§.INFO);
                                                                        loop20:
                                                                        while(!_loc13_)
                                                                        {
                                                                           addr373:
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = true;
                                                                              if(!(_loc12_ || param1))
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(_loc13_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!(_loc13_ && param2))
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr472:
                                                                                 while(!(_loc13_ && param3))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_++;
                                                                                       break loop10;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              §§goto(addr394);
                                                                              §§goto(addr373);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() > _loc8_)
                                                                                 {
                                                                                    §§goto(addr424);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr425);
                                                                           }
                                                                           §§goto(addr482);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr431);
                                                                  }
                                                                  continue loop1;
                                                                  addr362:
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            else
                                                            {
                                                               addr471:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                               }
                                                               addr471:
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr513);
                                                   }
                                                   §§goto(addr513);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr479);
                                 }
                                 §§goto(addr515);
                              }
                           }
                           §§goto(addr513);
                           while(true)
                           {
                              §§push(0);
                              if(!_loc12_)
                              {
                                 break;
                              }
                              _loc11_ = §§pop();
                              if(_loc13_)
                              {
                                 continue;
                              }
                              if(_loc13_)
                              {
                                 continue loop74;
                              }
                              if(_loc12_)
                              {
                                 loop80:
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    if(_loc12_ || param2)
                                    {
                                       if(§§pop() >= _loc7_.length)
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(_loc9_);
                                                if(!_loc13_)
                                                {
                                                   §§push("");
                                                   if(_loc12_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         loop91:
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               this.§""W§(_loc9_,§+!,§.INFO);
                                                               loop92:
                                                               while(true)
                                                               {
                                                                  addr81:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = true;
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue loop92;
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue loop91;
                                                                     }
                                                                     if(!(_loc12_ || param1))
                                                                     {
                                                                        loop83:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr203:
                                                                              while(true)
                                                                              {
                                                                                 _loc10_++;
                                                                                 loop85:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(§§pop() <= _loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr177:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             continue loop85;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr177);
                                                                                 }
                                                                                 continue loop83;
                                                                              }
                                                                           }
                                                                           addr155:
                                                                           while(true)
                                                                           {
                                                                              continue loop83;
                                                                           }
                                                                        }
                                                                        continue loop80;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop80;
                                                                     }
                                                                     §§goto(addr247);
                                                                     continue loop92;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  addr169:
                                                                  §§push("");
                                                                  if(_loc12_ || this)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     §§goto(addr155);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                        }
                                                                        §§goto(addr169);
                                                                     }
                                                                     addr201:
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               §§goto(addr178);
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         addr130:
                                                      }
                                                      §§goto(addr81);
                                                   }
                                                   else
                                                   {
                                                      addr200:
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr130);
                                       }
                                       else
                                       {
                                          §§push(_loc9_);
                                          if(!_loc13_)
                                          {
                                             §§goto(addr200);
                                             §§push(_loc7_[_loc11_] + " ");
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr177);
                                 }
                              }
                              else
                              {
                                 §§goto(addr243);
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push("Scope methods matching \'" + param1);
                     if(_loc12_)
                     {
                        §§push(§§pop() + "\'");
                     }
                     §§pop().§""W§(§§pop(),§+!,§.§>y§);
                     §§goto(addr239);
                  }
               }
               §§goto(addr247);
            }
            §§goto(addr65);
         }
         addr50:
         return _loc5_;
      }
      
      private function get §2!8§() : Vector.<§@"c§>
      {
         return this.§-!z§.§^"%§.§0!G§;
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               loop0:
               while(!this.visible)
               {
                  if(!(_loc1_ && this))
                  {
                     if(_loc1_ && _loc1_)
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     this.toggleDisplay();
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  addr69:
                  return;
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr70);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(stage)
            {
               loop0:
               while(this.visible)
               {
                  if(!_loc1_)
                  {
                     this.toggleDisplay();
                  }
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr64:
                     return;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr65);
      }
      
      override public function get visible() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4!U§ = param1;
            while(true)
            {
               if(!this.§4!U§)
               {
                  §§push(this.view);
                  if(!_loc3_)
                  {
                     §§pop().hide();
                     §§goto(addr24);
                  }
                  break;
               }
               addr84:
               this.§?"§.visible = true;
            }
            §§pop().show();
            addr24:
            if(_loc2_)
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue loop0;
                  }
                  §§goto(addr84);
               }
               §§push(this.view);
               break loop0;
               addr88:
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function set isVisible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=B§ = param1;
         }
         do
         {
            super.visible = this.§=B§;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get isVisible() : Boolean
      {
         return this.§=B§;
      }
      
      public function toggleDisplay() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc4_ && _loc1_))
         {
            if(this.lock.locked)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
            else
            {
               §§push(this);
               §§push(this.visible);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(!§§pop());
               }
               §§pop().visible = §§pop();
            }
         }
         var _loc2_:Rectangle = this.§!!1§.rect;
         if(_loc3_)
         {
            §§push(this.visible);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  this.§5#W§();
                  loop0:
                  for(; !(_loc4_ && _loc3_); if(!(_loc3_ || _loc1_))
                  {
                     continue;
                  },if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 addr59:
                                 return;
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr174);
                     }
                     while(true)
                     {
                        §§goto(addr146);
                     }
                     addr157:
                  },§§goto(addr151))
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 this.§;""§();
                                 while(true)
                                 {
                                    §§push(this.§]"z§);
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§pop().§#!"§(§""A§.§]! §,null,this);
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§#!"§(§""A§.§+!@§,null,this);
                                    addr151:
                                    addr153:
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.initialize();
                                          addr211:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr59);
                                 }
                                 addr146:
                              }
                              else
                              {
                                 addr206:
                                 if(!this.§!"8§)
                                 {
                                    §§goto(addr209);
                                 }
                              }
                              while(true)
                              {
                                 if(parent)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       parent.addChild(this);
                                       addr185:
                                       while(true)
                                       {
                                          continue loop13;
                                       }
                                    }
                                    addr182:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    this.§+!R§();
                                    addr178:
                                    while(true)
                                    {
                                       §§push(this.input);
                                       while(true)
                                       {
                                          §§pop().focus();
                                          addr174:
                                          while(true)
                                          {
                                             §§push(this.input);
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             §§pop().text = "";
                                             while(true)
                                             {
                                                this.§0!@§();
                                                break loop0;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr169);
                  }
                  while(true)
                  {
                     this.§'#S§();
                     §§goto(addr157);
                  }
               }
            }
            §§goto(addr206);
         }
         §§goto(addr153);
      }
      
      private function §5#W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(parent)
            {
               if(_loc3_ || this)
               {
                  parent.tabChildren = parent.tabEnabled = this.§##a§;
                  addr38:
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §+!R§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(parent)
            {
               if(_loc2_ || _loc3_)
               {
                  addr37:
                  this.§##a§ = parent.tabChildren;
                  if(_loc2_)
                  {
                     parent.tabChildren = parent.tabEnabled = false;
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!"8§ = true;
            loop0:
            do
            {
               §§push(this.§ !'§);
               if(_loc1_)
               {
                  if(!§§pop().§+"S§)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §§push(this.§ !'§);
                           addr73:
                           while(true)
                           {
                              §§pop().load();
                           }
                        }
                        addr71:
                     }
                     loop1:
                     while(true)
                     {
                        addr28:
                        while(true)
                        {
                           this.§7"E§.§="l§();
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr28);
               }
               §§goto(addr73);
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr71);
      }
      
      override public function get height() : Number
      {
         return this.§7"E§.height;
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7"E§.height = param1;
         }
      }
      
      override public function get width() : Number
      {
         return this.§7"E§.rect.width;
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7"E§.width = param1;
         }
      }
      
      public function §<,§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§]#A§ = param1;
            do
            {
               this.§""W§("Quick-searching: " + this.§]#A§,§+!,§.§>y§);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §'#-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               do
               {
                  this.§7"E§.§'#-§();
               }
               while(_loc1_);
               
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §0"<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7"E§.§0"<§();
         }
      }
      
      private function § "O§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §-#1§.§%!E§.§^!5§(param1);
            loop0:
            while(true)
            {
               §§push(this.visible);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        _loc2_ = "";
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(param1.keyCode != Keyboard.UP)
                                 {
                                    if(param1.keyCode == Keyboard.DOWN)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(param1.shiftKey)
                                             {
                                                break;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§!!1§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop().§set §());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                            }
                                                            addr272:
                                                         }
                                                         else
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop14:
                                                               while(_loc6_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              addr199:
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       addr27:
                                                                                       addr27:
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ || _loc2_))
                                                                                          {
                                                                                             continue loop33;
                                                                                          }
                                                                                          §§push(this.input);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().text = _loc2_;
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§push(this.input);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().focus();
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.input);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().text);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     §§push(int(§§pop().indexOf(" ")));
                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr127:
                                                                                                                           §§push(-1);
                                                                                                                        }
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           §§push(this.input);
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§`!N§.setSelection(this.input.text.indexOf(" ") + 1,this.input.text.length);
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop26:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§0!@§();
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       addr247:
                                                                                                                                       while(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       §§goto(addr272);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr97:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr295:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§-#8§());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr143:
                                                                                                                              if(!(_loc6_ || _loc3_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.input);
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           if(!(_loc6_ || _loc3_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!param1.shiftKey)
                                                                                                                                 {
                                                                                                                                    break loop20;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              return;
                                                                                                                              addr290:
                                                                                                                           }
                                                                                                                           §§goto(addr143);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr127);
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop32;
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr293:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr295);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop33;
                                                                                    }
                                                                                    continue loop31;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr199);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                §§goto(addr295);
                                             }
                                          }
                                          §§goto(addr293);
                                       }
                                       return;
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr290);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr27);
               }
            }
         }
         §§goto(addr307);
      }
      
      private function § !h§(param1:KeyboardEvent) : §4]§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(false);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(false);
                     loop4:
                     while(!_loc6_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr628:
                           addr343:
                           while(true)
                           {
                              §§pop().§§slot[6] = null;
                              addr631:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop3;
                              }
                           }
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           addr350:
                           loop43:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop44:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(§§pop().§§slot[1].keyCode != Keyboard.ESCAPE)
                                          {
                                             loop45:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop().§§slot[1].shiftKey)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop().§§slot[1].keyCode;
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(Keyboard.UP === _loc3_)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr719:
                                                                                                switch(§§pop())
                                                                                                {
                                                                                                   case 0:
                                                                                                      §§push(this.output);
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr188:
                                                                                                         §§pop().scroll(1);
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[2]);
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     §§pop().§<W§ = §§pop();
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           addr939:
                                                                                                                           §§push(true);
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§pop().§<W§ = §§pop();
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(this.input);
                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop().text.length >= 1)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr874:
                                                                                                                                          §§pop().§§slot[4] = false;
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr860:
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§pop().§§slot[5] = §§pop();
                                                                                                                                                         addr868:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§§slot[6] = "";
                                                                                                                                                            if(!(_loc6_ && param1))
                                                                                                                                                            {
                                                                                                                                                               this.§""W§(this.input.text,§+!,§.§-!J§);
                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr755:
                                                                                                                                                                     §§push(this.§@O§);
                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(null);
                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 this.§@O§(this.input.text);
                                                                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr745:
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§§slot[4] = §§pop();
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr755);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1143:
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§§slot[5]);
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1163:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1171:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1580:
                                                                                                                                                                                                                     addr1579:
                                                                                                                                                                                                                     §§push(this.§+!N§ == null);
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1584:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1596:
                                                                                                                                                                                                                        var ret:* = this.§+!N§(this.input.text);
                                                                                                                                                                                                                        addr1568:
                                                                                                                                                                                                                        if(ret)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1570:
                                                                                                                                                                                                                           this.§""W§(ret,§+!,§.INFO);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1552:
                                                                                                                                                                                                                        this.output.§6!P§();
                                                                                                                                                                                                                        addr1553:
                                                                                                                                                                                                                        addr1603:
                                                                                                                                                                                                                        addr1595:
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1547:
                                                                                                                                                                                                                           this.input.clear();
                                                                                                                                                                                                                           this.§0!@§();
                                                                                                                                                                                                                           addr1531:
                                                                                                                                                                                                                           out.§<W§ = true;
                                                                                                                                                                                                                           addr1543:
                                                                                                                                                                                                                           addr1530:
                                                                                                                                                                                                                           addr1529:
                                                                                                                                                                                                                           addr1548:
                                                                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1175:
                                                                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1181:
                                                                                                                                                                                                                                    §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1444:
                                                                                                                                                                                                                                                §§pop().§<W§ = true;
                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1456:
                                                                                                                                                                                                                                                         §§goto(addr1175);
                                                                                                                                                                                                                                                         addr1456:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1570);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1553);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1543);
                                                                                                                                                                                                                                                addr1443:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1195);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1391:
                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1394:
                                                                                                                                                                                                                                             §§pop().§<W§ = §§pop();
                                                                                                                                                                                                                                             addr1395:
                                                                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1175);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1603);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1444);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1296:
                                                                                                                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1304:
                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().§<W§ = §§pop();
                                                                                                                                                                                                                                                addr1314:
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1175);
                                                                                                                                                                                                                                                      addr1318:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1430:
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1376:
                                                                                                                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1461:
                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1390:
                                                                                                                                                                                                                                                               §§goto(addr1391);
                                                                                                                                                                                                                                                               §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(§§pop().§§slot[1].keyCode == Keyboard.PAGE_UP)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1466:
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1470:
                                                                                                                                                                                                                                                                  addr1468:
                                                                                                                                                                                                                                                                  §§push(this.output);
                                                                                                                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1523:
                                                                                                                                                                                                                                                                     addr1524:
                                                                                                                                                                                                                                                                     addr1479:
                                                                                                                                                                                                                                                                     addr1477:
                                                                                                                                                                                                                                                                     §§push(this.output);
                                                                                                                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1487:
                                                                                                                                                                                                                                                                        §§pop().scroll(§§pop().numLines);
                                                                                                                                                                                                                                                                        §§goto(addr1443);
                                                                                                                                                                                                                                                                        §§push(out);
                                                                                                                                                                                                                                                                        addr1488:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().scroll(-§§pop().numLines);
                                                                                                                                                                                                                                                                     §§push(out);
                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1500:
                                                                                                                                                                                                                                                                        §§pop().§<W§ = true;
                                                                                                                                                                                                                                                                        §§goto(addr1175);
                                                                                                                                                                                                                                                                        addr1501:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1530);
                                                                                                                                                                                                                                                                     addr1526:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1523);
                                                                                                                                                                                                                                                                     §§push(this.output);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1552);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1526);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1407:
                                                                                                                                                                                                                                                            if(e.keyCode == Keyboard.HOME)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1415:
                                                                                                                                                                                                                                                               §§push(this.output);
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().scrollIndex = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr1430);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1524);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1487);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(e.keyCode == Keyboard.END)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1328:
                                                                                                                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1335:
                                                                                                                                                                                                                                                                  §§push(this.output);
                                                                                                                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1346:
                                                                                                                                                                                                                                                                        §§push(this.output);
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().§1"x§);
                                                                                                                                                                                                                                                                           if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1358:
                                                                                                                                                                                                                                                                              §§pop().scrollIndex = §§pop();
                                                                                                                                                                                                                                                                              addr1359:
                                                                                                                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1287:
                                                                                                                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1295:
                                                                                                                                                                                                                                                                                                §§goto(addr1296);
                                                                                                                                                                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1529);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1523);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1407);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1376);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1543);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1501);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1415);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1479);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1470);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1415);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1466);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1218:
                                                                                                                                                                                                                                                                     if(§§pop().§§slot[1].keyCode == Keyboard.SPACE)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc5_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1247:
                                                                                                                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1250:
                                                                                                                                                                                                                                                                                       §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().§<W§ = §§pop();
                                                                                                                                                                                                                                                                                             addr1266:
                                                                                                                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1284:
                                                                                                                                                                                                                                                                                                         §§goto(addr1175);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1595);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1444);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1328);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1314);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1500);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1304);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1407);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1517:
                                                                                                                                                                                                                                                                                 §§goto(addr1470);
                                                                                                                                                                                                                                                                                 §§push(this.output);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1415);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1395);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1266);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1175);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1596);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1505:
                                                                                                                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop().§§slot[1].keyCode == Keyboard.PAGE_DOWN)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1517);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1461);
                                                                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1568);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1287);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1487);
                                                                                                                                                                                                                                                         addr1439:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1548);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1488);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1359);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1531);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1391);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1523);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1250);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1461);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1247);
                                                                                                                                                                                                                              addr1539:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1570);
                                                                                                                                                                                                                        addr1549:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§""W§(errorMessage,§+!,§.ERROR);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1549);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1456);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1584);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1390);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1439);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr860);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1001:
                                                                                                                                                                                          §§pop().§§slot[4] = §§pop();
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1004:
                                                                                                                                                                                             §§goto(addr1143);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1335);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr936);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1295);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1468);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1570);
                                                                                                                                                                           }
                                                                                                                                                                           try
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§§slot[7] = this.§8j§(this.input.text);
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1001);
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1523);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1531);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           catch(error:§9j§)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = error;
                                                                                                                                                                              §§goto(addr1143);
                                                                                                                                                                           }
                                                                                                                                                                           catch(error:ArgumentError)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = error;
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 var _loc4_:* = error.message;
                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1073:
                                                                                                                                                                                    if(§8#O§.§?",§ !== _loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                    }
                                                                                                                                                                                    switch(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       case 0:
                                                                                                                                                                                          var passToDefault:Boolean = true;
                                                                                                                                                                                    }
                                                                                                                                                                                    var errorMessage:String = error.message;
                                                                                                                                                                                    §§goto(addr1143);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1073);
                                                                                                                                                                           }
                                                                                                                                                                           catch(error:§>"K§)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = error;
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§§slot[5] = true;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1115:
                                                                                                                                                                                 §§pop().§§slot[6] = error.message;
                                                                                                                                                                                 §§goto(addr1143);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1115);
                                                                                                                                                                           }
                                                                                                                                                                           catch(error:Error)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = error;
                                                                                                                                                                              §""W§(error.message,§+!,§.ERROR);
                                                                                                                                                                              §§goto(addr1143);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1390);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1580);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1579);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1456);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1596);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1181);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr874);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr905:
                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr913);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1391);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1487);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1284);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1461);
                                                                                                                                    }
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr905);
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1004);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1390);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1547);
                                                                                                                              }
                                                                                                                              §§goto(addr1004);
                                                                                                                           }
                                                                                                                           §§goto(addr1394);
                                                                                                                        }
                                                                                                                        §§goto(addr1250);
                                                                                                                     }
                                                                                                                     §§goto(addr1539);
                                                                                                                  }
                                                                                                                  §§goto(addr1444);
                                                                                                               }
                                                                                                               addr913:
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            §§goto(addr1181);
                                                                                                         }
                                                                                                         §§goto(addr868);
                                                                                                      }
                                                                                                      §§goto(addr1346);
                                                                                                   case 1:
                                                                                                      §§push(this.output);
                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(-1);
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§pop().scroll(§§pop());
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr50:
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     §§push(true);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().§<W§ = §§pop();
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr50);
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr939);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr1517);
                                                                                                                     }
                                                                                                                     §§goto(addr1444);
                                                                                                                  }
                                                                                                                  §§goto(addr745);
                                                                                                               }
                                                                                                               §§goto(addr1547);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr188);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1358);
                                                                                                      }
                                                                                                      §§goto(addr1477);
                                                                                                   case 2:
                                                                                                      addr951:
                                                                                                      break;
                                                                                                   case 3:
                                                                                                      §§goto(addr951);
                                                                                                   default:
                                                                                                      §§goto(addr951);
                                                                                                }
                                                                                                §§push(e.keyCode == Keyboard.ENTER);
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(stage.focus == this.input.§`!N§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr931:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr936:
                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr939);
                                                                                                                        }
                                                                                                                        addr1195:
                                                                                                                        return §§pop();
                                                                                                                        §§push(§§newactivation());
                                                                                                                     }
                                                                                                                     §§goto(addr1456);
                                                                                                                  }
                                                                                                                  §§goto(addr1505);
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§goto(addr1171);
                                                                                                            }
                                                                                                            §§goto(addr1318);
                                                                                                         }
                                                                                                         §§goto(addr1171);
                                                                                                      }
                                                                                                      §§goto(addr931);
                                                                                                   }
                                                                                                   §§goto(addr1163);
                                                                                                }
                                                                                                §§goto(addr1171);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr688:
                                                                                             §§push(1);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr719);
                                                                                       }
                                                                                       else if(Keyboard.DOWN === _loc3_)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr688);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr703:
                                                                                             §§push(2);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr719);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(Keyboard.LEFT === _loc3_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr703);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr711:
                                                                                                §§push(3);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr714);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else if(Keyboard.RIGHT === _loc3_)
                                                                                          {
                                                                                             §§goto(addr711);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(4);
                                                                                          }
                                                                                          §§goto(addr711);
                                                                                       }
                                                                                       §§goto(addr719);
                                                                                    }
                                                                                    §§goto(addr711);
                                                                                 }
                                                                                 §§goto(addr1218);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr526:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop().§§slot[2]);
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    addr531:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§<W§ = §§pop();
                                                                                       continue loop35;
                                                                                    }
                                                                                 }
                                                                                 addr530:
                                                                              }
                                                                           }
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§§slot[2]);
                                                                                 loop36:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§7!y§());
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§^"C§ = §§pop();
                                                                                       loop38:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   addr479:
                                                                                                   if(_loc6_ && param1)
                                                                                                   {
                                                                                                      addr466:
                                                                                                      break;
                                                                                                      addr458:
                                                                                                   }
                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§^"C§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§9#7§(e.keyCode));
                                                                                                               addr496:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr504:
                                                                                                                        this.§7"N§(e);
                                                                                                                        addr508:
                                                                                                                        break loop37;
                                                                                                                     }
                                                                                                                     break loop37;
                                                                                                                  }
                                                                                                                  addr553:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr554:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        addr520:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[3]);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr524:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr524:
                                                                                                                           }
                                                                                                                           addr525:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr526);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 addr396:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr491:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr496);
                                                                                                   }
                                                                                                   addr487:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      return §§pop().§§slot[2];
                                                                                                   }
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(e.keyCode == this.§2!$§);
                                                                                                      if(_loc6_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop().§§slot[3] = §§pop();
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(stage.focus == this.input.§`!N§)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               addr540:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[3]);
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue loop43;
                                                                                                                              }
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       this.input.focus();
                                                                                                                                       loop24:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr448:
                                                                                                                                             if(!(_loc5_ || this))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                addr354:
                                                                                                                                                addr332:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                      if(_loc5_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(true);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§<W§ = §§pop();
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                            addr262:
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(_loc6_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§pop().§<W§ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                     break loop45;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               loop47:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop48:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§]"z§.§#!"§(§""A§.§,#O§,null,this);
                                                                                                                                                                     addr289:
                                                                                                                                                                     loop51:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop48;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(this.§@O§ == null)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop51;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§;!3§();
                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop23;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop2;
                                                                                                                                                                           addr317:
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ || _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop44;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop47;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr582:
                                                                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                                                                 while(!(_loc6_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr262);
                                                                                                                                                                                    break loop45;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().reset();
                                                                                                                                                                                    addr583:
                                                                                                                                                                                    while(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr631);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr582:
                                                                                                                                                                                 addr255:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr520);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr241:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr540);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr524);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               break loop39;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr487);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr530);
                                                                                                                                                }
                                                                                                                                                addr332:
                                                                                                                                                if(!(_loc5_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr342);
                                                                                                                                                }
                                                                                                                                                §§goto(addr628);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr508);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          addr588:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§§slot[2] = this.§="S§;
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                          §§goto(addr448);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr583);
                                                                                                                                 }
                                                                                                                                 §§goto(addr504);
                                                                                                                              }
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 addr602:
                                                                                                                                 addr623:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(undefined);
                                                                                                                                    if(_loc6_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§pop().§§slot[8] = §§pop();
                                                                                                                                    §§goto(addr612);
                                                                                                                                    addr541:
                                                                                                                                    while(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop().§§slot[1].shiftKey);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr553);
                                                                                                                                          }
                                                                                                                                          §§goto(addr524);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[7] = §§pop();
                                                                                                                                    continue loop10;
                                                                                                                                    §§goto(addr602);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr551);
                                                                                                                           }
                                                                                                                           §§goto(addr524);
                                                                                                                        }
                                                                                                                        §§goto(addr525);
                                                                                                                     }
                                                                                                                     §§goto(addr496);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr541);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr541);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr231:
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop45;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         addr581:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr582);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr588);
                                                                                             }
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                §§pop().§§slot[1] = param1;
                                                                                                §§goto(addr599);
                                                                                                §§goto(addr479);
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr472:
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr343);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               else if(!_loc6_)
                                                               {
                                                                  §§goto(addr231);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr951);
                                                         }
                                                         §§goto(addr581);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop().§§slot[2]);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   addr342:
                                                   return §§pop().§§slot[2];
                                                }
                                                §§goto(addr255);
                                                §§goto(addr582);
                                             }
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr526);
                                    }
                                    §§goto(addr472);
                                 }
                                 §§goto(addr332);
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §?B§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §-#1§.§%!E§.§>7§(param1);
         }
         do
         {
            loop1:
            while(true)
            {
               if(!this.visible)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr27:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     stage.focus = this.input.§`!N§;
                     addr39:
                     if(false)
                     {
                        continue loop1;
                     }
                     addr61:
                     var _loc2_:§4]§ = this.§ !h§(param1);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc2_.§<W§);
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(this.§;#U§);
                                 if(_loc3_ || param1)
                                 {
                                    addr165:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr175:
                                          if(_loc2_.§^"C§)
                                          {
                                             this.input.§["7§();
                                             addr121:
                                             param1.stopImmediatePropagation();
                                             addr138:
                                             if(_loc3_ || this)
                                             {
                                                param1.stopPropagation();
                                                addr113:
                                                if(!(_loc4_ && param1))
                                                {
                                                   param1.preventDefault();
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               addr176:
                                                               if(param1.keyCode == Keyboard.SPACE)
                                                               {
                                                                  addr191:
                                                                  this.view.input.§'&§(" ");
                                                                  addr196:
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                            §§goto(addr74);
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr175);
                           }
                           addr74:
                           return;
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr191);
                  }
               }
               while(param1.keyCode == Keyboard.TAB)
               {
                  if(_loc3_)
                  {
                     §§goto(addr27);
                  }
                  §§goto(addr39);
               }
               §§goto(addr61);
            }
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §9#7§(param1:uint) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() >= 13);
               if(!(_loc3_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        addr66:
                        return param1 == Keyboard.SPACE;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §7"N§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§;#U§)
            {
               loop0:
               do
               {
                  this.§,#'§ = true;
                  while(!_loc3_)
                  {
                     param1.stopPropagation();
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc3_ && _loc2_);
               
               return;
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function setRepeatFilter(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(§8"q§.§="'§);
               if(!(_loc3_ && param1))
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           addr113:
                           §§push(0);
                           if(_loc3_ && _loc2_)
                           {
                              addr160:
                           }
                        }
                        else
                        {
                           addr152:
                           §§push(2);
                           if(_loc4_ || _loc2_)
                           {
                              §§goto(addr160);
                           }
                        }
                        addr166:
                        switch(§§pop())
                        {
                           case 0:
                              this.§""W§("Repeat mode: Repeated messages are now ignored",§+!,§.§>y§);
                              break;
                           case 1:
                              this.§""W§("Repeat mode: Repeated messages are now allowed",§+!,§.§>y§);
                              break;
                           case 2:
                              this.§""W§("Repeat mode: Repeated messages are now stacked",§+!,§.§>y§);
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                              break;
                           default:
                              throw new Error("Unknown filter type");
                        }
                        this.§>!i§ = param1;
                        return;
                        addr165:
                     }
                     else
                     {
                        §§push(§8"q§.§%#P§);
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr134:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       addr140:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr152);
                                 }
                              }
                              else
                              {
                                 §§push(§8"q§.§-"T§);
                                 if(_loc4_ || param1)
                                 {
                                    addr151:
                                    if(§§pop() === _loc2_)
                                    {
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr165);
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr134);
               }
               §§goto(addr140);
            }
            §§goto(addr113);
         }
         §§goto(addr166);
      }
      
      private function §7!y§() : Boolean
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Vector.<String> = null;
         var _loc1_:Boolean = false;
         if(!(_loc13_ && _loc3_))
         {
            §§push(this.input);
            if(_loc14_)
            {
               §§push(§§pop().text);
               if(_loc14_ || _loc1_)
               {
                  §§push(§§pop().length < 1);
                  if(!(_loc13_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc13_)
                        {
                           §§pop();
                           if(!_loc13_)
                           {
                              addr74:
                              §§push(this.§@O§ == null);
                              if(!_loc13_)
                              {
                                 §§push(!§§pop());
                                 if(_loc14_ || _loc3_)
                                 {
                                    addr88:
                                    if(§§pop())
                                    {
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          §§goto(addr97);
                                       }
                                    }
                                    §§push(this.input.§0C§);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr109:
                                       var _loc2_:String = §§pop();
                                       var _loc3_:* = this.input.text.lastIndexOf(_loc2_) < 1;
                                       if(_loc14_)
                                       {
                                          §§push(_loc3_);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.input);
                                                while(true)
                                                {
                                                   §§push(§§pop().§`"@§);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§="=§);
                                                            §§push(_loc2_);
                                                            §§push(_loc3_);
                                                            if(!(_loc13_ && _loc1_))
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            §§push(§§pop().§&!z§(§§pop(),§§pop(),_loc3_));
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc14_ || this)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr440:
                                                                  while(true)
                                                                  {
                                                                     §§push(!isNaN(Number(_loc2_)));
                                                                     continue loop32;
                                                                  }
                                                               }
                                                               if(!(_loc14_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr454);
                                          }
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr88);
                  }
                  addr97:
                  return false;
               }
               §§goto(addr109);
            }
            §§goto(addr88);
         }
         §§goto(addr74);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        if(§§pop().length != 1)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 throw new Error("Default input callback must take exactly one argument");
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 return;
                              }
                              addr89:
                              continue;
                           }
                           addr60:
                           addr60:
                           while(true)
                           {
                              break loop1;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§+!N§ = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr60);
                  }
                  return;
               }
               if(!_loc3_)
               {
                  this.§+!N§ = null;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr60);
      }
      
      public function §0&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.output.§0&§();
         }
      }
      
      public function §7"+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.output.§7"+§();
         }
      }
      
      public function §5"w§(param1:String = null, param2:String = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§ !'§.load(param1,param2);
         }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7"E§.§+!h§.§>"x§(param1);
         }
      }
      
      public function §?8§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §"#L§("Override callback active, hit ESC to resume normal ops");
            do
            {
               this.§@O§ = param1;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §;!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §"#L§("Override callback cleared");
            do
            {
               this.§@O§ = null;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function get §-#&§() : §0#R§
      {
         return this.§7@§;
      }
      
      public function §%!>§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§ !'§.§0!g§(param1,param2);
         }
      }
      
      public function §8"+§() : Array
      {
         return [this.§ !'§.§^!A§,this.§ !'§.§?"!§];
      }
      
      public function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9!T§.updateScope();
         }
      }
      
      public function get §]"z§() : §>l§
      {
         return this.§5"d§;
      }
   }
}
