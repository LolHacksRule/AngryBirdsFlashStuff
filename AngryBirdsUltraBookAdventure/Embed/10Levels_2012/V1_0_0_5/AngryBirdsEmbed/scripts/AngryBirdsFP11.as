package
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §#'§.§'Q§;
   import §#'§.§0X§;
   import §+!"§.§5!<§;
   import §+!"§.§=L§;
   import §+!"§.§@P§;
   import §+?§.§03§;
   import §3[§.§<,§;
   import §5H§.§[k§;
   import §5H§.§]w§;
   import §6J§.§5j§;
   import §7!0§.§9!0§;
   import §9>§.§"!C§;
   import §;z§.§%"§;
   import §>!A§.§!!=§;
   import §>!A§.§"'§;
   import §>!A§.§"8§;
   import §>!A§.§'!?§;
   import §>!A§.§,w§;
   import §>!A§.§3!G§;
   import §>!A§.§5O§;
   import §>!A§.§=g§;
   import §>!A§.§>8§;
   import §>!A§.§?K§;
   import §>!A§.StateCutScene;
   import §>!A§.StatePlay;
   import §>!A§.§^q§;
   import §?b§.§7!,§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import com.rovio.assets.§@@§;
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
   
   public class AngryBirdsFP11 extends §0X§
   {
      
      protected static var §"5§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §<U§:String;
      
      public static var §+u§:String;
      
      public static const §>§:int = 1024;
      
      public static const §%i§:int = 768;
      
      public static const §,#§:Boolean = false;
      
      public static const §5!5§:int = 2000;
      
      public static const §<i§:Boolean = false;
      
      private static const §?O§:int = 750;
      
      private static const §5!+§:int = 3;
      
      private static const §6a§:int = 15;
      
      protected static var §^V§:Class;
      
      protected static var §2"§:Class;
      
      protected static var §1!5§:Class;
      
      protected static var §<P§:Class;
      
      public static var sUserProgress:§<,§ = null;
      
      public static var §-!7§:Boolean = true;
      
      private static var §[G§:AngryBirdsFP11 = null;
      
      public static var §^!=§:Sprite = null;
      
      public static var §]9§:§]w§;
      
      public static var §'^§:Boolean = false;
      
      protected static var §>D§:int = 0;
      
      protected static var §1!4§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §"5§ = AngryBirdsFP11_mTextBinary;
            VERSION = "0.0.1.({svn_version})";
            if(_loc2_ || AngryBirdsFP11)
            {
               §>§ = 1024;
               §%i§ = 768;
               if(_loc2_)
               {
                  §,#§ = false;
                  if(!_loc1_)
                  {
                     addr50:
                     §5!5§ = 2000;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr60:
                        §<i§ = false;
                        §?O§ = 750;
                        if(_loc2_ || _loc2_)
                        {
                           addr83:
                           §5!+§ = 3;
                           §6a§ = 15;
                           addr89:
                           §^V§ = AngryBirdsFP11_mViewLibraryBin;
                           §2"§ = AngryBirdsFP11_mAssetMapBin;
                           if(_loc2_ || _loc2_)
                           {
                              §1!5§ = AngryBirdsFP11_mItemDataTableBin;
                              if(!(_loc1_ && _loc2_))
                              {
                                 §<P§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                 if(_loc2_ || AngryBirdsFP11)
                                 {
                                    addr122:
                                    sUserProgress = null;
                                    if(_loc2_)
                                    {
                                       addr127:
                                       §-!7§ = true;
                                       addr140:
                                       §[G§ = null;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §^!=§ = null;
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr160:
                                             §'^§ = false;
                                             §>D§ = 0;
                                             addr166:
                                             §1!4§ = 0;
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
      
      private var §5"§:§%"§;
      
      private var §;"§:int;
      
      private var §<!?§:Boolean;
      
      private var §[!$§:int;
      
      private var §2X§:int;
      
      protected var §&N§:Boolean;
      
      public function AngryBirdsFP11(param1:§'Q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5"§ = new §%"§();
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
         return §>D§;
      }
      
      public static function get stageHeight() : int
      {
         return §1!4§;
      }
      
      public static function §4C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §-!7§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               §6I§.§3Y§(§-!7§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §,`§() : Boolean
      {
         return §-!7§;
      }
      
      public static function get screenWidth() : int
      {
         return §,s§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §,s§.getAppHeight();
      }
      
      public static function §<!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§6I§.§3t§("Channel_Theme"));
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
            §§push(§6I§.§3t§("Channel_Theme").§^[§());
            if(_loc2_)
            {
               §§push(!§§pop());
            }
         }
         §6I§.§ ;§("ThemeMusic","Channel_Theme",999);
      }
      
      public static function §'i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6I§.§9w§("Channel_Theme");
         }
      }
      
      public static function get §,s§() : AngryBirdsFP11
      {
         return §[G§;
      }
      
      protected function getAssetMap() : XML
      {
         return §=L§.§!#§(§2"§);
      }
      
      protected function getUIData() : XML
      {
         return §=L§.§!#§(§^V§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §"!C§.§^n§.init(§03§.§3!-§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§5"§,this.§8_§);
         if(_loc3_)
         {
            §[G§ = this;
            stage.scaleMode = StageScaleMode.NO_SCALE;
         }
         stage.align = StageAlign.TOP_LEFT;
         §>p§ = screenWidth;
         §76§ = screenHeight;
         if(!(_loc2_ && _loc1_))
         {
            §[k§.init(this,screenWidth,screenHeight);
            if(!(_loc2_ && _loc1_))
            {
               this.initLevelMain();
               if(!(_loc2_ && _loc2_))
               {
                  §[k§.§+S§.visible = false;
                  if(_loc3_)
                  {
                     addr107:
                     §5!<§.§'Z§(§7P§);
                  }
                  §5!<§.§ Z§(true);
               }
               var _loc1_:XMLList = §=L§.§!#§(§"5§).children();
               §@@§.init(_loc1_);
               §6I§.§"!'§("CHANNEL_THEME",1,1);
               if(_loc3_)
               {
                  §6I§.§"!'§("CHANNEL_AMBIENT",1,1);
                  if(_loc3_ || _loc2_)
                  {
                     this.initUserProgress();
                     stage.addEventListener(Event.MOUSE_LEAVE,this.§7-§);
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
                        §]9§ = new §]w§(stage);
                        addr198:
                        §§push(§,B§.§^n§);
                        §§push(§,#§);
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§-Q§ = §§pop();
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
            §[k§.§&@§ = new §7!,§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §<,§(§+u§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^'§(new §'!?§(false));
            §^'§(new §,w§(false));
            if(!_loc2_)
            {
               §^'§(new §!!=§(false));
               §^'§(new §^q§(false));
               §^'§(new §5O§(false));
               §^'§(new StatePlay(false));
               §^'§(new §?K§(false));
               if(!(_loc2_ && this))
               {
                  §^'§(new §"'§(false));
                  §^'§(new §"8§(false));
                  if(!_loc2_)
                  {
                     §^'§(new §>8§(false));
                     §^'§(new §=g§(false));
                     addr94:
                     §^'§(new StateCutScene(false));
                     §^'§(new §3!G§(false));
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
      
      protected function §8_§(param1:ByteArray) : void
      {
      }
      
      protected function §7-§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §@P§.§62§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §@P§.§]T§();
            if(!_loc5_)
            {
               if(this.§<!?§)
               {
                  addr25:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§2X§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§2X§ = _loc3_;
                  }
                  §§push(this.§2X§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§6a§);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              this.§<!?§ = false;
                           }
                        }
                        §§goto(addr110);
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§0!<§(this.§;"§);
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
                  §§push(this.§[!$§);
                  §§push(§5!+§);
               }
               return;
            }
         }
         §§goto(addr25);
      }
      
      public function §0`§() : void
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
            §§push(this.§&N§);
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
                                    §[k§.§%e§(0,0,stage.stageWidth,stage.stageHeight);
                                    if(!_loc7_)
                                    {
                                       addr177:
                                       setViewSize(stage.stageWidth,stage.stageHeight);
                                       §§goto(addr183);
                                    }
                                    addr183:
                                    §>D§ = stage.stageWidth;
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §1!4§ = stage.stageHeight;
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
      
      public function §8!1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(!_loc2_)
         {
            if(_loc1_ - this.§;"§ > §?O§)
            {
               if(!(_loc2_ && this))
               {
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§0!<§(_loc1_);
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
                           this.§5v§(_loc1_);
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
      
      public function §2'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0!<§(0);
         }
      }
      
      public function §9!,§() : Boolean
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
      
      private function §0!<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&N§ = true;
            if(!_loc2_)
            {
               stage.displayState = StageDisplayState.NORMAL;
               if(!(_loc2_ && _loc2_))
               {
                  this.§;"§ = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr70:
                     this.§<!?§ = false;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §5v§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§&N§ = true;
         if(!(_loc3_ && _loc2_))
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            this.§;"§ = param1;
            this.§[!$§ = 0;
            if(!(_loc3_ && _loc2_))
            {
               this.§2X§ = 0;
               addr56:
               this.§<!?§ = true;
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
               §"!C§.§^n§.§#e§();
               if(!_loc2_)
               {
                  §5j§.§;I§(JSON.parse(this.§5"§.getFileAsString("Chapters.json")));
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
            §§push(§[k§.§+S§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr40:
                     §[k§.§+S§.update(param1);
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
                  if(!§8y§().isGenericState())
                  {
                     if(_loc4_ || this)
                     {
                        addr72:
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() == §#!,§.STATE_STATUS_COMPLETED)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§5!<§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() + §8y§().mName);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr119:
                                          §§push(§§pop() + §8y§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr131:
                                       §'<§(§8y§().mNextState);
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
         return §>§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%i§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §5!5§;
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
                     §§push(§§pop() + §<U§);
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
            §[k§.§2!F§(this.getItemData(),this.getLevelBackgrounds());
            if(!_loc2_)
            {
               addr41:
               §[k§.§ <§(this.§5"§.§%b§,§9!0§.§]!H§(),this.onGraphicsInitialized);
            }
            return;
         }
         §§goto(addr41);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §=L§.§!#§(§<P§);
      }
      
      protected function getItemData() : XML
      {
         return §=L§.§!#§(§1!5§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §'^§ = true;
            if(_loc2_)
            {
               if(§<i§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §'<§(§'!?§.§?x§);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §'<§(§!!=§.§?x§);
               }
               §§goto(addr53);
            }
         }
         addr53:
      }
      
      public function §0p§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§<!?§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§[!$§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc2_.§[!$§ = _loc3_;
                  }
                  if(_loc4_ && this)
                  {
                  }
                  §§goto(addr82);
               }
               §§push(§;T§.§>!@§());
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
            if(this.§&N§)
            {
               if(!(_loc4_ && this))
               {
                  this.§&N§ = false;
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
