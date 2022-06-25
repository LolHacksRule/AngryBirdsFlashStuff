package
{
   import §!!K§.§else§;
   import §"x§.§-8§;
   import §"x§.§3!v§;
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §+K§.§7$§;
   import §-d§.§%d§;
   import §2!H§.§-!,§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §7X§.§^"§;
   import §;H§.§!y§;
   import §;H§.§#!G§;
   import §;H§.§%!D§;
   import §;H§.§%!R§;
   import §;H§.§,!]§;
   import §;H§.§-!X§;
   import §;H§.§5!D§;
   import §;H§.§6M§;
   import §;H§.§9!3§;
   import §;H§.§;W§;
   import §;H§.StateCutScene;
   import §;H§.StatePlay;
   import §;H§.§[!4§;
   import §>! §.§^!c§;
   import §>! §.§`o§;
   import §[!]§.§ !#§;
   import §]2§.§-9§;
   import §]2§.§[!O§;
   import §^!W§.§'Q§;
   import com.rovio.assets.§%!T§;
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
   
   public class AngryBirdsFP11 extends §[!O§
   {
      
      protected static var §"!W§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §+!V§:String;
      
      public static var §;!1§:String;
      
      public static const §"!c§:int = 1024;
      
      public static const §%g§:int = 768;
      
      public static const §@a§:Boolean = false;
      
      public static const §;!N§:int = 2000;
      
      public static const §@!F§:Boolean = false;
      
      private static const §"!!§:int = 750;
      
      private static const §=[§:int = 3;
      
      private static const §+!X§:int = 15;
      
      protected static var §"!+§:Class;
      
      protected static var §=!b§:Class;
      
      protected static var §"!P§:Class;
      
      protected static var §1n§:Class;
      
      public static var sUserProgress:§'Q§ = null;
      
      public static var §5`§:Boolean = true;
      
      private static var §;!K§:AngryBirdsFP11 = null;
      
      public static var §;[§:Sprite = null;
      
      public static var §<!h§:§`o§;
      
      public static var §6!c§:Boolean = false;
      
      protected static var §-!P§:int = 0;
      
      protected static var §6!l§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"!W§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §"!c§ = 1024;
                  loop2:
                  while(true)
                  {
                     §%g§ = 768;
                     loop3:
                     while(true)
                     {
                        §@a§ = false;
                        loop4:
                        while(true)
                        {
                           §;!N§ = 2000;
                           while(true)
                           {
                              §@!F§ = false;
                              addr211:
                              while(_loc2_)
                              {
                                 §"!!§ = 750;
                                 continue loop4;
                              }
                              addr101:
                              continue loop1;
                              if(_loc2_)
                              {
                                 §;[§ = null;
                                 loop17:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §6!c§ = false;
                                    while(true)
                                    {
                                       §-!P§ = 0;
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
                                          §+!X§ = 15;
                                          loop9:
                                          while(!_loc1_)
                                          {
                                             §"!+§ = AngryBirdsFP11_mViewLibraryBin;
                                             while(!_loc1_)
                                             {
                                                §=!b§ = AngryBirdsFP11_mAssetMapBin;
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §"!P§ = AngryBirdsFP11_mItemDataTableBin;
                                                   while(true)
                                                   {
                                                      §1n§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
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
                                                   §;!K§ = null;
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
      
      private var §#I§:§7$§;
      
      private var §="§:int;
      
      private var §=u§:Boolean;
      
      private var §#!f§:int;
      
      private var §8!4§:int;
      
      protected var § '§:Boolean;
      
      public function AngryBirdsFP11(param1:§-9§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#I§ = new §7$§();
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
                     §§push(stage.stageHeight == §]!m§);
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
                                       §§push(stage.stageWidth == §3!5§);
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
         return §-!P§;
      }
      
      public static function get stageHeight() : int
      {
         return §6!l§;
      }
      
      public static function §5!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || AngryBirdsFP11)
         {
            §5`§ = param1;
            do
            {
               §9'§.§[!f§(§5`§);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public static function §0!b§() : Boolean
      {
         return §5`§;
      }
      
      public static function get §3!5§() : int
      {
         return §3l§.getAppWidth();
      }
      
      public static function get §]!m§() : int
      {
         return §3l§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§9'§.§<!5§("Channel_Theme"));
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
                              §9'§.playSound("ThemeMusic","Channel_Theme",999);
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
      
      public static function §8#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9'§.§7!,§("Channel_Theme");
         }
      }
      
      public static function get §3l§() : AngryBirdsFP11
      {
         return §;!K§;
      }
      
      protected function getAssetMap() : XML
      {
         return §3!v§.§;!-§(§=!b§);
      }
      
      protected function getUIData() : XML
      {
         return §3!v§.§;!-§(§"!+§);
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
            § !#§.§7!j§.init(§^"§.§07§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§#I§,this.§>!Q§);
            while(true)
            {
               §;!K§ = this;
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
                        §]!<§ = §3!5§;
                        while(true)
                        {
                           §4!j§ = §]!m§;
                           loop5:
                           for(; !_loc3_; addr25:,if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           },if(false)
                           {
                              while(true)
                              {
                                 §-8§.§4!2§(§ !j§);
                                 §§goto(addr38);
                                 §§goto(addr25);
                              }
                              continue;
                              addr34:
                           },var _loc1_:XMLList = §3!v§.§;!-§(§"!W§).children(),if(!_loc3_)
                           {
                              §%!T§.init(_loc1_);
                              §9'§.§+!S§("CHANNEL_THEME",1,1);
                              §9'§.§+!S§("CHANNEL_AMBIENT",1,1);
                              this.initUserProgress();
                              stage.addEventListener(Event.MOUSE_LEAVE,this.§1!r§);
                              stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
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
                                       §<!h§ = new §`o§(stage);
                                       addr208:
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(§-!,§.§7!j§);
                                             §§push(§@a§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().§8!u§ = §§pop();
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
                              §^!c§.init(this,§3!5§,§]!m§);
                              while(true)
                              {
                                 this.initLevelMain();
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    §^!c§.§"!k§.visible = false;
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
                                             §-8§.§76§(true);
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
            §^!c§.§5!Y§ = new §'u§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            sUserProgress = new §'Q§(§;!1§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!]§(new §5!D§(false));
            while(true)
            {
               §!]§(new §;W§(false));
               addr231:
               loop1:
               while(true)
               {
                  §!]§(new §%!R§(false));
                  addr224:
                  while(true)
                  {
                     §!]§(new §,!]§(false));
                     continue loop1;
                  }
               }
            }
            addr237:
         }
         while(true)
         {
            §!]§(new §!y§(false));
            loop5:
            while(true)
            {
               §!]§(new StatePlay(false));
               loop6:
               while(true)
               {
                  §!]§(new §-!X§(false));
                  while(true)
                  {
                     §!]§(new §%!D§(false));
                     addr163:
                     while(_loc1_)
                     {
                        continue loop6;
                        if(_loc1_ || _loc2_)
                        {
                           §!]§(new StateCutScene(false));
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §>!Q§(param1:ByteArray) : void
      {
      }
      
      protected function §1!r§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §?8§.§`!H§();
         }
      }
      
      protected function §<k§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §?8§.§#!$§();
            if(_loc5_ || _loc2_)
            {
               if(this.§=u§)
               {
                  if(!(_loc4_ && this))
                  {
                     addr43:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§8!4§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§8!4§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        §§push(this.§8!4§);
                        loop0:
                        while(true)
                        {
                           §§push(§+!X§);
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
                                 this.§=u§ = false;
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
      
      public function §&!d§() : void
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
            §§push(this.§ '§);
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
                     §§push(stage.stageWidth / §3!5§);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(stage.stageHeight / §]!m§);
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
                           §§push(stage.stageWidth * (§]!m§ / §3!5§));
                           if(!(_loc6_ && _loc2_))
                           {
                              addr239:
                              _loc5_ = Number(§§pop());
                              addr153:
                              §^!c§.§<!B§(0,0,stage.stageWidth,stage.stageHeight);
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
                                       §-!P§ = stage.stageWidth;
                                       addr140:
                                       if(_loc7_)
                                       {
                                          §6!l§ = stage.stageHeight;
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
                        §§push(stage.stageHeight * (§3!5§ / §]!m§));
                     }
                     §§goto(addr223);
                  }
               }
            }
            return;
         }
         addr37:
      }
      
      public function §1T§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(_loc3_)
         {
            if(_loc1_ - this.§="§ > §"!!§)
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
                              this.§"B§(_loc1_);
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
                     this.§[!5§(_loc1_);
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §&2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[!5§(0);
         }
      }
      
      public function §`m§() : Boolean
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
      
      private function §[!5§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ '§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               loop1:
               while(true)
               {
                  this.§="§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§=u§ = false;
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
      
      private function §"B§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ '§ = true;
         }
         loop0:
         while(true)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            while(true)
            {
               this.§="§ = param1;
               loop2:
               while(_loc3_)
               {
                  this.§#!f§ = 0;
                  loop3:
                  do
                  {
                     this.§8!4§ = 0;
                     while(_loc3_)
                     {
                        continue loop0;
                        this.§=u§ = true;
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
               § !#§.§7!j§.§5!p§();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            LevelManager.§0U§(JSON.parse(this.§#I§.getFileAsString("Chapters.json")));
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
            §§push(§^!c§.§"!k§);
            if(_loc4_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc4_)
                  {
                     addr40:
                     §^!c§.§"!k§.update(param1);
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
                  if(!§0@§().isGenericState())
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() == §,!E§.STATE_STATUS_COMPLETED)
                           {
                           }
                           §§goto(addr67);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§-8§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + §0@§().mName);
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
                                 §@!n§(§0@§().mNextState);
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
                           §§push(§§pop() + §0@§().mNextState);
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
         return §"!c§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%g§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §;!N§;
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
                     §§push(§§pop() + §+!V§);
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
            §^!c§.§-#§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §^!c§.§-f§(this.§#I§.§,!U§,§%d§.§,!#§(),this.onGraphicsInitialized);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §3!v§.§;!-§(§1n§);
      }
      
      protected function getItemData() : XML
      {
         return §3!v§.§;!-§(§"!P§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §6!c§ = true;
            do
            {
               if(!§@!F§)
               {
                  §@!n§(§%!R§.§"!s§);
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
         §@!n§(§5!D§.§"!s§);
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
            §§push(this.§=u§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§#!f§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.§#!f§ = _loc3_;
                     }
                     if(_loc5_ || this)
                     {
                        addr116:
                        §§push(§else§.§9!i§());
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
                        §§push(this.§ '§);
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
                                 this.§ '§ = false;
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
