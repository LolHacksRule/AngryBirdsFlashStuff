package
{
   import §#h§.§ !H§;
   import §+!%§.§1!E§;
   import §+!?§.§"h§;
   import §+!?§.§6N§;
   import §+!@§.§!T§;
   import §,!C§.§0v§;
   import §3G§.§!E§;
   import §5m§.§2!&§;
   import §6H§.§>3§;
   import §8c§.§ p§;
   import §8c§.§1N§;
   import §9!2§.§0!>§;
   import §;m§.§ !F§;
   import §;m§.§ j§;
   import §;m§.§1!§;
   import §;m§.§2i§;
   import §;m§.§3'§;
   import §;m§.§6Z§;
   import §;m§.§6e§;
   import §;m§.§8R§;
   import §;m§.§>!B§;
   import §;m§.§>!G§;
   import §;m§.StateCutScene;
   import §;m§.StatePlay;
   import §;m§.§`!%§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import §>K§.§9X§;
   import §>K§.§=!I§;
   import §?!+§.§,!G§;
   import §catch§.§4@§;
   import com.rovio.assets.§3O§;
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
   
   public class AngryBirdsFP11 extends §1N§
   {
      
      protected static var §+!F§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §4!?§:String;
      
      public static var §]!,§:String;
      
      public static const §4T§:int = 1024;
      
      public static const §0!$§:int = 768;
      
      public static const §0b§:Boolean = false;
      
      public static const §%$§:int = 2000;
      
      public static const §-!7§:Boolean = false;
      
      private static const §7!§:int = 750;
      
      private static const §`S§:int = 3;
      
      private static const §%S§:int = 15;
      
      protected static var §<g§:Class;
      
      protected static var §5!B§:Class;
      
      protected static var §[!?§:Class;
      
      protected static var §=<§:Class;
      
      public static var sUserProgress:§0!>§ = null;
      
      public static var §%!4§:Boolean = true;
      
      private static var §2[§:AngryBirdsFP11 = null;
      
      public static var §>l§:Sprite = null;
      
      public static var §;M§:§6N§;
      
      public static var §<!>§:Boolean = false;
      
      protected static var §&]§:int = 0;
      
      protected static var §-g§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+!F§ = AngryBirdsFP11_mTextBinary;
            VERSION = "0.0.1.({svn_version})";
            if(_loc2_ || AngryBirdsFP11)
            {
               §4T§ = 1024;
               §0!$§ = 768;
               if(_loc2_)
               {
                  §0b§ = false;
                  if(!_loc1_)
                  {
                     addr50:
                     §%$§ = 2000;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr60:
                        §-!7§ = false;
                        §7!§ = 750;
                        if(_loc2_ || _loc2_)
                        {
                           addr83:
                           §`S§ = 3;
                           §%S§ = 15;
                           addr89:
                           §<g§ = AngryBirdsFP11_mViewLibraryBin;
                           §5!B§ = AngryBirdsFP11_mAssetMapBin;
                           if(_loc2_ || _loc2_)
                           {
                              §[!?§ = AngryBirdsFP11_mItemDataTableBin;
                              if(!(_loc1_ && _loc2_))
                              {
                                 §=<§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                 if(_loc2_ || AngryBirdsFP11)
                                 {
                                    addr122:
                                    sUserProgress = null;
                                    if(_loc2_)
                                    {
                                       addr127:
                                       §%!4§ = true;
                                       addr140:
                                       §2[§ = null;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §>l§ = null;
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr160:
                                             §<!>§ = false;
                                             §&]§ = 0;
                                             addr166:
                                             §-g§ = 0;
                                          }
                                          return;
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr60);
            }
            §§goto(addr89);
         }
         §§goto(addr50);
      }
      
      private var §0!E§:§1!E§;
      
      private var §<!!§:int;
      
      private var §3<§:Boolean;
      
      private var §1c§:int;
      
      private var §5!?§:int;
      
      protected var §'!,§:Boolean;
      
      public function AngryBirdsFP11(param1:§ p§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!E§ = new §1!E§();
            if(_loc3_)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               if(_loc3_)
               {
                  addr36:
                  this.initialize();
                  if(_loc3_ || this)
                  {
                     this.initStates();
                     addr57:
                     §§push(stage.stageWidth == screenWidth);
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    addr88:
                                    §§push(stage.stageHeight == screenHeight);
                                    if(!(_loc2_ && param1))
                                    {
                                       §§goto(addr100);
                                    }
                                    addr100:
                                    §§goto(addr99);
                                 }
                                 §§goto(addr108);
                              }
                              addr99:
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr108:
                                    this.onStageResize(null);
                                 }
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr57);
               }
               §§goto(addr88);
            }
            §§goto(addr36);
         }
         §§goto(addr57);
      }
      
      public static function get stageWidth() : int
      {
         return §&]§;
      }
      
      public static function get stageHeight() : int
      {
         return §-g§;
      }
      
      public static function §0R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §%!4§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               § !H§.§0G§(§%!4§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §@6§() : Boolean
      {
         return §%!4§;
      }
      
      public static function get screenWidth() : int
      {
         return §0P§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §0P§.getAppHeight();
      }
      
      public static function §'!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§ !H§.§%A§("Channel_Theme"));
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        §§goto(addr70);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr58);
         }
         addr70:
         if(_loc2_)
         {
            addr58:
            §§push(§ !H§.§%A§("Channel_Theme").§'I§());
            if(_loc2_)
            {
               §§push(!§§pop());
            }
         }
         § !H§.§ !%§("ThemeMusic","Channel_Theme",999);
      }
      
      public static function §-+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !H§.§]%§("Channel_Theme");
         }
      }
      
      public static function get §0P§() : AngryBirdsFP11
      {
         return §2[§;
      }
      
      protected function getAssetMap() : XML
      {
         return §=!I§.§]g§(§5!B§);
      }
      
      protected function getUIData() : XML
      {
         return §=!I§.§]g§(§<g§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §!T§.§@j§.init(§2!&§.§5O§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§0!E§,this.§7%§);
         if(_loc3_)
         {
            §2[§ = this;
            stage.scaleMode = StageScaleMode.NO_SCALE;
         }
         stage.align = StageAlign.TOP_LEFT;
         §1§ = screenWidth;
         §2Q§ = screenHeight;
         if(!(_loc2_ && _loc1_))
         {
            §"h§.init(this,screenWidth,screenHeight);
            if(!(_loc2_ && _loc1_))
            {
               this.initLevelMain();
               if(!(_loc2_ && _loc2_))
               {
                  §"h§.§73§.visible = false;
                  if(_loc3_)
                  {
                     addr107:
                     §9X§.§'!&§(§6#§);
                  }
                  §9X§.§7#§(true);
               }
               var _loc1_:XMLList = §=!I§.§]g§(§+!F§).children();
               §3O§.init(_loc1_);
               § !H§.§+z§("CHANNEL_THEME",1,1);
               if(_loc3_)
               {
                  § !H§.§+z§("CHANNEL_AMBIENT",1,1);
                  if(_loc3_ || _loc2_)
                  {
                     this.initUserProgress();
                     stage.addEventListener(Event.MOUSE_LEAVE,this.§5t§);
                     stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                     if(!_loc2_)
                     {
                        §§goto(addr157);
                     }
                     §§goto(addr193);
                  }
                  addr157:
                  stage.addEventListener(Event.RESIZE,this.onStageResize);
                  if(_loc3_ || _loc2_)
                  {
                     stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                     if(_loc3_ || _loc3_)
                     {
                        addr193:
                        §;M§ = new §6N§(stage);
                        addr198:
                        §§push(§,!G§.§@j§);
                        §§push(§0b§);
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§,!@§ = §§pop();
                     }
                     §§goto(addr198);
                  }
                  return;
               }
               §§goto(addr193);
            }
         }
         §§goto(addr107);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"h§.§1C§ = new §!E§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §0!>§(§]!,§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!%§(new §6Z§(false));
            §5!%§(new §3'§(false));
            if(!_loc2_)
            {
               §5!%§(new §1!§(false));
               §5!%§(new §8R§(false));
               §5!%§(new §>!B§(false));
               §5!%§(new StatePlay(false));
               §5!%§(new §6e§(false));
               if(!(_loc2_ && this))
               {
                  §5!%§(new § !F§(false));
                  §5!%§(new §`!%§(false));
                  if(!_loc2_)
                  {
                     §5!%§(new §2i§(false));
                     §5!%§(new § j§(false));
                     addr94:
                     §5!%§(new StateCutScene(false));
                     §5!%§(new §>!G§(false));
                     if(_loc1_)
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr94);
               }
            }
            addr106:
            §§push(stage.stageWidth == screenWidth);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        addr135:
                        §§push(stage.stageHeight == screenHeight);
                        if(!(_loc2_ && this))
                        {
                           §§push(!§§pop());
                        }
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc1_ || this)
               {
                  this.onStageResize(null);
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §7%§(param1:ByteArray) : void
      {
      }
      
      protected function §5t§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §7R§.§=y§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §7R§.§>y§();
            if(!_loc5_)
            {
               if(this.§3<§)
               {
                  addr25:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§5!?§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§5!?§ = _loc3_;
                  }
                  §§push(this.§5!?§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§%S§);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              this.§3<§ = false;
                           }
                        }
                        §§goto(addr110);
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§'!'§(this.§<!!§);
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr97);
               }
               addr110:
               if(_loc4_ || _loc3_)
               {
                  addr97:
                  §§push(this.§1c§);
                  §§push(§`S§);
               }
               return;
            }
         }
         §§goto(addr25);
      }
      
      public function §]!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || _loc3_)
         {
            §§push(this.§'!,§);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(stage.stageWidth < 2);
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        if(_loc7_)
                        {
                        }
                        addr59:
                        if(§§pop())
                        {
                           if(_loc6_ || _loc2_)
                           {
                              §§goto(addr67);
                           }
                           else
                           {
                              addr68:
                              §§push(stage.stageWidth / screenWidth);
                              if(!(_loc7_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(stage.stageHeight / screenHeight);
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 if(_loc2_ < _loc3_)
                                 {
                                    §§push(Number(stage.stageWidth));
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc4_ = §§pop();
                                       _loc5_ = Number(stage.stageWidth * (screenHeight / screenWidth));
                                       if(!_loc6_)
                                       {
                                       }
                                       §§goto(addr177);
                                    }
                                    else
                                    {
                                       addr156:
                                       _loc5_ = §§pop();
                                    }
                                    §"h§.§19§(0,0,stage.stageWidth,stage.stageHeight);
                                    if(!_loc7_)
                                    {
                                       addr177:
                                       setViewSize(stage.stageWidth,stage.stageHeight);
                                       §§goto(addr183);
                                    }
                                    addr183:
                                    §&]§ = stage.stageWidth;
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §-g§ = stage.stageHeight;
                                    }
                                    return;
                                 }
                                 §§push(stage.stageHeight * (screenWidth / screenHeight));
                                 if(_loc6_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       §§push(Number(stage.stageHeight));
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr59);
                  }
                  §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr59);
                     §§push(stage.stageHeight < 2);
                  }
                  §§goto(addr67);
               }
               §§goto(addr68);
            }
            §§goto(addr59);
         }
         addr67:
      }
      
      public function §<h§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(!_loc2_)
         {
            if(_loc1_ - this.§<!!§ > §7!§)
            {
               if(!(_loc2_ && this))
               {
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§'!'§(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                        }
                        §§goto(addr89);
                     }
                  }
                  else
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(!_loc2_)
                        {
                           addr86:
                           this.§%N§(_loc1_);
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr89);
               }
            }
            addr89:
            return;
         }
         §§goto(addr86);
      }
      
      public function §#2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!'§(0);
         }
      }
      
      public function §4!E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(stage)
            {
               if(!_loc1_)
               {
                  addr23:
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!_loc1_)
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
            §§goto(addr31);
         }
         §§goto(addr23);
      }
      
      private function §'!'§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'!,§ = true;
            if(!_loc2_)
            {
               stage.displayState = StageDisplayState.NORMAL;
               if(!(_loc2_ && _loc2_))
               {
                  this.§<!!§ = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr70:
                     this.§3<§ = false;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §%N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§'!,§ = true;
         if(!(_loc3_ && _loc2_))
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            this.§<!!§ = param1;
            this.§1c§ = 0;
            if(!(_loc3_ && _loc2_))
            {
               this.§5!?§ = 0;
               addr56:
               this.§3<§ = true;
            }
            return;
         }
         §§goto(addr56);
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
               if(!_loc4_)
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
            if(!_loc2_)
            {
               §!T§.§@j§.§5@§();
               if(!_loc2_)
               {
                  §59§.§"2§(JSON.parse(this.§0!E§.getFileAsString("Chapters.json")));
                  if(_loc1_)
                  {
                     addr47:
                     this.initializeGame();
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc5_ && param1))
         {
            §§push(§"h§.§73§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr40:
                     §"h§.§73§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  if(!§>A§().isGenericState())
                  {
                     if(_loc4_ || this)
                     {
                        addr72:
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() == §>3§.STATE_STATUS_COMPLETED)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§9X§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() + §>A§().mName);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr119:
                                          §§push(§§pop() + §>A§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr131:
                                       each(§>A§().mNextState);
                                       addr137:
                                       return _loc2_;
                                       addr136:
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr40);
      }
      
      override public function getAppWidth() : Number
      {
         return §4T§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0!$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §%$§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!_loc1_)
         {
            §§push(VERSION);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(_loc2_)
               {
                  §§push(", ");
                  if(_loc2_ || this)
                  {
                     §§goto(addr71);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                     addr70:
                     addr71:
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        addr65:
                        §§push("Server: ");
                     }
                     return §§pop();
                     §§push(§§pop() + §4!?§);
                  }
                  §§goto(addr71);
               }
               §§goto(addr65);
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §"h§.§&M§(this.getItemData(),this.getLevelBackgrounds());
            if(!_loc2_)
            {
               addr41:
               §"h§.§#y§(this.§0!E§.§;Y§,§0v§.§0!+§(),this.onGraphicsInitialized);
            }
            return;
         }
         §§goto(addr41);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §=!I§.§]g§(§=<§);
      }
      
      protected function getItemData() : XML
      {
         return §=!I§.§]g§(§[!?§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<!>§ = true;
            if(_loc2_)
            {
               if(§-!7§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     each(§6Z§.§-!A§);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  each(§1!§.§-!A§);
               }
               §§goto(addr53);
            }
         }
         addr53:
      }
      
      public function §?,§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§3<§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§1c§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc2_.§1c§ = _loc3_;
                  }
                  if(_loc4_ && this)
                  {
                  }
                  §§goto(addr82);
               }
               §§push(§4@§.§!!7§());
               if(!(_loc4_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     return;
                  }
                  super.onEnterFrame(param1);
                  if(!_loc4_)
                  {
                     §§goto(addr82);
                  }
                  addr82:
                  §§goto(addr84);
               }
            }
            addr84:
            if(this.§'!,§)
            {
               if(!(_loc4_ && this))
               {
                  this.§'!,§ = false;
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
