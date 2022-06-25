package
{
   import §"!i§.LevelManager;
   import §-!$§.§,w§;
   import §-!$§.§4P§;
   import §-^§.§?7§;
   import §-o§.§4w§;
   import §0S§.§7!Z§;
   import §1!B§.§7n§;
   import §1!B§.§<m§;
   import §1!B§.§>!s§;
   import §2!U§.§&i§;
   import §2!U§.§0!>§;
   import §2!U§.§2!=§;
   import §2!U§.§3!;§;
   import §2!U§.§5!i§;
   import §2!U§.§8"!§;
   import §2!U§.§;o§;
   import §2!U§.§<&§;
   import §2!U§.§=<§;
   import §2!U§.§>!"§;
   import §2!U§.§@!A§;
   import §2!U§.StateCutScene;
   import §2!U§.StatePlay;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §8!H§.§9![§;
   import §;!y§.§#X§;
   import §;!y§.§,!s§;
   import §[!1§.§+!6§;
   import §[!b§.§-!Q§;
   import §]!+§.§5!1§;
   import §]F§.§`!G§;
   import com.rovio.assets.§2!B§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsFP11 extends §4P§
   {
      
      protected static var §,p§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^I§:String;
      
      public static var §[!S§:String;
      
      public static const §!"#§:int = 1024;
      
      public static const §8p§:int = 768;
      
      public static const §?C§:Boolean = false;
      
      public static const §#" §:int = 2000;
      
      public static const § 3§:Boolean = false;
      
      private static const §0x§:int = 750;
      
      private static const §5N§:int = 3;
      
      private static const §6!h§:int = 15;
      
      protected static var §+!4§:Class;
      
      protected static var §0!M§:Class;
      
      protected static var §0E§:Class;
      
      protected static var §4!I§:Class;
      
      public static var sUserProgress:§+!6§ = null;
      
      public static var §0!7§:Boolean = true;
      
      private static var §`n§:AngryBirdsFP11 = null;
      
      public static var §70§:Sprite = null;
      
      public static var §>s§:§#X§;
      
      public static var §^T§:Boolean = false;
      
      protected static var §3!!§:int = 0;
      
      protected static var §>u§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,p§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §!"#§ = 1024;
                  while(true)
                  {
                     §8p§ = 768;
                     while(!(_loc2_ && AngryBirdsFP11))
                     {
                        §?C§ = false;
                        while(true)
                        {
                           §#" § = 2000;
                           loop5:
                           while(true)
                           {
                              § 3§ = false;
                              loop6:
                              while(true)
                              {
                                 §0x§ = 750;
                                 loop7:
                                 while(true)
                                 {
                                    §5N§ = 3;
                                    while(true)
                                    {
                                       §6!h§ = 15;
                                       while(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             §+!4§ = AngryBirdsFP11_mViewLibraryBin;
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                §0!M§ = AngryBirdsFP11_mAssetMapBin;
                                                loop11:
                                                while(true)
                                                {
                                                   §0E§ = AngryBirdsFP11_mItemDataTableBin;
                                                   while(true)
                                                   {
                                                      §4!I§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                                      loop13:
                                                      while(true)
                                                      {
                                                         sUserProgress = null;
                                                         addr135:
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §0!7§ = true;
                                                               continue loop13;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr77);
                                       }
                                       continue loop7;
                                       if(_loc1_ || _loc1_)
                                       {
                                          continue loop6;
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
         §§goto(addr205);
      }
      
      private var §=!Q§:§5!1§;
      
      private var §2j§:int;
      
      private var §%!R§:Boolean;
      
      private var §<r§:int;
      
      private var §&<§:int;
      
      protected var §6!`§:Boolean;
      
      public function AngryBirdsFP11(param1:§,w§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!Q§ = new §5!1§();
            loop0:
            while(true)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               loop1:
               while(true)
               {
                  this.initialize();
                  while(true)
                  {
                     this.initStates();
                     addr106:
                     while(!_loc3_)
                     {
                     }
                     continue loop0;
                     addr49:
                     if(!(_loc3_ && param1))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(stage.stageWidth == §!Z§);
            if(_loc2_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  addr99:
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(stage.stageHeight == §2" §);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc2_)
                           {
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.§0!S§(null);
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc2_)
                                 {
                                    §§goto(addr49);
                                 }
                                 §§goto(addr106);
                              }
                              break;
                              addr33:
                           }
                           continue loop5;
                        }
                        §§goto(addr19);
                     }
                     addr101:
                  }
                  §§goto(addr33);
               }
               §§goto(addr101);
            }
            §§goto(addr99);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §3!!§;
      }
      
      public static function get stageHeight() : int
      {
         return §>u§;
      }
      
      public static function §]!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §0!7§ = param1;
         }
         do
         {
            §-!Q§.§,!=§(§0!7§);
         }
         while(!_loc3_);
         
      }
      
      public static function §"C§() : Boolean
      {
         return §0!7§;
      }
      
      public static function get §!Z§() : int
      {
         return §'!g§.getAppWidth();
      }
      
      public static function get §2" §() : int
      {
         return §'!g§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§-!Q§.§]a§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr84:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              §-!Q§.§#3§("ThemeMusic","Channel_Theme",999);
                           }
                           addr66:
                        }
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr62:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §?!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!Q§.§^B§("Channel_Theme");
         }
      }
      
      public static function get §'!g§() : AngryBirdsFP11
      {
         return §`n§;
      }
      
      protected function getAssetMap() : XML
      {
         return §>!s§.§;§(§0!M§);
      }
      
      protected function getUIData() : XML
      {
         return §>!s§.§;§(§+!4§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4w§.§[U§.init(§?7§.§7h§(),this.§6!b§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§=!Q§,this.§<!X§);
            loop0:
            while(true)
            {
               §`n§ = this;
               loop1:
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  loop2:
                  while(true)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     loop3:
                     while(true)
                     {
                        §#!t§ = §!Z§;
                        loop4:
                        while(true)
                        {
                           § !-§ = §2" §;
                           addr45:
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              continue loop3;
                           }
                           §<m§.§ !J§(true);
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 addr28:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    if(false)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §<m§.§3! §(§`O§);
                                          addr43:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr45);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §,!s§.init(this,§!Z§,§2" §);
                                                   addr73:
                                                   while(_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.initLevelMain();
                                                      while(true)
                                                      {
                                                         §,!s§.§3!h§.visible = false;
                                                         break loop9;
                                                         §§goto(addr28);
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                addr82:
                                             }
                                             §§goto(addr66);
                                          }
                                          continue loop4;
                                       }
                                       while(_loc3_)
                                       {
                                          §§goto(addr39);
                                       }
                                       addr39:
                                       §§goto(addr73);
                                       addr60:
                                    }
                                    var _loc1_:XMLList = §>!s§.§;§(§,p§).children();
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §2!B§.init(_loc1_);
                                       §-!Q§.§"3§("CHANNEL_THEME",1,1);
                                       addr270:
                                       if(!_loc2_)
                                       {
                                          §-!Q§.§"3§("CHANNEL_AMBIENT",1,1);
                                          addr256:
                                          if(_loc3_ || _loc1_)
                                          {
                                             this.initUserProgress();
                                             stage.addEventListener(Event.MOUSE_LEAVE,this.§!!?§);
                                             addr249:
                                             if(_loc3_)
                                             {
                                                stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
                                                addr223:
                                                if(!_loc2_)
                                                {
                                                   stage.addEventListener(Event.RESIZE,this.§0!S§);
                                                   addr213:
                                                   if(!_loc2_)
                                                   {
                                                      stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                                                      addr203:
                                                      if(!_loc2_)
                                                      {
                                                         §>s§ = new §#X§(stage);
                                                         addr186:
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(§`!G§.§[U§);
                                                               §§push(§?C§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().§;!W§ = §§pop();
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  §§goto(addr186);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                                §§goto(addr249);
                                                addr245:
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr270);
                                       }
                                       addr276:
                                       §§goto(addr276);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr60);
                           }
                           §§goto(addr43);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §6!b§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!s§.§=!I§ = new §5G§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            sUserProgress = new §+!6§(§[!S§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9X§(new §5!i§(false));
            loop0:
            while(true)
            {
               §9X§(new §3!;§(false));
               loop1:
               while(true)
               {
                  §9X§(new §&i§(false));
                  loop2:
                  while(true)
                  {
                     §9X§(new §8"!§(false));
                     loop3:
                     for(; !_loc2_; if(!(_loc1_ || this))
                     {
                        continue;
                     },§9X§(new StateCutScene(false)),§§goto(addr89))
                     {
                        §9X§(new §2!=§(false));
                        while(true)
                        {
                           §9X§(new StatePlay(false));
                           addr191:
                           while(true)
                           {
                              §9X§(new §@!A§(false));
                              while(true)
                              {
                                 §9X§(new §=<§(false));
                                 addr163:
                                 while(_loc1_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           addr100:
                           if(_loc1_ || _loc2_)
                           {
                              §9X§(new §<&§(false));
                              loop13:
                              while(true)
                              {
                                 §§push(stage.stageWidth == §!Z§);
                                 if(!_loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr72:
                                       if(!§§pop())
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§pop();
                                             loop15:
                                             while(true)
                                             {
                                                §§push(stage.stageHeight == §2" §);
                                                if(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop14;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break loop15;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      break loop13;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         this.§0!S§(null);
                                                         break loop13;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                             §§goto(addr19);
                                          }
                                          addr74:
                                       }
                                       §§goto(addr38);
                                    }
                                    §§goto(addr74);
                                 }
                                 §§goto(addr72);
                              }
                              addr49:
                              if(!(_loc1_ || _loc2_))
                              {
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             §§goto(addr100);
                                          }
                                          else
                                          {
                                             §§goto(addr191);
                                          }
                                       }
                                       break;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          else
                                          {
                                             addr154:
                                          }
                                          while(_loc1_)
                                          {
                                             §9X§(new §>!"§(false));
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §9X§(new §;o§(false));
                                          continue loop11;
                                       }
                                    }
                                    continue loop3;
                                    §§goto(addr49);
                                 }
                                 §§goto(addr163);
                                 addr89:
                              }
                           }
                           continue;
                           addr19:
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §9X§(new §0!>§(false));
            §§goto(addr154);
         }
      }
      
      protected function §<!X§(param1:ByteArray) : void
      {
      }
      
      protected function §!!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §7n§.§@!5§();
         }
      }
      
      protected function §>![§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §7n§.§`J§();
            if(_loc5_)
            {
               if(this.§%!R§)
               {
                  if(_loc5_ || _loc2_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§&<§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§&<§ = _loc3_;
                     }
                     if(_loc5_ || param1)
                     {
                        §§push(this.§&<§);
                        while(true)
                        {
                           §§push(§6!h§);
                           addr106:
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     this.§%!R§ = false;
                     §§goto(addr117);
                  }
               }
               addr71:
               while(§§pop() > §§pop())
               {
                  if(!(_loc5_ || this))
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr117);
         }
         §§goto(addr102);
      }
      
      public function §5;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0!S§(null);
         }
      }
      
      protected function §0!S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!`§ = true;
         }
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!(_loc5_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 while(true)
                                 {
                                    §§push(20);
                                    addr354:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                    }
                                    addr202:
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    loop46:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(!_loc5_)
                                                {
                                                   loop36:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§pop();
                                                                     loop38:
                                                                     while(!_loc5_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§>u§);
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                          continue loop46;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop39:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop41:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §3!!§ = _loc2_;
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §>u§ = _loc3_;
                                                                                                                           for(; !_loc5_; this.resizeViews(§3!!§,§>u§),if(!(_loc4_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(!(_loc4_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop42;
                                                                                                                           },if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    continue loop39;
                                                                                                                                 }
                                                                                                                                 addr168:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       break loop40;
                                                                                                                                    }
                                                                                                                                    addr277:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop38;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                                 addr152:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    addr281:
                                                                                                                                    addr317:
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr286:
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          while(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc5_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             if(§§pop() / §§pop() > 25 / 12)
                                                                                                                                             {
                                                                                                                                                §§goto(addr305);
                                                                                                                                             }
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1);
                                                                                                                                                addr260:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr268:
                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr277);
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         addr276:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr277);
                                                                                                                                                }
                                                                                                                                                addr322:
                                                                                                                                                addr323:
                                                                                                                                                while(!§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop27;
                                                                                                                                                   §§goto(addr268);
                                                                                                                                                }
                                                                                                                                                addr314:
                                                                                                                                                §§push(false);
                                                                                                                                                break loop39;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             addr321:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr322);
                                                                                                                                             }
                                                                                                                                             §§goto(addr286);
                                                                                                                                          }
                                                                                                                                          addr286:
                                                                                                                                          addr320:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(2);
                                                                                                                                          addr331:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             addr332:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                break loop36;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop23:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr320);
                                                                                                                                          §§push(2);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             break loop23;
                                                                                                                                          }
                                                                                                                                          addr365:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr366:
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§>u§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    addr349:
                                                                                                                                    addr195:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       addr350:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr328:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr330);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(_loc5_ && this)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr202);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr369:
                                                                                                                           },§§goto(addr323))
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr305:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                                                                                 addr313:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr151:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr152);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr52:
                                                                                                                        return §§pop();
                                                                                                                        addr106:
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     §§goto(addr350);
                                                                                                                  }
                                                                                                                  §§goto(addr314);
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr151);
                                                                                                      }
                                                                                                      if(_loc5_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr168);
                                                                                                      addr149:
                                                                                                   }
                                                                                                   break;
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr195);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           addr193:
                                                                        }
                                                                        break loop37;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr317);
                                                               }
                                                               addr345:
                                                               addr248:
                                                            }
                                                            §§goto(addr149);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr345);
                                                         }
                                                         addr334:
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§goto(addr365);
                                                         §§push(§3!!§);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   §§goto(addr328);
                                                }
                                                addr356:
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr356);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §,!s§.§4J§(0,0,param1,param2);
            do
            {
               setViewSize(param1,param2);
            }
            while(_loc4_ && param2);
            
         }
      }
      
      public function §]8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_)
         {
            if(_loc1_ - this.§2j§ > §0x§)
            {
               do
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc2_)
                        {
                           this.§#!P§(_loc1_);
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                     }
                     break;
                  }
                  if(_loc2_)
                  {
                     this.§]Y§(_loc1_);
                  }
                  break;
               }
               while(!(_loc2_ || this));
               
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §5!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§]Y§(0);
         }
      }
      
      public function §?6§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
      
      private function §]Y§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§6!`§ = true;
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  this.§2j§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§%!R§ = false;
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr42);
            }
            §§goto(addr56);
         }
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §#!P§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§6!`§ = true;
         }
         while(true)
         {
            this.§2j§ = param1;
            loop1:
            for(; !(_loc4_ && param1); while(!(_loc4_ && _loc2_))
            {
               this.§%!R§ = true;
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  if(true)
                  {
                     try
                     {
                        stage.displayState = StageDisplayState.FULL_SCREEN;
                     }
                     catch(e:Error)
                     {
                     }
                     return;
                  }
               }
               else
               {
                  §§goto(addr60);
               }
               §§goto(addr34);
            })
            {
               this.§<r§ = 0;
               while(true)
               {
                  addr34:
                  while(true)
                  {
                     this.§&<§ = 0;
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(_loc4_ || param1)
         {
            if(Keyboard.F === _loc2_)
            {
               addr46:
               §§push(0);
               if(_loc3_)
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
         §§goto(addr46);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.setFirstGameState();
            while(true)
            {
               §4w§.§[U§.§74§();
               while(!_loc2_)
               {
                  LevelManager.§?=§(JSON.parse(this.§=!Q§.getFileAsString("Chapters.json")));
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.initializeGame();
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(§,!s§.§3!h§);
            if(!_loc4_)
            {
               if(§§pop() != null)
               {
                  addr33:
                  if(_loc5_)
                  {
                     §§push(§,!s§.§3!h§);
                  }
                  §§push(super.updateState(param1));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     if(!§>j§().isGenericState())
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr81:
                           while(true)
                           {
                              if(§§pop() == §9![§.STATE_STATUS_COMPLETED)
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(§<m§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() + §>j§().mName);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + " New State = ");
                                          if(!_loc5_)
                                          {
                                          }
                                          addr124:
                                          §§pop().log(§§pop());
                                          continue loop0;
                                       }
                                       §§push(§§pop() + §>j§().mNextState);
                                    }
                                    §§goto(addr124);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr81);
                     }
                     return §§pop();
                  }
                  §§goto(addr101);
               }
               §§goto(addr33);
            }
            §§pop().update(param1);
         }
         §§goto(addr33);
      }
      
      override public function getAppWidth() : Number
      {
         return §!"#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §8p§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §#" §;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(!_loc2_)
         {
            §§push(VERSION);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(_loc1_)
               {
                  §§push(", ");
                  if(!_loc2_)
                  {
                     §§goto(addr68);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr68);
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         addr68:
         §§push(§§pop() + §§pop());
         if(_loc1_ || this)
         {
            addr64:
            §§push("Server: ");
         }
         return §§pop() + §^I§;
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!s§.§=$§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §,!s§.§"!t§(this.§=!Q§.§8!s§,§7!Z§.§="§(),this.onGraphicsInitialized);
         }
         while(!_loc2_);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §>!s§.§;§(§4!I§);
      }
      
      protected function getItemData() : XML
      {
         return §>!s§.§;§(§0E§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §^T§ = true;
         }
         while(true)
         {
            if(!§ 3§)
            {
               §9!m§(§&i§.§'!q§);
               if(_loc2_ || this)
               {
                  §§goto(addr19);
               }
            }
            if(!(_loc2_ || param1))
            {
               break;
            }
            if(!(_loc3_ && _loc3_))
            {
               §9!m§(§5!i§.§'!q§);
               break;
            }
         }
         addr19:
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§%!R§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§<r§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_.§<r§ = _loc3_;
                     }
                     if(_loc4_ || param1)
                     {
                        addr129:
                        §§push(§<!?§.§0,§());
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           addr135:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        return;
                        addr131:
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr110);
               }
               §§goto(addr129);
            }
            §§goto(addr131);
         }
         §§goto(addr126);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
