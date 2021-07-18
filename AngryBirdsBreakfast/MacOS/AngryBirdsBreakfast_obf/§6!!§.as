package
{
   import §"n§.§[!e§;
   import §#"&§.§4!W§;
   import §#"&§.§6!F§;
   import §&v§.§#!R§;
   import §,C§.§+§;
   import §-!;§.§[!F§;
   import §1!`§.§8!s§;
   import §1T§.§'!c§;
   import §48§.§1k§;
   import §48§.§4L§;
   import §48§.§5E§;
   import §8!K§.§5!Y§;
   import §9!`§.§;g§;
   import §;!§.§ !c§;
   import §;!§.§"o§;
   import §;!§.§&4§;
   import §;!§.§+A§;
   import §;!§.§4!9§;
   import §;!§.§8^§;
   import §;!§.§>!X§;
   import §;!§.StateCutScene;
   import §;!§.StateEpisodeSelection;
   import §;!§.StatePlay;
   import §;!§.§[j§;
   import §=!L§.§4k§;
   import §?""§.§6!A§;
   import §?""§.§`!o§;
   import §?@§.§'^§;
   import §?z§.§4!C§;
   import §@L§.§?!'§;
   import §@g§.§;!5§;
   import §^S§.§#!X§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import com.angrybirds.§[!5§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§#h§;
   import each.§!!'§;
   import each.§5<§;
   import each.§8!N§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §6!!§ extends §6!A§
   {
      
      protected static var §02§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §=!N§:String;
      
      public static var §<Q§:String;
      
      public static const §8#§:int = 1024;
      
      public static const §'+§:int = 768;
      
      public static const §7!2§:Boolean = false;
      
      public static const §@!N§:int = 2000;
      
      private static const §@!<§:int = 750;
      
      private static const §=!c§:int = 3;
      
      private static const §,l§:int = 15;
      
      protected static var §?§:Class;
      
      protected static var §2!N§:Class;
      
      protected static var §-c§:Class;
      
      protected static var §!!@§:Class;
      
      protected static var §6!w§:Class;
      
      public static var §[>§:Boolean = true;
      
      private static var §1!j§:§6!!§ = null;
      
      public static var §,!I§:Sprite = null;
      
      public static var §^!`§:§[!5§;
      
      public static var §'!@§:Boolean = false;
      
      private static var §&m§:int = 0;
      
      private static var §-",§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §02§ = §"!6§;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §8#§ = 1024;
                  loop2:
                  while(true)
                  {
                     §'+§ = 768;
                     loop3:
                     while(true)
                     {
                        §7!2§ = false;
                        loop4:
                        for(; !_loc1_; if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        })
                        {
                           §@!N§ = 2000;
                           while(true)
                           {
                              §@!<§ = 750;
                              loop6:
                              while(_loc2_)
                              {
                                 §=!c§ = 3;
                                 while(true)
                                 {
                                    §,l§ = 15;
                                    addr139:
                                    while(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                     if(!(_loc2_ || §6!!§))
                     {
                        continue;
                     }
                     §?§ = §1E§;
                     while(true)
                     {
                        §2!N§ = §[!o§;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected var §3&§:§6!F§;
      
      protected var §@!H§:§#!R§;
      
      protected var §9,§:§+§;
      
      protected var §&" §:§5!Y§;
      
      protected var §8!^§:MovieClip;
      
      protected var §-G§:§1k§;
      
      protected var §+"0§:§4k§;
      
      private var §7!_§:int;
      
      private var §]4§:Boolean;
      
      private var §>"-§:int;
      
      private var §-!U§:int;
      
      protected var §>!z§:Boolean;
      
      protected var §,K§:Boolean;
      
      protected var §^!8§:§4!W§;
      
      protected var §^z§:Boolean;
      
      protected var §1!h§:Boolean = true;
      
      private var §87§:Boolean = false;
      
      public function §6!!§(param1:§`!o§, param2:String, param3:String)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.initFonts();
            while(true)
            {
               loop1:
               while(true)
               {
                  §=!N§ = param2;
                  do
                  {
                     §<Q§ = param3;
                  }
                  while(_loc6_ && this);
                  
                  if(!_loc7_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:XML = this.getUIData();
                  var _loc5_:XML = this.§3L§();
                  if(_loc7_ || param3)
                  {
                     §[!e§.§[!4§(_loc5_,_loc4_,["Views","Components","Popups"],true);
                     loop4:
                     while(true)
                     {
                        super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
                        loop5:
                        while(true)
                        {
                           this.initialize();
                           loop6:
                           while(true)
                           {
                              this.initializeStates();
                              loop7:
                              while(true)
                              {
                                 §§push(stage.stageWidth == §+g§);
                                 if(_loc7_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr140:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr140:
                                       }
                                       else
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc7_ || this)
                                             {
                                                if(!(_loc7_ || param2))
                                                {
                                                   while(!_loc6_)
                                                   {
                                                      continue loop4;
                                                      §§goto(addr140);
                                                   }
                                                   continue loop7;
                                                   addr141:
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                this.resize();
                                             }
                                             break;
                                          }
                                          stage.showDefaultContextMenu = false;
                                          if(_loc7_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr129);
                                          addr109:
                                       }
                                       §§goto(addr141);
                                       addr102:
                                       if(!(_loc7_ || param1))
                                       {
                                          continue;
                                       }
                                       §§goto(addr109);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(stage.stageHeight == §=!?§);
                     if(!(_loc6_ && this))
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr102);
                           §§push(!§§pop());
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      public static function get stageWidth() : int
      {
         return §&m§;
      }
      
      public static function get stageHeight() : int
      {
         return §-",§;
      }
      
      public static function §<=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §[>§ = param1;
         }
         do
         {
            §'!c§.§,!O§(§[>§);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public static function §2!c§() : Boolean
      {
         return §[>§;
      }
      
      public static function get §+g§() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get §=!?§() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §6!!§
      {
         return §1!j§;
      }
      
      public function get §%![§() : §1k§
      {
         return this.§-G§;
      }
      
      public function get §6"#§() : §4k§
      {
         return this.§+"0§;
      }
      
      public function get §<!S§() : §4!W§
      {
         return this.§^!8§;
      }
      
      public function get §2!h§() : Boolean
      {
         return this.§,K§;
      }
      
      public function set §2!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,K§ = param1;
         }
      }
      
      protected function getAssetMap() : XML
      {
         return §8!N§.§?!c§(§-c§);
      }
      
      protected function getUIData() : XML
      {
         return §8!N§.§?!c§(§?§);
      }
      
      protected function §3L§() : XML
      {
         return §8!N§.§?!c§(§2!N§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §4X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!8§ = new §4!W§();
         }
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §1!j§ = this;
            loop0:
            while(true)
            {
               this.§,K§ = false;
               while(true)
               {
                  §&!"§.init(this,§+g§,§=!?§);
                  while(_loc2_ || _loc3_)
                  {
                     §;!5§.§2Z§.init(§8!s§.§3!b§(),this.§,!J§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§3&§,this.§7!@§);
                     loop6:
                     for(; _loc2_; if(_loc3_ && this)
                     {
                        continue;
                     },§§goto(addr62))
                     {
                        if(!_loc3_)
                        {
                           stage.scaleMode = StageScaleMode.NO_SCALE;
                           loop7:
                           while(true)
                           {
                              stage.align = StageAlign.TOP_LEFT;
                              addr92:
                              addr159:
                              while(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §7!;§ = §+g§;
                                 while(true)
                                 {
                                    §66§ = §=!?§;
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 this.§4X§();
                                 while(true)
                                 {
                                    this.initializeManagers();
                                    addr62:
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §!!'§.§'k§(§!!U§);
                                          while(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §!!'§.§&!E§(true);
                                                if(_loc2_)
                                                {
                                                   continue loop12;
                                                }
                                                continue;
                                             }
                                             §§goto(addr86);
                                          }
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr92);
                                          §§goto(addr30);
                                       }
                                       addr53:
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.initializeUserProgress();
                           break loop6;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      protected function §,!J§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!0§();
         }
      }
      
      private function §0!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1!h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr51:
                  while(true)
                  {
                     this.§1!h§ = false;
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§^z§ = §'!c§.§<!g§;
                        while(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr51:
               }
               return;
            }
            addr75:
         }
         while(true)
         {
            §§push(this.§^z§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr48);
               }
               break;
            }
            §§goto(addr75);
            §§goto(addr51);
         }
      }
      
      private function §]^§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[b§();
         }
      }
      
      private function §[b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§1!h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr78:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§1!h§ = true;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      protected function setupPopupManager() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!^§ = new MovieClip();
         }
         while(true)
         {
            §!!U§.stage.addChild(this.§8!^§);
            loop1:
            while(true)
            {
               this.§-G§ = new §5E§(this.§8!^§,§@!>§,this);
               addr151:
               while(true)
               {
                  §§push(this.§-G§);
                  addr129:
                  while(true)
                  {
                     §§push(§;g§.OPEN);
                     addr131:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.§ !U§);
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function § !U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%y§();
         }
      }
      
      protected function §`=§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4%§();
         }
      }
      
      public function §4%§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§-G§.§%&§());
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§^!`§.§6q§());
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr117:
                           loop8:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                                 addr93:
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr109:
                                          do
                                          {
                                             §§push(this.§2!h§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(!§§pop());
                                             }
                                          }
                                          while(_loc3_ || _loc1_);
                                          
                                          continue loop3;
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop8;
                                          }
                                          §&!"§.resume();
                                       }
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr109);
                                    }
                                    return;
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                        }
                        addr116:
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr116);
            }
         }
         §§goto(addr117);
      }
      
      public function §%y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&!"§.pause();
         }
      }
      
      protected function initializeManagers() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!H§ = this.initializeLevelItemManager();
            while(true)
            {
               this.§9,§ = this.initializeLevelThemeManager();
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§&" § = this.initializeLevelManager();
                     loop3:
                     while(true)
                     {
                        this.§3&§ = this.initializePackageManager();
                        while(true)
                        {
                           §&!"§.§1!D§ = this.initializeLevelMain();
                           while(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 this.setupPopupManager();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function initializeLevelMain() : §?!'§
      {
         return new §?!'§(stage,this.§@!H§,this.§9,§,this.§&" §);
      }
      
      protected function initializeLevelItemManager() : §#!R§
      {
         return new §#!R§();
      }
      
      protected function initializeLevelThemeManager() : §+§
      {
         return new §+§();
      }
      
      protected function initializeLevelManager() : §5!Y§
      {
         return new §5!Y§();
      }
      
      protected function initializePackageManager() : §6!F§
      {
         return new §6!F§(this.§&" §);
      }
      
      protected function initializeUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^!8§.userProgress = new §#!X§(§<Q§,this.§&" §);
         }
      }
      
      protected function initializeStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7p§(new §[j§(this.§&" §,§@!>§,false));
         }
         while(true)
         {
            §7p§(new §8^§(this.§&" §,§@!>§,false));
            loop1:
            for(; _loc2_; loop4:
            while(_loc2_ || _loc1_)
            {
               §7p§(new § !c§(this.§&" §,§@!>§,false));
               loop5:
               while(true)
               {
                  §7p§(new §>!X§(this.§&" §,§@!>§,false));
                  loop6:
                  while(true)
                  {
                     §7p§(new §4!9§(this.§&" §,§@!>§,false));
                     loop7:
                     while(true)
                     {
                        §7p§(new §"o§(this.§&" §,§@!>§,false));
                        while(!_loc1_)
                        {
                           §7p§(new StateCutScene(this.§&" §,§@!>§,false));
                           loop9:
                           while(!_loc1_)
                           {
                              §7p§(new §&4§(this.§&" §,§@!>§,false));
                              loop10:
                              for(; _loc2_; while(true)
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop10;
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(stage.stageHeight == §=!?§);
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr39:
                                       §§push(!§§pop());
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr81);
                                          }
                                          §§goto(addr48);
                                       }
                                       §§goto(addr82);
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr39);
                              },continue loop9)
                              {
                                 §§push(stage.stageWidth == §+g§);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr82:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop7;
                                             }
                                             addr64:
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop10;
                                          }
                                          return;
                                          addr48:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr207);
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            })
            {
               §7p§(new StateEpisodeSelection(this.§&" §,§@!>§,false));
               while(true)
               {
                  §7p§(new §+A§(this.§&" §,§@!>§,false));
                  addr197:
                  while(true)
                  {
                     §7p§(new StatePlay(this.§&" §,§@!>§,false));
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §7!@§(param1:ByteArray) : void
      {
      }
      
      protected function §`""§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §5<§.§`[§();
         }
      }
      
      protected function §&!u§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §5<§.§3!X§();
            if(_loc4_)
            {
               if(this.§]4§)
               {
                  if(_loc4_ || _loc3_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§-!U§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        _loc2_.§-!U§ = _loc3_;
                     }
                     if(_loc4_ || param1)
                     {
                        §§push(this.§-!U§);
                        loop0:
                        while(true)
                        {
                           §§push(§,l§);
                           addr120:
                           while(true)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 return;
                              }
                              addr75:
                              if(!_loc5_)
                              {
                                 this.§]4§ = false;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr100);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr100);
      }
      
      public function §^!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@Q§(null);
         }
      }
      
      protected function §@Q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!z§ = true;
         }
      }
      
      protected function §%!u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[b§();
         }
      }
      
      public function §%!O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_ || _loc1_)
         {
            if(_loc1_ - this.§7!_§ > §@!<§)
            {
               for(; stage.displayState != StageDisplayState.FULL_SCREEN; if(_loc3_ && _loc2_)
               {
                  continue;
               },this.§'!f§(_loc1_),§§goto(addr67))
               {
                  if(stage.displayState == StageDisplayState.NORMAL)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        continue;
                     }
                     addr67:
                     addr101:
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr28:
                           return;
                           addr76:
                        }
                        break;
                     }
                  }
                  §§goto(addr28);
               }
               this.§!!l§(_loc1_);
               §§goto(addr101);
            }
            §§goto(addr28);
         }
         §§goto(addr76);
      }
      
      public function §#N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!l§(0);
         }
      }
      
      public function §9Z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(stage)
            {
               if(!_loc2_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr50);
      }
      
      private function §!!l§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§>!z§ = true;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7!_§ = param1;
                  do
                  {
                     this.§]4§ = false;
                  }
                  while(_loc3_ && param1);
                  
                  if(_loc4_ || this)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     try
                     {
                        stage.displayState = StageDisplayState.NORMAL;
                     }
                     catch(e:Error)
                     {
                     }
                     return;
                     addr53:
                  }
                  break;
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §'!f§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§>!z§ = true;
            while(true)
            {
               this.§7!_§ = param1;
               while(!(_loc4_ && _loc3_))
               {
                  this.§>"-§ = 0;
                  loop2:
                  for(; _loc3_; while(true)
                  {
                     if(!_loc4_)
                     {
                        this.§]4§ = true;
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  },while(false)
                  {
                     §§goto(addr37);
                  },try
                  {
                     stage.displayState = StageDisplayState.FULL_SCREEN;
                  }
                  catch(e:Error)
                  {
                  },return)
                  {
                     while(true)
                     {
                        this.§-!U§ = 0;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(_loc4_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr41:
               §§push(0);
               if(_loc3_ && param1)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function get §>$§() : Boolean
      {
         return this.§87§;
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.setFirstGameState();
            while(true)
            {
               this.§87§ = true;
               loop1:
               for(; _loc2_ || _loc2_; while(!(_loc1_ && _loc2_))
               {
                  §;!5§.§2Z§.§%l§();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.initializeGame();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            §§push(§&!"§.§!!D§);
            if(_loc5_ || this)
            {
               if(§§pop() != null)
               {
                  if(!_loc4_)
                  {
                     addr36:
                     §&!"§.§!!D§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!(_loc4_ && param1))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  if(!§'E§().isGenericState())
                  {
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() == §4!C§.§8s§)
                           {
                              if(_loc5_)
                              {
                                 addr91:
                                 §<f§(§'E§().nextState);
                                 addr96:
                                 §§push(_loc2_);
                              }
                           }
                           §§goto(addr96);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr91);
            }
         }
         §§goto(addr36);
      }
      
      override public function getAppWidth() : Number
      {
         return §8#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §'+§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@!N§;
      }
      
      protected function §5`§() : String
      {
         return "ThemeMusic";
      }
      
      public function §"!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§'!c§.§[!d§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §'!c§.§3!f§(this.§5`§(),"Channel_Theme",999);
                           }
                           break;
                        }
                        §§push(§§pop().§,!V§());
                        addr29:
                        break;
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           continue;
                        }
                        addr87:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr87:
                     }
                     return;
                  }
               }
               §§goto(addr87);
            }
         }
         §§goto(addr61);
      }
      
      public function §2!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!c§.§;! §("Channel_Theme");
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(_loc1_ || this)
         {
            §§push(§§pop() + ", ");
            if(!_loc2_)
            {
               §§push(§§pop() + "Server: ");
               if(!(_loc2_ && _loc1_))
               {
                  addr62:
                  return §§pop() + §=!N§;
               }
            }
         }
         §§goto(addr62);
      }
      
      protected function loadItems() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!H§.loadItems(this.§#p§());
         }
      }
      
      protected function §4!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9,§.§0"+§(this.getLevelBackgroundXML().Backgrounds);
         }
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.loadItems();
            while(true)
            {
               this.§4!%§();
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            §&!"§.§1!y§(this.§3&§.§-!-§,this.§!"!§);
            if(_loc2_ || _loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §8!N§.§?!c§(§6!w§);
      }
      
      protected function §#p§() : XML
      {
         return §8!N§.§?!c§(§!!@§);
      }
      
      protected function §!"!§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §'!@§ = true;
            do
            {
               §<f§(§8^§.§-!q§);
            }
            while(!_loc3_);
            
         }
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§]4§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§>"-§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§>"-§ = _loc3_;
                     }
                     if(_loc4_ || this)
                     {
                        addr126:
                        §§push(§1"&§.§ !R§());
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§>!z§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr100:
                              if(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.resize();
                                          while(true)
                                          {
                                             this.§>!z§ = false;
                                             §§goto(addr78);
                                          }
                                          continue loop3;
                                       }
                                       addr123:
                                    }
                                    else
                                    {
                                       §§goto(addr100);
                                    }
                                 }
                              }
                              super.onEnterFrame(param1);
                              if(_loc5_ && param1)
                              {
                                 addr78:
                              }
                              §§goto(addr73);
                           }
                        }
                        addr128:
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr123);
               }
               §§goto(addr126);
            }
            §§goto(addr128);
         }
         addr73:
         while(true)
         {
            if(_loc4_ || _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc4_ || _loc2_)
                  {
                     break loop3;
                  }
                  addr129:
                  return;
               }
               continue loop3;
            }
            continue loop1;
         }
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:int = Math.round(stage.stageHeight);
         if(!_loc5_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(20);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr386:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr355:
                                 while(true)
                                 {
                                    §§push(20);
                                    addr356:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                    }
                                 }
                              }
                           }
                           addr385:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§&m§);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr378:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       addr183:
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc2_);
                                       loop36:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr203:
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                while(!_loc5_)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§goto(addr331);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr203);
                                                }
                                                continue loop1;
                                                addr320:
                                             }
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               while(_loc4_ || param1)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr331:
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           addr300:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§goto(addr263);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§-",§);
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ && param1)
                                                                              {
                                                                                 continue loop36;
                                                                              }
                                                                              addr128:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 while(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             §&m§ = _loc2_;
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ && _loc3_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop32;
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr145:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr150);
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      break loop31;
                                                                                                   }
                                                                                                   continue loop29;
                                                                                                }
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §-",§ = _loc3_;
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr273:
                                                                                                            addr273:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                                                               addr281:
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  break loop34;
                                                                                                               }
                                                                                                               break loop28;
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr242);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                                §§goto(addr150);
                                                                                             }
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr145);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr343);
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr308:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr355);
                                                               addr229:
                                                            }
                                                            §§goto(addr143);
                                                            §§goto(addr296);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      addr222:
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr356);
                                             §§goto(addr339);
                                          }
                                          §§goto(addr288);
                                       }
                                    }
                                 }
                                 §§goto(addr379);
                              }
                              §§goto(addr308);
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr320);
               §§push(2);
            }
         }
         §§goto(addr273);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §&!"§.§4!_§(0,0,param1,param2);
            while(true)
            {
               setViewSize(param1,param2);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§-G§.setViewSize(param1,param2);
            if(!(_loc4_ && this))
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §"!O§() : void
      {
      }
      
      public function §5,§() : void
      {
      }
      
      protected function initFonts() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            Font.registerFont(AngryBirdsFont);
            do
            {
               Font.registerFont(AngryBirdsBoldFont);
               do
               {
                  Font.registerFont(AngryBirdsTextFont);
                  do
                  {
                     Font.registerFont(AngryBirdsTextBoldFont);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
   }
}
