package
{
   import § !@§.§ !"§;
   import § !@§.§ q§;
   import § !@§.§&b§;
   import § !@§.§+W§;
   import § !@§.§5!#§;
   import § !@§.§6!@§;
   import § !@§.§7§;
   import § !@§.§8!M§;
   import § !@§.§8A§;
   import § !@§.StateCutScene;
   import § !@§.StatePlay;
   import § !@§.§^!K§;
   import § !@§.§for §;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §+F§.§"o§;
   import §1!-§.§[4§;
   import §3a§.§"X§;
   import §3a§.§'q§;
   import §3a§.§7!+§;
   import §5!L§.§0!L§;
   import §5!L§.§=w§;
   import §6!F§.§9A§;
   import §6A§.§ !§;
   import §7W§.§'!-§;
   import §7g§.§1Q§;
   import §7j§.§5!N§;
   import §7j§.§8P§;
   import §=!0§.§>I§;
   import §?!3§.§`!K§;
   import §^!L§.§6<§;
   import com.rovio.assets.§3!0§;
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
   
   public class AngryBirdsFP11 extends §8P§
   {
      
      protected static var §1!1§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §"!&§:String;
      
      public static var §,A§:String;
      
      public static const §9!#§:int = 1024;
      
      public static const §0i§:int = 768;
      
      public static const §%Z§:Boolean = false;
      
      public static const § n§:int = 2000;
      
      public static const §5p§:Boolean = false;
      
      private static const §6V§:int = 750;
      
      private static const §"#§:int = 3;
      
      private static const §9U§:int = 15;
      
      protected static var §3N§:Class;
      
      protected static var §6l§:Class;
      
      protected static var §!<§:Class;
      
      protected static var §,s§:Class;
      
      public static var sUserProgress:§`!K§ = null;
      
      public static var §"0§:Boolean = true;
      
      private static var §4!"§:AngryBirdsFP11 = null;
      
      public static var §@?§:Sprite = null;
      
      public static var §#!<§:§0!L§;
      
      public static var §,E§:Boolean = false;
      
      protected static var §&n§:int = 0;
      
      protected static var §7?§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §9!#§ = 1024;
            §0i§ = 768;
            if(_loc2_ || _loc2_)
            {
               §%Z§ = false;
               § n§ = 2000;
               §5p§ = false;
               §6V§ = 750;
               if(_loc2_ || _loc2_)
               {
                  §"#§ = 3;
                  if(!(_loc1_ && _loc2_))
                  {
                     §9U§ = 15;
                     if(_loc2_ || AngryBirdsFP11)
                     {
                        §3N§ = AngryBirdsFP11_mViewLibraryBin;
                        if(_loc2_)
                        {
                           §6l§ = AngryBirdsFP11_mAssetMapBin;
                           addr100:
                           §!<§ = AngryBirdsFP11_mItemDataTableBin;
                           if(_loc2_ || _loc1_)
                           {
                              addr110:
                              §,s§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr130:
                                 sUserProgress = null;
                                 §"0§ = true;
                                 §4!"§ = null;
                              }
                              §§goto(addr139);
                           }
                           §&n§ = 0;
                           §7?§ = 0;
                           addr139:
                           §@?§ = null;
                           §§goto(addr142);
                        }
                        addr142:
                        §,E§ = false;
                        if(_loc1_)
                        {
                        }
                        return;
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr100);
            }
            §§goto(addr110);
         }
         §§goto(addr130);
      }
      
      private var §9!4§:§'!-§;
      
      private var §=O§:int;
      
      private var §'!K§:Boolean;
      
      private var §`!;§:int;
      
      private var §@&§:int;
      
      protected var §-=§:Boolean;
      
      public function AngryBirdsFP11(param1:§5!N§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§9!4§ = new §'!-§();
            if(!(_loc3_ && this))
            {
               addr34:
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               this.initialize();
               if(!_loc3_)
               {
                  this.initStates();
                  if(_loc2_ || _loc3_)
                  {
                     addr66:
                     §§push(stage.stageWidth == screenWidth);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc2_ || param1)
                        {
                           if(!§§pop())
                           {
                              if(!_loc3_)
                              {
                                 addr99:
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    §§push(stage.stageHeight == screenHeight);
                                    if(_loc3_ && this)
                                    {
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr117);
                              }
                              §§push(!§§pop());
                           }
                        }
                        addr114:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr117:
                              this.onStageResize(null);
                           }
                        }
                        return;
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr34);
      }
      
      public static function get stageWidth() : int
      {
         return §&n§;
      }
      
      public static function get stageHeight() : int
      {
         return §7?§;
      }
      
      public static function §%!H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §"0§ = param1;
            if(_loc3_)
            {
               §,!F§.§7!&§(§"0§);
            }
         }
      }
      
      public static function §<!G§() : Boolean
      {
         return §"0§;
      }
      
      public static function get screenWidth() : int
      {
         return § y§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return § y§.getAppHeight();
      }
      
      public static function § x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§,!F§.§=!H§("Channel_Theme"));
            if(_loc1_)
            {
               §§push(§§pop() == null);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§pop();
                        §§goto(addr79);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr75);
            }
            §§goto(addr72);
         }
         addr79:
         if(_loc1_ || _loc1_)
         {
            addr72:
            §§push(§,!F§.§=!H§("Channel_Theme").§]n§());
            if(_loc1_)
            {
               addr75:
               §§push(!§§pop());
            }
         }
         §,!F§.§;v§("ThemeMusic","Channel_Theme",999);
      }
      
      public static function §#!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!F§.§@!9§("Channel_Theme");
         }
      }
      
      public static function get § y§() : AngryBirdsFP11
      {
         return §4!"§;
      }
      
      protected function getAssetMap() : XML
      {
         return §"X§.§,@§(§6l§);
      }
      
      protected function getUIData() : XML
      {
         return §"X§.§,@§(§3N§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §"o§.§@6§.init(§9A§.§,!5§(),this.§[!4§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§9!4§,this.§'!A§);
            if(!(_loc2_ && _loc1_))
            {
               §4!"§ = this;
               if(!(_loc2_ && _loc2_))
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  if(_loc3_)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     §1!N§ = screenWidth;
                     addr79:
                     §#o§ = screenHeight;
                     §=w§.init(this,screenWidth,screenHeight);
                     if(!_loc3_)
                     {
                     }
                     addr118:
                     var _loc1_:XMLList = §"X§.§,@§(§1!1§).children();
                     if(!_loc2_)
                     {
                        §3!0§.init(_loc1_);
                        if(_loc3_ || _loc2_)
                        {
                           §,!F§.§@o§("CHANNEL_THEME",1,1);
                           if(_loc3_ || _loc3_)
                           {
                              §,!F§.§@o§("CHANNEL_AMBIENT",1,1);
                              this.initUserProgress();
                              if(_loc3_)
                              {
                                 addr157:
                                 stage.addEventListener(Event.MOUSE_LEAVE,this.§`k§);
                                 stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                                 addr179:
                                 stage.addEventListener(Event.RESIZE,this.onStageResize);
                                 stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                                 §#!<§ = new §0!L§(stage);
                              }
                              §§push(§@7§.§@6§);
                              §§push(§%Z§);
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§;y§ = §§pop();
                              return;
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr157);
                  }
                  this.initLevelMain();
                  if(_loc3_ || _loc2_)
                  {
                     §=w§.§?!L§.visible = false;
                     §7!+§.§[W§(§"B§);
                     addr115:
                     §7!+§.§4u§(true);
                     §§goto(addr118);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr115);
      }
      
      protected function §[!4§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=w§.§ o§ = new § !§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §`!K§(§,A§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §8Y§(new §8A§(false));
         §8Y§(new §^!K§(false));
         §8Y§(new §5!#§(false));
         §8Y§(new §for §(false));
         if(!(_loc2_ && this))
         {
            §8Y§(new §6!@§(false));
            §8Y§(new StatePlay(false));
            if(!_loc2_)
            {
               §8Y§(new §7§(false));
            }
            §8Y§(new §+W§(false));
            §8Y§(new §&b§(false));
            §8Y§(new § !"§(false));
            if(_loc1_)
            {
               §8Y§(new § q§(false));
            }
            §8Y§(new StateCutScene(false));
            if(_loc1_ || this)
            {
               §8Y§(new §8!M§(false));
            }
         }
         §§push(stage.stageWidth == screenWidth);
         if(!_loc2_)
         {
            §§push(!§§pop());
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop();
                     §§push(stage.stageHeight == screenHeight);
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr155);
                  }
               }
               §§goto(addr155);
            }
            §§push(!§§pop());
         }
         addr155:
         if(§§pop())
         {
            if(_loc1_ || this)
            {
               this.onStageResize(null);
            }
         }
      }
      
      protected function §'!A§(param1:ByteArray) : void
      {
      }
      
      protected function §`k§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §'q§.§4W§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §'q§.§&u§();
            if(this.§'!K§)
            {
               addr28:
               var _loc2_:*;
               §§push((_loc2_ = this).§@&§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  _loc2_.§@&§ = _loc3_;
               }
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§@&§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§9U§);
                     if(_loc4_ || this)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§'!K§ = false;
                           }
                        }
                        §§goto(addr108);
                     }
                     if(§§pop() < §§pop())
                     {
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr102);
               }
               §§goto(addr108);
            }
            addr108:
            if(!(_loc5_ && this))
            {
               addr102:
               §§push(this.§`!;§);
               §§push(§"#§);
            }
            this.§[!7§(this.§=O§);
            return;
         }
         §§goto(addr28);
      }
      
      public function §-u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-=§ = true;
         }
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:int = Math.round(stage.stageHeight);
         §§push(_loc2_ < 20);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop());
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(_loc3_ < 20);
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(§&n§);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        addr57:
                        §§push(§7?§);
                        if(_loc5_ || _loc2_)
                        {
                           _loc3_ = §§pop();
                           addr67:
                           §§push(_loc2_);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() < 2);
                              §§push(§§pop() < 2);
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    addr86:
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(_loc3_ < 2);
                                       if(!_loc4_)
                                       {
                                          §§goto(addr104);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr199);
                                 }
                                 addr104:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(false);
                                       if(_loc5_)
                                       {
                                          addr115:
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr184:
                                       §§push(§7?§ == _loc3_);
                                    }
                                    §§goto(addr186);
                                 }
                                 else
                                 {
                                    if(_loc2_ / _loc3_ > 25 / 12)
                                    {
                                       §§push(int(Math.round(_loc3_ * (25 / 12))));
                                       if(!(_loc4_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       §§goto(addr184);
                                    }
                                    §§push(!param1);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr156:
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(§&n§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() == _loc2_);
                                             }
                                             §§goto(addr184);
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 §§goto(addr195);
                              }
                              addr164:
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr184);
                                 }
                                 §§goto(addr196);
                              }
                              addr186:
                              if(§§pop())
                              {
                                 §§push(false);
                                 if(_loc5_ || this)
                                 {
                                    addr195:
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr196:
                                 §&n§ = _loc2_;
                                 addr199:
                                 §7?§ = _loc3_;
                                 if(!_loc4_)
                                 {
                                    this.§+!C§(§&n§,§7?§);
                                 }
                                 §§push(true);
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr57);
               }
               §§goto(addr67);
            }
            §§goto(addr156);
         }
         §§goto(addr86);
      }
      
      protected function §+!C§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §=w§.§8'§(0,0,param1,param2);
            if(_loc3_ || _loc3_)
            {
               addr41:
               setViewSize(param1,param2);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §-!$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_ || _loc3_)
         {
            if(_loc1_ - this.§=O§ > §6V§)
            {
               if(_loc2_ || this)
               {
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(_loc2_)
                     {
                        addr67:
                        this.§[!7§(_loc1_);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
                  else
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc3_ && this)
                        {
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr88);
               }
               this.§>!B§(_loc1_);
            }
            addr88:
            return;
         }
         §§goto(addr67);
      }
      
      public function §8<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!7§(0);
         }
      }
      
      public function §'!>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(stage)
            {
               if(_loc2_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr31);
      }
      
      private function §[!7§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§-=§ = true;
            if(_loc4_)
            {
               this.§=O§ = param1;
               if(_loc4_ || this)
               {
                  addr59:
                  this.§'!K§ = false;
               }
               try
               {
                  stage.displayState = StageDisplayState.NORMAL;
               }
               catch(e:Error)
               {
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      private function §>!B§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§-=§ = true;
            if(!(_loc4_ && _loc2_))
            {
               this.§=O§ = param1;
               if(_loc3_ || _loc2_)
               {
                  this.§`!;§ = 0;
                  if(_loc3_)
                  {
                     addr68:
                     this.§@&§ = 0;
                     if(_loc3_ || _loc2_)
                     {
                        addr78:
                        this.§'!K§ = true;
                     }
                  }
                  try
                  {
                     stage.displayState = StageDisplayState.FULL_SCREEN;
                  }
                  catch(e:Error)
                  {
                  }
                  return;
               }
               §§goto(addr68);
            }
            §§goto(addr78);
         }
         §§goto(addr68);
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(_loc3_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr40:
               §§push(0);
               if(_loc4_ && _loc2_)
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
         §§goto(addr40);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.setFirstGameState();
            if(_loc2_ || _loc2_)
            {
               §"o§.§@6§.§3l§();
               if(_loc2_)
               {
                  addr43:
                  §[4§.§6!+§(JSON.parse(this.§9!4§.getFileAsString("Chapters.json")));
                  if(_loc2_)
                  {
                     addr53:
                     this.initializeGame();
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr43);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(§=w§.§?!L§);
            if(_loc5_ || this)
            {
               if(§§pop() != null)
               {
                  if(!_loc4_)
                  {
                     addr36:
                     §=w§.§?!L§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc5_ || param1)
               {
                  if(!§@v§().isGenericState())
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() == §1Q§.STATE_STATUS_COMPLETED)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 addr81:
                                 §§push(§7!+§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() + §@v§().mName);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(_loc5_)
                                       {
                                          addr115:
                                          §§push(§§pop() + §@v§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc5_)
                                    {
                                       addr122:
                                       §+N§(§@v§().mNextState);
                                       addr128:
                                       return _loc2_;
                                       addr127:
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr36);
      }
      
      override public function getAppWidth() : Number
      {
         return §9!#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0i§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return § n§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!_loc1_)
         {
            §§push(VERSION);
            if(!_loc1_)
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!(_loc1_ && _loc1_))
               {
                  §§push(", ");
                  if(_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        addr61:
                        §§push(§§pop() + "Server: ");
                        if(!(_loc1_ && _loc2_))
                        {
                           addr70:
                           §§push(§§pop() + §"!&§);
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr70);
         }
         §§goto(addr61);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=w§.§?!"§(this.getItemData(),this.getLevelBackgrounds());
            if(_loc1_)
            {
               addr36:
               §=w§.§5!B§(this.§9!4§.§='§,§6<§.§>!@§(),this.onGraphicsInitialized);
            }
            return;
         }
         §§goto(addr36);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §"X§.§,@§(§,s§);
      }
      
      protected function getItemData() : XML
      {
         return §"X§.§,@§(§!<§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §,E§ = true;
            if(!_loc3_)
            {
               if(§5p§)
               {
                  if(_loc2_ || this)
                  {
                  }
               }
               else
               {
                  §+N§(§5!#§.§>9§);
               }
               §§goto(addr73);
            }
            §+N§(§8A§.§>9§);
            if(_loc2_ || this)
            {
            }
         }
         addr73:
      }
      
      public function §"A§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§'!K§);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(_loc4_ || _loc3_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§`!;§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_.§`!;§ = _loc3_;
                  }
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr96);
               }
               §§goto(addr86);
            }
            addr65:
            §§push(§>I§.§]u§());
            if(_loc4_ || this)
            {
               addr84:
               if(!§§pop())
               {
                  return;
               }
               addr86:
               §§push(this.§-=§);
            }
            if(§§pop())
            {
               if(_loc4_ || this)
               {
                  addr96:
                  this.resize();
                  if(_loc4_ || this)
                  {
                  }
                  §§goto(addr108);
               }
               this.§-=§ = false;
            }
            addr108:
            super.onEnterFrame(param1);
            return;
         }
         §§goto(addr84);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
