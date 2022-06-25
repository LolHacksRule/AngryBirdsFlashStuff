package
{
   import § !k§.§%N§;
   import § !k§.§%]§;
   import § !k§.§'!4§;
   import § !k§.§,h§;
   import § !k§.§0!e§;
   import § !k§.§4A§;
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.§;!H§;
   import § !k§.§=!#§;
   import § !k§.§?U§;
   import § !k§.StateCutScene;
   import § !k§.StatePlay;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §"i§.§5V§;
   import §+&§.§-!7§;
   import §1!T§.§6!H§;
   import §4!C§.§,!l§;
   import §5i§.§4!]§;
   import §5i§.§7!l§;
   import §6z§.§+!D§;
   import §6z§.§[g§;
   import §6z§.§`!<§;
   import §8!Z§.§ !D§;
   import §8,§.§+_§;
   import §<i§.§#!%§;
   import §<i§.§9!M§;
   import §>o§.§+!4§;
   import §@4§.§,!]§;
   import §[a§.§2!T§;
   import com.rovio.assets.§11§;
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
   
   public class AngryBirdsFP11 extends §9!M§
   {
      
      protected static var §]!9§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §9n§:String;
      
      public static var §6S§:String;
      
      public static const §]m§:int = 1024;
      
      public static const §0N§:int = 768;
      
      public static const §2!y§:Boolean = false;
      
      public static const §93§:int = 2000;
      
      public static const §0!f§:Boolean = false;
      
      private static const §=O§:int = 750;
      
      private static const §4!§:int = 3;
      
      private static const §`!4§:int = 15;
      
      protected static var §"^§:Class;
      
      protected static var §2t§:Class;
      
      protected static var §7!`§:Class;
      
      protected static var §]!]§:Class;
      
      public static var sUserProgress:§2!T§ = null;
      
      public static var §>!e§:Boolean = true;
      
      private static var §1H§:AngryBirdsFP11 = null;
      
      public static var §9p§:Sprite = null;
      
      public static var §@!C§:§7!l§;
      
      public static var §@!&§:Boolean = false;
      
      protected static var §6!]§:int = 0;
      
      protected static var §#o§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]!9§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §]m§ = 1024;
                  loop2:
                  while(true)
                  {
                     §0N§ = 768;
                     loop3:
                     while(true)
                     {
                        §2!y§ = false;
                        loop4:
                        while(true)
                        {
                           §93§ = 2000;
                           while(true)
                           {
                              §0!f§ = false;
                              addr211:
                              while(_loc2_)
                              {
                                 §=O§ = 750;
                                 continue loop4;
                              }
                              addr101:
                              continue loop1;
                              if(_loc2_)
                              {
                                 §9p§ = null;
                                 loop17:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §@!&§ = false;
                                    while(true)
                                    {
                                       §6!]§ = 0;
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             addr65:
                                             if(!(_loc2_ || AngryBirdsFP11))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop17;
                                       }
                                       addr182:
                                       while(!_loc1_)
                                       {
                                          §`!4§ = 15;
                                          loop9:
                                          while(!_loc1_)
                                          {
                                             §"^§ = AngryBirdsFP11_mViewLibraryBin;
                                             while(!_loc1_)
                                             {
                                                §2t§ = AngryBirdsFP11_mAssetMapBin;
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §7!`§ = AngryBirdsFP11_mItemDataTableBin;
                                                   while(true)
                                                   {
                                                      §]!]§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                                      addr144:
                                                      while(_loc2_)
                                                      {
                                                         sUserProgress = null;
                                                         break loop17;
                                                      }
                                                      continue loop9;
                                                   }
                                                   if(!(_loc1_ && AngryBirdsFP11))
                                                   {
                                                      return;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                          §§goto(addr65);
                                       }
                                       §§goto(addr211);
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr42:
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr51);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §1H§ = null;
                                                }
                                                addr118:
                                             }
                                          }
                                          while(!(_loc1_ && _loc2_))
                                          {
                                             §§goto(addr101);
                                             §§goto(addr42);
                                          }
                                          continue loop4;
                                          addr94:
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr144);
                                    §§goto(addr82);
                                 }
                                 addr82:
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      private var §+!'§:§ !D§;
      
      private var §`7§:int;
      
      private var §@w§:Boolean;
      
      private var §?!`§:int;
      
      private var §<1§:int;
      
      protected var §[H§:Boolean;
      
      public function AngryBirdsFP11(param1:§#!%§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+!'§ = new § !D§();
            loop0:
            while(true)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               loop1:
               while(true)
               {
                  this.initialize();
                  addr126:
                  while(_loc3_)
                  {
                     this.initStates();
                  }
                  continue loop0;
                  loop6:
                  while(true)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue loop1;
                     }
                     §§push(stage.stageHeight == §7P§);
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && this))
                        {
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              loop7:
                              while(true)
                              {
                                 addr52:
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       this.onStageResize(null);
                                    }
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop6;
                                    }
                                    addr75:
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop6;
                                       }
                                       §§goto(addr126);
                                    }
                                    while(true)
                                    {
                                       §§push(stage.stageWidth == §;!Z§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr98:
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop6;
                                             }
                                          }
                                          addr98:
                                       }
                                       §§goto(addr98);
                                       §§goto(addr75);
                                    }
                                 }
                                 break loop6;
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr52);
                  }
                  return;
               }
            }
         }
         §§goto(addr122);
      }
      
      public static function get stageWidth() : int
      {
         return §6!]§;
      }
      
      public static function get stageHeight() : int
      {
         return §#o§;
      }
      
      public static function §0S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || AngryBirdsFP11)
         {
            §>!e§ = param1;
            do
            {
               §6!H§.§1^§(§>!e§);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public static function §`;§() : Boolean
      {
         return §>!e§;
      }
      
      public static function get §;!Z§() : int
      {
         return §`!c§.getAppWidth();
      }
      
      public static function get §7P§() : int
      {
         return §`!c§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§6!H§.§-^§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr89:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              §6!H§.playSound("ThemeMusic","Channel_Theme",999);
                              addr83:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr83);
                     }
                     return;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function §`!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!H§.§1x§("Channel_Theme");
         }
      }
      
      public static function get §`!c§() : AngryBirdsFP11
      {
         return §1H§;
      }
      
      protected function getAssetMap() : XML
      {
         return §`!<§.§ !0§(§2t§);
      }
      
      protected function getUIData() : XML
      {
         return §`!<§.§ !0§(§"^§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §5V§.§^Z§.init(§,!l§.§"!D§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§+!'§,this.§"A§);
            while(true)
            {
               §1H§ = this;
               loop1:
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  while(true)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     loop3:
                     while(!(_loc3_ && this))
                     {
                        §`!B§ = §;!Z§;
                        while(true)
                        {
                           § !]§ = §7P§;
                           loop5:
                           for(; !_loc3_; addr25:,if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           },if(false)
                           {
                              while(true)
                              {
                                 §[g§.§-J§(§>!+§);
                                 §§goto(addr38);
                                 §§goto(addr25);
                              }
                              continue;
                              addr34:
                           },var _loc1_:XMLList = §`!<§.§ !0§(§]!9§).children(),if(!_loc3_)
                           {
                              §11§.init(_loc1_);
                              §6!H§.§^!s§("CHANNEL_THEME",1,1);
                              §6!H§.§^!s§("CHANNEL_AMBIENT",1,1);
                              this.initUserProgress();
                              stage.addEventListener(Event.MOUSE_LEAVE,this.§[!§);
                              stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
                              addr276:
                              addr287:
                              addr269:
                              addr283:
                              if(_loc2_)
                              {
                                 stage.addEventListener(Event.RESIZE,this.onStageResize);
                                 addr235:
                                 if(_loc2_)
                                 {
                                    stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                                    addr225:
                                    if(!_loc3_)
                                    {
                                       §@!C§ = new §7!l§(stage);
                                       addr208:
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(§5+§.§^Z§);
                                             §§push(§2!y§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().§[!j§ = §§pop();
                                             if(!_loc3_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_ && _loc1_)
                                                      {
                                                         §§goto(addr276);
                                                      }
                                                      return;
                                                      addr201:
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr269);
                                 }
                                 §§goto(addr283);
                              }
                              addr265:
                              §§goto(addr265);
                           },§§goto(addr201))
                           {
                              §4!]§.init(this,§;!Z§,§7P§);
                              while(true)
                              {
                                 this.initLevelMain();
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    §4!]§.§3!V§.visible = false;
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       continue loop1;
                                       while(true)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §[g§.§3s§(true);
                                             if(_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr34);
            }
         }
         §§goto(addr94);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §4!]§.§8C§ = new §-!7§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            sUserProgress = new §2!T§(§6S§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!-§(new §,h§(false));
            while(true)
            {
               §?!-§(new §%]§(false));
               addr231:
               loop1:
               while(true)
               {
                  §?!-§(new §4A§(false));
                  addr224:
                  while(true)
                  {
                     §?!-§(new §?U§(false));
                     continue loop1;
                  }
               }
            }
            addr237:
         }
         while(true)
         {
            §?!-§(new §6!U§(false));
            loop5:
            while(true)
            {
               §?!-§(new StatePlay(false));
               loop6:
               while(true)
               {
                  §?!-§(new §=!#§(false));
                  while(true)
                  {
                     §?!-§(new §%N§(false));
                     addr163:
                     while(_loc1_)
                     {
                        continue loop6;
                        if(_loc1_ || _loc2_)
                        {
                           §?!-§(new StateCutScene(false));
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §"A§(param1:ByteArray) : void
      {
      }
      
      protected function §[!§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §+!D§.§&!^§();
         }
      }
      
      protected function §0!r§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §+!D§.§-A§();
            if(_loc5_ || _loc2_)
            {
               if(this.§@w§)
               {
                  if(!(_loc4_ && this))
                  {
                     addr43:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§<1§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§<1§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        §§push(this.§<1§);
                        loop0:
                        while(true)
                        {
                           §§push(§`!4§);
                           addr118:
                           while(true)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 addr77:
                                 return;
                                 addr76:
                              }
                              while(true)
                              {
                                 this.§@w§ = false;
                                 continue loop0;
                              }
                           }
                        }
                        addr75:
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr77);
            }
            §§goto(addr43);
         }
         §§goto(addr75);
      }
      
      public function §+#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            §§push(this.§[H§);
            loop0:
            for(; !§§pop(); if(_loc6_ && _loc2_)
            {
               continue;
            },if(!§§pop())
            {
               §§goto(addr70);
            },§§goto(addr31))
            {
               loop1:
               while(true)
               {
                  §§push(stage.stageWidth < 2);
                  if(!(_loc6_ && _loc2_))
                  {
                     continue loop0;
                  }
                  addr70:
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr71:
                     addr31:
                     while(true)
                     {
                        §§push(stage.stageHeight < 2);
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                     while(§§pop())
                     {
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr37);
                           }
                           break loop0;
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc7_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr71);
                     }
                     §§push(stage.stageWidth / §;!Z§);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(stage.stageHeight / §7P§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc7_)
                     {
                        addr242:
                        if(_loc2_ < _loc3_)
                        {
                           addr247:
                           _loc4_ = Number(stage.stageWidth);
                           addr244:
                           addr248:
                           §§push(stage.stageWidth * (§7P§ / §;!Z§));
                           if(!(_loc6_ && _loc2_))
                           {
                              addr239:
                              _loc5_ = Number(§§pop());
                              addr153:
                              §4!]§.§,!0§(0,0,stage.stageWidth,stage.stageHeight);
                              addr162:
                              addr240:
                              if(!_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    setViewSize(stage.stageWidth,stage.stageHeight);
                                    addr150:
                                    if(_loc7_)
                                    {
                                       §6!]§ = stage.stageWidth;
                                       addr140:
                                       if(_loc7_)
                                       {
                                          §#o§ = stage.stageHeight;
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(_loc6_ && _loc2_)
                                             {
                                                §§goto(addr150);
                                             }
                                             return;
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr162);
                                    }
                                    addr221:
                                    if(_loc7_)
                                    {
                                       §§push(Number(stage.stageHeight));
                                       if(_loc7_ || this)
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc5_ = §§pop();
                                             addr181:
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr153);
                                             }
                                             §§goto(addr240);
                                          }
                                          addr198:
                                          §§push(Number(§§pop()));
                                       }
                                       if(_loc7_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(!_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr221);
                                             }
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr239);
                                       addr223:
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr198);
                        §§push(stage.stageHeight * (§;!Z§ / §7P§));
                     }
                     §§goto(addr223);
                  }
               }
            }
            return;
         }
         addr37:
      }
      
      public function §catch§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(_loc3_)
         {
            if(_loc1_ - this.§`7§ > §=O§)
            {
               while(true)
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              this.§=!n§(_loc1_);
                           }
                           else
                           {
                              break;
                              addr92:
                           }
                        }
                        break;
                     }
                     break;
                  }
                  if(_loc3_ || this)
                  {
                     this.§&!,§(_loc1_);
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §2!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!,§(0);
         }
      }
      
      public function §[k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               if(_loc2_ || this)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_)
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
      
      private function §&!,§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[H§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               loop1:
               while(true)
               {
                  this.§`7§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§@w§ = false;
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §=!n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[H§ = true;
         }
         loop0:
         while(true)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            while(true)
            {
               this.§`7§ = param1;
               loop2:
               while(_loc3_)
               {
                  this.§?!`§ = 0;
                  loop3:
                  do
                  {
                     this.§<1§ = 0;
                     while(_loc3_)
                     {
                        continue loop0;
                        this.§@w§ = true;
                        if(!(_loc2_ && param1))
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(_loc2_);
                  
                  return;
               }
            }
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(!(_loc4_ && _loc2_))
         {
            if(Keyboard.F === _loc2_)
            {
               addr55:
               §§push(0);
               if(_loc3_ || _loc2_)
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
         §§goto(addr55);
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
               §5V§.§^Z§.§9[§();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            LevelManager.§,v§(JSON.parse(this.§+!'§.getFileAsString("Chapters.json")));
            do
            {
               this.initializeGame();
            }
            while(_loc1_);
            
            if(!_loc1_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc5_ && this))
         {
            §§push(§4!]§.§3!V§);
            if(_loc4_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc4_)
                  {
                     addr40:
                     §4!]§.§3!V§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  if(!§-#§().isGenericState())
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() == §+_§.STATE_STATUS_COMPLETED)
                           {
                           }
                           §§goto(addr67);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§[g§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + §-#§().mName);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() + " New State = ");
                              if(_loc5_ && this)
                              {
                              }
                              addr138:
                              §§pop().log(§§pop());
                              while(true)
                              {
                                 § !,§(§-#§().mNextState);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr67);
                              }
                              addr139:
                           }
                           §§push(§§pop() + §-#§().mNextState);
                        }
                        §§goto(addr138);
                     }
                  }
                  addr67:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
               §§goto(addr139);
            }
         }
         §§goto(addr40);
      }
      
      override public function getAppWidth() : Number
      {
         return §]m§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0N§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §93§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!_loc1_)
         {
            §§push(VERSION);
            if(_loc2_)
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!_loc1_)
               {
                  §§push(", ");
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr56);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                     addr55:
                     addr56:
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        addr50:
                        §§push("Server: ");
                     }
                     return §§pop();
                     §§push(§§pop() + §9n§);
                  }
                  §§goto(addr56);
               }
               §§goto(addr50);
            }
            §§goto(addr55);
         }
         §§goto(addr56);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §4!]§.§`!5§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §4!]§.§%'§(this.§+!'§.§package§,§+!4§.§,!o§(),this.onGraphicsInitialized);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §`!<§.§ !0§(§]!]§);
      }
      
      protected function getItemData() : XML
      {
         return §`!<§.§ !0§(§7!`§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §@!&§ = true;
            do
            {
               if(!§0!f§)
               {
                  § !,§(§4A§.§3F§);
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr74:
                  }
               }
               continue;
               return;
            }
            while(!(_loc2_ || _loc3_));
            
         }
         § !,§(§,h§.§3F§);
         §§goto(addr74);
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(this.§@w§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§?!`§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.§?!`§ = _loc3_;
                     }
                     if(_loc5_ || this)
                     {
                        addr116:
                        §§push(§,!]§.§1!8§());
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr111:
                              while(true)
                              {
                                 super.onEnterFrame(param1);
                              }
                              addr111:
                           }
                           §§goto(addr119);
                        }
                        addr118:
                     }
                     loop0:
                     while(true)
                     {
                        §§push(this.§[H§);
                        if(_loc5_)
                        {
                           while(§§pop())
                           {
                              if(_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 this.§[H§ = false;
                              }
                              if(_loc5_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                              addr120:
                              while(true)
                              {
                                 §§goto(addr111);
                              }
                           }
                           return;
                           addr93:
                        }
                        §§goto(addr118);
                        §§goto(addr111);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr120);
               }
               §§goto(addr116);
            }
            §§goto(addr93);
         }
         addr119:
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
