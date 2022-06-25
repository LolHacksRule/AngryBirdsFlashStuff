package
{
   import §"R§.§ !Q§;
   import §%e§.§[P§;
   import §&A§.§ !f§;
   import §&A§.§,6§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §57§.§,!b§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§!i§;
   import §9!5§.§"Y§;
   import §9!5§.§#!c§;
   import §9!5§.§%@§;
   import §9!5§.§'!>§;
   import §9!5§.§-!-§;
   import §9!5§.§0!`§;
   import §9!5§.§17§;
   import §9!5§.§>!0§;
   import §9!5§.StateCutScene;
   import §9!5§.StatePlay;
   import §;!5§.§5>§;
   import §<!1§.§<F§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §]!§.§4!s§;
   import §^;§.§6!S§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import §^_§.§=H§;
   import com.rovio.assets.§,c§;
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
   import §true§.§ _§;
   import §true§.§#!&§;
   
   public class AngryBirdsFP11 extends § !f§
   {
      
      protected static var §!"§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §#!x§:String;
      
      public static var §8!`§:String;
      
      public static const §[o§:int = 1024;
      
      public static const §-S§:int = 768;
      
      public static const §[!d§:Boolean = false;
      
      public static const §,P§:int = 2000;
      
      public static const §2!f§:Boolean = false;
      
      private static const §,!m§:int = 750;
      
      private static const §+!§:int = 3;
      
      private static const §&!r§:int = 15;
      
      protected static var §1!W§:Class;
      
      protected static var §`!1§:Class;
      
      protected static var § $§:Class;
      
      protected static var § h§:Class;
      
      public static var sUserProgress:§4!s§ = null;
      
      public static var §-!W§:Boolean = true;
      
      private static var §6!f§:AngryBirdsFP11 = null;
      
      public static var §%!r§:Sprite = null;
      
      public static var §!L§:§#!&§;
      
      public static var §`-§:Boolean = false;
      
      protected static var §<<§:int = 0;
      
      protected static var §5!X§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!"§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §[o§ = 1024;
                  loop2:
                  while(true)
                  {
                     §-S§ = 768;
                     loop3:
                     while(true)
                     {
                        §[!d§ = false;
                        loop4:
                        while(true)
                        {
                           §,P§ = 2000;
                           while(true)
                           {
                              §2!f§ = false;
                              addr211:
                              while(_loc2_)
                              {
                                 §,!m§ = 750;
                                 continue loop4;
                              }
                              addr101:
                              continue loop1;
                              if(_loc2_)
                              {
                                 §%!r§ = null;
                                 loop17:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §`-§ = false;
                                    while(true)
                                    {
                                       §<<§ = 0;
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
                                          §&!r§ = 15;
                                          loop9:
                                          while(!_loc1_)
                                          {
                                             §1!W§ = AngryBirdsFP11_mViewLibraryBin;
                                             while(!_loc1_)
                                             {
                                                §`!1§ = AngryBirdsFP11_mAssetMapBin;
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   § $§ = AngryBirdsFP11_mItemDataTableBin;
                                                   while(true)
                                                   {
                                                      § h§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
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
                                                   §6!f§ = null;
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
      
      private var §2z§:§[P§;
      
      private var §`§:int;
      
      private var §4o§:Boolean;
      
      private var §?!!§:int;
      
      private var §8! §:int;
      
      protected var §8!Q§:Boolean;
      
      public function AngryBirdsFP11(param1:§,6§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2z§ = new §[P§();
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
                     §§push(stage.stageHeight == §@U§);
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
                                       §§push(stage.stageWidth == §>!2§);
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
         return §<<§;
      }
      
      public static function get stageHeight() : int
      {
         return §5!X§;
      }
      
      public static function §-#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || AngryBirdsFP11)
         {
            §-!W§ = param1;
            do
            {
               § !Q§.§each §(§-!W§);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public static function §"!u§() : Boolean
      {
         return §-!W§;
      }
      
      public static function get §>!2§() : int
      {
         return §3!a§.getAppWidth();
      }
      
      public static function get §@U§() : int
      {
         return §3!a§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§ !Q§.§5s§("Channel_Theme"));
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
                              § !Q§.playSound("ThemeMusic","Channel_Theme",999);
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
      
      public static function §,!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !Q§.§9!t§("Channel_Theme");
         }
      }
      
      public static function get §3!a§() : AngryBirdsFP11
      {
         return §6!f§;
      }
      
      protected function getAssetMap() : XML
      {
         return §,>§.§%2§(§`!1§);
      }
      
      protected function getUIData() : XML
      {
         return §,>§.§%2§(§1!W§);
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
            §6!S§.§<d§.init(§5>§.§?T§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2z§,this.§;B§);
            while(true)
            {
               §6!f§ = this;
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
                        §%#§ = §>!2§;
                        while(true)
                        {
                           §="§ = §@U§;
                           loop5:
                           for(; !_loc3_; addr25:,if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           },if(false)
                           {
                              while(true)
                              {
                                 §!>§.§?!S§(§8!0§);
                                 §§goto(addr38);
                                 §§goto(addr25);
                              }
                              continue;
                              addr34:
                           },var _loc1_:XMLList = §,>§.§%2§(§!"§).children(),if(!_loc3_)
                           {
                              §,c§.init(_loc1_);
                              § !Q§.§]!h§("CHANNEL_THEME",1,1);
                              § !Q§.§]!h§("CHANNEL_AMBIENT",1,1);
                              this.initUserProgress();
                              stage.addEventListener(Event.MOUSE_LEAVE,this.§64§);
                              stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&b§);
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
                                       §!L§ = new §#!&§(stage);
                                       addr208:
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(§,!b§.§<d§);
                                             §§push(§[!d§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().§^!K§ = §§pop();
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
                              § _§.init(this,§>!2§,§@U§);
                              while(true)
                              {
                                 this.initLevelMain();
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    § _§.§2u§.visible = false;
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
                                             §!>§.§#!X§(true);
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
            § _§.§!6§ = new §^g§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            sUserProgress = new §4!s§(§8!`§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!`§(new §>!0§(false));
            while(true)
            {
               §9!`§(new §#!c§(false));
               addr231:
               loop1:
               while(true)
               {
                  §9!`§(new §!i§(false));
                  addr224:
                  while(true)
                  {
                     §9!`§(new §0!`§(false));
                     continue loop1;
                  }
               }
            }
            addr237:
         }
         while(true)
         {
            §9!`§(new § B§(false));
            loop5:
            while(true)
            {
               §9!`§(new StatePlay(false));
               loop6:
               while(true)
               {
                  §9!`§(new §%@§(false));
                  while(true)
                  {
                     §9!`§(new §'!>§(false));
                     addr163:
                     while(_loc1_)
                     {
                        continue loop6;
                        if(_loc1_ || _loc2_)
                        {
                           §9!`§(new StateCutScene(false));
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §;B§(param1:ByteArray) : void
      {
      }
      
      protected function §64§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=H§.§'!V§();
         }
      }
      
      protected function §&b§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §=H§.§"u§();
            if(_loc5_ || _loc2_)
            {
               if(this.§4o§)
               {
                  if(!(_loc4_ && this))
                  {
                     addr43:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§8! §);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§8! § = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        §§push(this.§8! §);
                        loop0:
                        while(true)
                        {
                           §§push(§&!r§);
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
                                 this.§4o§ = false;
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
      
      public function §+!R§() : void
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
            §§push(this.§8!Q§);
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
                     §§push(stage.stageWidth / §>!2§);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(stage.stageHeight / §@U§);
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
                           §§push(stage.stageWidth * (§@U§ / §>!2§));
                           if(!(_loc6_ && _loc2_))
                           {
                              addr239:
                              _loc5_ = Number(§§pop());
                              addr153:
                              § _§.§%L§(0,0,stage.stageWidth,stage.stageHeight);
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
                                       §<<§ = stage.stageWidth;
                                       addr140:
                                       if(_loc7_)
                                       {
                                          §5!X§ = stage.stageHeight;
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
                        §§push(stage.stageHeight * (§>!2§ / §@U§));
                     }
                     §§goto(addr223);
                  }
               }
            }
            return;
         }
         addr37:
      }
      
      public function §8!d§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(_loc3_)
         {
            if(_loc1_ - this.§`§ > §,!m§)
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
                              this.§7<§(_loc1_);
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
                     this.§0!X§(_loc1_);
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §5C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0!X§(0);
         }
      }
      
      public function §6<§() : Boolean
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
      
      private function §0!X§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§8!Q§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               loop1:
               while(true)
               {
                  this.§`§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§4o§ = false;
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
      
      private function §7<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!Q§ = true;
         }
         loop0:
         while(true)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            while(true)
            {
               this.§`§ = param1;
               loop2:
               while(_loc3_)
               {
                  this.§?!!§ = 0;
                  loop3:
                  do
                  {
                     this.§8! § = 0;
                     while(_loc3_)
                     {
                        continue loop0;
                        this.§4o§ = true;
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
               §6!S§.§<d§.§1[§();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            LevelManager.§4!#§(JSON.parse(this.§2z§.getFileAsString("Chapters.json")));
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
            §§push(§ _§.§2u§);
            if(_loc4_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc4_)
                  {
                     addr40:
                     § _§.§2u§.update(param1);
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
                  if(!§4C§().isGenericState())
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() == §?Y§.STATE_STATUS_COMPLETED)
                           {
                           }
                           §§goto(addr67);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§!>§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + §4C§().mName);
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
                                 §,!6§(§4C§().mNextState);
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
                           §§push(§§pop() + §4C§().mNextState);
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
         return §[o§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-S§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §,P§;
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
                     §§push(§§pop() + §#!x§);
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
            § _§.§'!w§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            § _§.§#!"§(this.§2z§.§`Q§,§<F§.§@!u§(),this.onGraphicsInitialized);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §,>§.§%2§(§ h§);
      }
      
      protected function getItemData() : XML
      {
         return §,>§.§%2§(§ $§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §`-§ = true;
            do
            {
               if(!§2!f§)
               {
                  §,!6§(§!i§.§?h§);
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
         §,!6§(§>!0§.§?h§);
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
            §§push(this.§4o§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§?!!§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.§?!!§ = _loc3_;
                     }
                     if(_loc5_ || this)
                     {
                        addr116:
                        §§push(§^b§.§@@§());
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
                        §§push(this.§8!Q§);
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
                                 this.§8!Q§ = false;
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
