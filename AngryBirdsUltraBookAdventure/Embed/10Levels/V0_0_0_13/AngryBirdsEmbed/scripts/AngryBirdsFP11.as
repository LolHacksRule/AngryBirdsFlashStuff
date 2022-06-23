package
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §"!5§.§78§;
   import §"X§.§^!;§;
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §'X§.§9[§;
   import §,U§.§+u§;
   import §0!<§.§#y§;
   import §0!<§.§%r§;
   import §0!<§.§]o§;
   import §1M§.§@!6§;
   import §<!7§.§2+§;
   import §<!7§.§5i§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §[H§.§7P§;
   import §`!%§.§ @§;
   import §`!%§.§!,§;
   import §`!%§.§-7§;
   import §`!%§.§4N§;
   import §`!%§.§4d§;
   import §`!%§.§6E§;
   import §`!%§.§77§;
   import §`!%§.§9!@§;
   import §`!%§.§<!+§;
   import §`!%§.§=&§;
   import §`!%§.StateCutScene;
   import §`!%§.StatePlay;
   import §`!%§.§^J§;
   import §`K§.§3n§;
   import com.rovio.assets.§-!D§;
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
   
   public class AngryBirdsFP11 extends §5i§
   {
      
      protected static var § !9§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §]7§:String;
      
      public static var §+!E§:String;
      
      public static const §;]§:int = 1024;
      
      public static const §3L§:int = 768;
      
      public static const §[!2§:Boolean = false;
      
      public static const §6!?§:int = 2000;
      
      public static const §`!1§:Boolean = false;
      
      private static const §;!=§:int = 750;
      
      private static const §&m§:int = 3;
      
      private static const §&C§:int = 15;
      
      protected static var §?W§:Class;
      
      protected static var §-^§:Class;
      
      protected static var §1!9§:Class;
      
      protected static var §5S§:Class;
      
      public static var sUserProgress:§@!6§ = null;
      
      public static var §%w§:Boolean = true;
      
      private static var §%P§:AngryBirdsFP11 = null;
      
      public static var §@k§:Sprite = null;
      
      public static var §,i§:§78§;
      
      public static var §with§:Boolean = false;
      
      protected static var §;B§:int = 0;
      
      protected static var §=!#§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            § !9§ = AngryBirdsFP11_mTextBinary;
            VERSION = "0.0.1.({svn_version})";
            if(_loc2_ || AngryBirdsFP11)
            {
               §;]§ = 1024;
               §3L§ = 768;
               if(_loc2_)
               {
                  §[!2§ = false;
                  if(!_loc1_)
                  {
                     addr50:
                     §6!?§ = 2000;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr60:
                        §`!1§ = false;
                        §;!=§ = 750;
                        if(_loc2_ || _loc2_)
                        {
                           addr83:
                           §&m§ = 3;
                           §&C§ = 15;
                           addr89:
                           §?W§ = AngryBirdsFP11_mViewLibraryBin;
                           §-^§ = AngryBirdsFP11_mAssetMapBin;
                           if(_loc2_ || _loc2_)
                           {
                              §1!9§ = AngryBirdsFP11_mItemDataTableBin;
                              if(!(_loc1_ && _loc2_))
                              {
                                 §5S§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                 if(_loc2_ || AngryBirdsFP11)
                                 {
                                    addr122:
                                    sUserProgress = null;
                                    if(_loc2_)
                                    {
                                       addr127:
                                       §%w§ = true;
                                       addr140:
                                       §%P§ = null;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §@k§ = null;
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr160:
                                             §with§ = false;
                                             §;B§ = 0;
                                             addr166:
                                             §=!#§ = 0;
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
      
      private var §6!&§:§+u§;
      
      private var §;I§:int;
      
      private var §"R§:Boolean;
      
      private var §"L§:int;
      
      private var §;8§:int;
      
      protected var §3o§:Boolean;
      
      public function AngryBirdsFP11(param1:§2+§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!&§ = new §+u§();
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
         return §;B§;
      }
      
      public static function get stageHeight() : int
      {
         return §=!#§;
      }
      
      public static function §-E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §%w§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               §3!E§.§%!%§(§%w§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §[l§() : Boolean
      {
         return §%w§;
      }
      
      public static function get screenWidth() : int
      {
         return §@t§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §@t§.getAppHeight();
      }
      
      public static function §'!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§3!E§.§8!§("Channel_Theme"));
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
            §§push(§3!E§.§8!§("Channel_Theme").§!q§());
            if(_loc2_)
            {
               §§push(!§§pop());
            }
         }
         §3!E§.§<!,§("ThemeMusic","Channel_Theme",999);
      }
      
      public static function §-!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!E§.§9o§("Channel_Theme");
         }
      }
      
      public static function get §@t§() : AngryBirdsFP11
      {
         return §%P§;
      }
      
      protected function getAssetMap() : XML
      {
         return §]o§.§#b§(§-^§);
      }
      
      protected function getUIData() : XML
      {
         return §]o§.§#b§(§?W§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §^!;§.§-]§.init(§7P§.§#§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§6!&§,this.§@!#§);
         if(_loc3_)
         {
            §%P§ = this;
            stage.scaleMode = StageScaleMode.NO_SCALE;
         }
         stage.align = StageAlign.TOP_LEFT;
         §,B§ = screenWidth;
         §"D§ = screenHeight;
         if(!(_loc2_ && _loc1_))
         {
            §,!!§.init(this,screenWidth,screenHeight);
            if(!(_loc2_ && _loc1_))
            {
               this.initLevelMain();
               if(!(_loc2_ && _loc2_))
               {
                  §,!!§.§;!;§.visible = false;
                  if(_loc3_)
                  {
                     addr107:
                     §#y§.§-A§(§<P§);
                  }
                  §#y§.§;!!§(true);
               }
               var _loc1_:XMLList = §]o§.§#b§(§ !9§).children();
               §-!D§.init(_loc1_);
               §3!E§.§5!%§("CHANNEL_THEME",1,1);
               if(_loc3_)
               {
                  §3!E§.§5!%§("CHANNEL_AMBIENT",1,1);
                  if(_loc3_ || _loc2_)
                  {
                     this.initUserProgress();
                     stage.addEventListener(Event.MOUSE_LEAVE,this.§?2§);
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
                        §,i§ = new §78§(stage);
                        addr198:
                        §§push(§%!>§.§-]§);
                        §§push(§[!2§);
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§9V§ = §§pop();
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
            §,!!§.§;4§ = new §#;§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §@!6§(§+!E§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0!5§(new §=&§(false));
            §0!5§(new § @§(false));
            if(!_loc2_)
            {
               §0!5§(new §9!@§(false));
               §0!5§(new §-7§(false));
               §0!5§(new §!,§(false));
               §0!5§(new StatePlay(false));
               §0!5§(new §77§(false));
               if(!(_loc2_ && this))
               {
                  §0!5§(new §6E§(false));
                  §0!5§(new §4d§(false));
                  if(!_loc2_)
                  {
                     §0!5§(new §^J§(false));
                     §0!5§(new §<!+§(false));
                     addr94:
                     §0!5§(new StateCutScene(false));
                     §0!5§(new §4N§(false));
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
      
      protected function §@!#§(param1:ByteArray) : void
      {
      }
      
      protected function §?2§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §%r§.§@!A§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §%r§.§@p§();
            if(!_loc5_)
            {
               if(this.§"R§)
               {
                  addr25:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§;8§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§;8§ = _loc3_;
                  }
                  §§push(this.§;8§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§&C§);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              this.§"R§ = false;
                           }
                        }
                        §§goto(addr110);
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§8-§(this.§;I§);
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
                  §§push(this.§"L§);
                  §§push(§&m§);
               }
               return;
            }
         }
         §§goto(addr25);
      }
      
      public function §=w§() : void
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
            §§push(this.§3o§);
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
                                    §,!!§.§1%§(0,0,stage.stageWidth,stage.stageHeight);
                                    if(!_loc7_)
                                    {
                                       addr177:
                                       setViewSize(stage.stageWidth,stage.stageHeight);
                                       §§goto(addr183);
                                    }
                                    addr183:
                                    §;B§ = stage.stageWidth;
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §=!#§ = stage.stageHeight;
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
      
      public function §"&§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(!_loc2_)
         {
            if(_loc1_ - this.§;I§ > §;!=§)
            {
               if(!(_loc2_ && this))
               {
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§8-§(_loc1_);
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
                           this.§"!'§(_loc1_);
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
      
      public function §>!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8-§(0);
         }
      }
      
      public function §3l§() : Boolean
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
      
      private function §8-§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§3o§ = true;
            if(!_loc2_)
            {
               stage.displayState = StageDisplayState.NORMAL;
               if(!(_loc2_ && _loc2_))
               {
                  this.§;I§ = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr70:
                     this.§"R§ = false;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §"!'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§3o§ = true;
         if(!(_loc3_ && _loc2_))
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            this.§;I§ = param1;
            this.§"L§ = 0;
            if(!(_loc3_ && _loc2_))
            {
               this.§;8§ = 0;
               addr56:
               this.§"R§ = true;
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
               §^!;§.§-]§.§8!$§();
               if(!_loc2_)
               {
                  §6M§.§>7§(JSON.parse(this.§6!&§.getFileAsString("Chapters.json")));
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
            §§push(§,!!§.§;!;§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr40:
                     §,!!§.§;!;§.update(param1);
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
                  if(!§0!H§().isGenericState())
                  {
                     if(_loc4_ || this)
                     {
                        addr72:
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() == §9[§.STATE_STATUS_COMPLETED)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§#y§);
                                 §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() + §0!H§().mName);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr119:
                                          §§push(§§pop() + §0!H§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr131:
                                       §,t§(§0!H§().mNextState);
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
         return §;]§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3L§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6!?§;
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
                     §§push(§§pop() + §]7§);
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
            §,!!§.§>!%§(this.getItemData(),this.getLevelBackgrounds());
            if(!_loc2_)
            {
               addr41:
               §,!!§.§^!2§(this.§6!&§.§'a§,§3n§.§#!C§(),this.onGraphicsInitialized);
            }
            return;
         }
         §§goto(addr41);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §]o§.§#b§(§5S§);
      }
      
      protected function getItemData() : XML
      {
         return §]o§.§#b§(§1!9§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §with§ = true;
            if(_loc2_)
            {
               if(§`!1§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §,t§(§=&§.§0!7§);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §,t§(§9!@§.§0!7§);
               }
               §§goto(addr53);
            }
         }
         addr53:
      }
      
      public function §=§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§"R§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§"L§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc2_.§"L§ = _loc3_;
                  }
                  if(_loc4_ && this)
                  {
                  }
                  §§goto(addr82);
               }
               §§push(§'_§.§+! §());
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
            if(this.§3o§)
            {
               if(!(_loc4_ && this))
               {
                  this.§3o§ = false;
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
