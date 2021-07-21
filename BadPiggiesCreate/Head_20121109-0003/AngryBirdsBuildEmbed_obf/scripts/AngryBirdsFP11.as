package
{
   import § !A§.§ p§;
   import § !A§.§"!8§;
   import § !r§.§%s§;
   import § !r§.§3!X§;
   import § !r§.§`![§;
   import §&!0§.§%!`§;
   import §-!0§.§1^§;
   import §1!F§.§#!@§;
   import §1!F§.§0k§;
   import §1!F§.§0x§;
   import §1!F§.§1!f§;
   import §1!F§.§26§;
   import §1!F§.§8!v§;
   import §1!F§.§9!h§;
   import §1!F§.§<!`§;
   import §1!F§.§?!M§;
   import §1!F§.§?&§;
   import §1!F§.StateCutScene;
   import §1!F§.StatePlay;
   import §1!F§.§^r§;
   import §1?§.§+!§;
   import §1j§.§1R§;
   import §7v§.§%!M§;
   import §9!n§.§@!T§;
   import §<!<§.§7E§;
   import §<Y§.§;!i§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!-§.§<!§;
   import §?!6§.§1!!§;
   import §@!X§.§7j§;
   import com.rovio.assets.§;y§;
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
   
   public class AngryBirdsFP11 extends § p§
   {
      
      protected static var §;!Q§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §9!T§:String;
      
      public static var §`!l§:String;
      
      public static const §&d§:int = 1024;
      
      public static const §6k§:int = 768;
      
      public static const §>!q§:Boolean = false;
      
      public static const §&_§:int = 2000;
      
      public static const §^!#§:Boolean = false;
      
      private static const §%!c§:int = 750;
      
      private static const §#!s§:int = 3;
      
      private static const §+!A§:int = 15;
      
      protected static var §%&§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §^>§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §?N§:Class;
      
      protected static var §&!_§:Class;
      
      public static var sUserProgress:§;!i§ = null;
      
      public static var §%!8§:Boolean = true;
      
      private static var §8;§:AngryBirdsFP11 = null;
      
      public static var §8q§:Sprite = null;
      
      public static var §!!,§:§<!§;
      
      public static var §7!p§:Boolean = false;
      
      protected static var §6!I§:int = 0;
      
      protected static var §+m§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §6k§ = 768;
            if(_loc1_ || _loc1_)
            {
               §>!q§ = false;
               §&_§ = 2000;
               §§goto(addr58);
            }
            §§goto(addr95);
         }
         addr58:
         if(_loc1_)
         {
            §+!A§ = 15;
         }
         if(_loc1_)
         {
            §?N§ = AngryBirdsFP11_mItemDataTableBin;
            if(!_loc2_)
            {
               addr95:
               §&!_§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
            }
            sUserProgress = null;
            §%!8§ = true;
            §8;§ = null;
            §8q§ = null;
            if(_loc1_)
            {
               §7!p§ = false;
               §6!I§ = 0;
               if(!_loc1_)
               {
               }
               §§goto(addr123);
            }
            §+m§ = 0;
         }
         addr123:
      }
      
      private var §<^§:§1R§;
      
      private var §;R§:int;
      
      private var §^!v§:Boolean;
      
      private var §#`§:int;
      
      private var §#!I§:int;
      
      protected var §<W§:Boolean;
      
      public function AngryBirdsFP11(param1:§"!8§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<^§ = new §1R§();
            §§push(§§findproperty(§9!T§));
            if(!_loc3_)
            {
               §§push(param1.stage.loaderInfo.parameters.serverVersion);
               if(_loc2_ || _loc3_)
               {
                  §§pop().§9!T§ = §§pop() || "[No version from server]";
                  if(_loc2_ || param1)
                  {
                     §§push(§§findproperty(§`!l§));
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(param1.stage.loaderInfo.parameters.serverRoot);
                        if(_loc2_)
                        {
                           if(!§§pop())
                           {
                              addr78:
                              §§pop();
                              if(!_loc3_)
                              {
                                 if(§>!q§)
                                 {
                                    addr83:
                                    §§push("http://head-dot-angrybirds-facebook-dev.appspot.com");
                                    if(_loc3_ && this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push("http://angrybirds-facebook-dev.appspot.com");
                                 }
                              }
                              §§goto(addr83);
                           }
                           §§pop().§`!l§ = §§pop();
                           if(!_loc3_)
                           {
                              super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
                              addr105:
                              this.initialize();
                              §§goto(addr107);
                           }
                           addr107:
                           this.initStates();
                           §§push(stage.stageWidth == screenWidth);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 §§goto(addr133);
                              }
                              §§goto(addr137);
                           }
                           addr133:
                           if(!§§pop())
                           {
                              if(_loc2_)
                              {
                                 addr137:
                                 §§pop();
                                 §§push(stage.stageHeight == screenHeight);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || param1)
                              {
                                 this.onStageResize(null);
                              }
                           }
                           return;
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr40);
         }
         §§goto(addr105);
      }
      
      public static function get stageWidth() : int
      {
         return §6!I§;
      }
      
      public static function get stageHeight() : int
      {
         return §+m§;
      }
      
      public static function §;z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §%!8§ = param1;
            if(_loc2_ || _loc2_)
            {
               addr43:
               §+!§.§4z§(§%!8§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §;!f§() : Boolean
      {
         return §%!8§;
      }
      
      public static function get screenWidth() : int
      {
         return §`!d§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §`!d§.getAppHeight();
      }
      
      public static function §?!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§+!§.§%!6§("Channel_Theme"));
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() == null);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr77:
                           §§push(§+!§.§%!6§("Channel_Theme").§6e§());
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr86);
                           }
                           addr86:
                           if(!§§pop())
                           {
                              if(!_loc1_)
                              {
                              }
                           }
                           §§goto(addr94);
                        }
                        §+!§.§4c§("ThemeMusic","Channel_Theme",999);
                        §§goto(addr94);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr77);
         }
         addr94:
      }
      
      public static function §9!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!§.§+!h§("Channel_Theme");
         }
      }
      
      public static function get §`!d§() : AngryBirdsFP11
      {
         return §8;§;
      }
      
      protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
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
            §%!M§.§`!t§.init(§%!`§.§[!6§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§<^§,this.§]!3§);
            if(!_loc2_)
            {
               §8;§ = this;
               if(_loc3_)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  stage.align = StageAlign.TOP_LEFT;
                  §,!3§ = screenWidth;
                  §-h§ = screenHeight;
                  addr67:
                  §'!V§.init(this,screenWidth,screenHeight);
               }
               this.initLevelMain();
               if(_loc3_)
               {
                  §'!V§.§'!s§.visible = false;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr98);
               }
               §`![§.§;q§(§4a§);
               §`![§.§05§(true);
            }
            addr98:
            var _loc1_:XMLList = §3!X§.§3<§(§;!Q§).children();
            if(_loc3_)
            {
               §;y§.init(_loc1_);
               §+!§.§#n§("CHANNEL_THEME",1,1);
               §+!§.§#n§("CHANNEL_AMBIENT",1,1);
               this.initUserProgress();
               stage.addEventListener(Event.MOUSE_LEAVE,this.§4E§);
               if(_loc3_ || _loc1_)
               {
                  §§goto(addr134);
               }
               §§goto(addr158);
            }
            addr134:
            stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            stage.addEventListener(Event.RESIZE,this.onStageResize);
            if(_loc3_)
            {
               addr158:
               stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
               §!!,§ = new §<!§(stage);
            }
            §§push(§@!T§.§`!t§);
            §§push(§>!q§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
            }
            §§pop().§;@§ = §§pop();
            return;
         }
         §§goto(addr67);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §'!V§.§1!2§ = new §7E§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            sUserProgress = new §;!i§(§`!l§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § Y§(new §1!f§(false));
            if(_loc2_ || _loc2_)
            {
               § Y§(new §26§(false));
               if(_loc2_ || _loc2_)
               {
                  § Y§(new §#!@§(false));
                  addr48:
                  § Y§(new §9!h§(false));
                  if(!_loc1_)
                  {
                     § Y§(new §?&§(false));
                     if(_loc2_)
                     {
                        addr62:
                        § Y§(new StatePlay(false));
                        if(!(_loc1_ && _loc1_))
                        {
                           § Y§(new §^r§(false));
                        }
                        § Y§(new §0k§(false));
                        § Y§(new §<!`§(false));
                        if(!(_loc1_ && _loc2_))
                        {
                           addr106:
                           § Y§(new §0x§(false));
                           if(_loc2_)
                           {
                              § Y§(new §8!v§(false));
                              if(_loc2_ || _loc1_)
                              {
                                 § Y§(new StateCutScene(false));
                                 § Y§(new §?!M§(false));
                                 if(_loc2_ || _loc1_)
                                 {
                                 }
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr182);
                        }
                        §§push(stage.stageWidth == screenWidth);
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                           if(!(_loc1_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    addr171:
                                    §§push(stage.stageHeight == screenHeight);
                                    if(!_loc1_)
                                    {
                                       addr177:
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              this.onStageResize(null);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr177);
                     }
                     addr182:
                     return;
                  }
                  §§goto(addr171);
               }
               §§goto(addr106);
            }
            §§goto(addr48);
         }
         §§goto(addr62);
      }
      
      protected function §]!3§(param1:ByteArray) : void
      {
      }
      
      protected function §4E§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §%s§.§9g§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §%s§.§,5§();
         if(_loc5_)
         {
            if(this.§^!v§)
            {
               if(!_loc4_)
               {
                  addr26:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§#!I§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.§#!I§ = _loc3_;
                  }
                  §§push(this.§#!I§);
                  if(!_loc4_)
                  {
                     §§push(§+!A§);
                     if(!_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc5_)
                           {
                              this.§^!v§ = false;
                           }
                        }
                        §§goto(addr95);
                     }
                     if(§§pop() < §§pop())
                     {
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            addr95:
            if(_loc5_ || _loc2_)
            {
               addr93:
               §§push(this.§#`§);
               §§push(§#!s§);
            }
            this.§7Q§(this.§;R§);
            return;
         }
         §§goto(addr26);
      }
      
      public function §2#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(!_loc7_)
         {
            §§push(this.§<W§);
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     return;
                  }
               }
               §§push(stage.stageWidth < 2);
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        addr62:
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           addr74:
                           if(stage.stageHeight < 2)
                           {
                              if(!_loc7_)
                              {
                                 return;
                              }
                           }
                        }
                        §§push(stage.stageWidth / screenWidth);
                        if(_loc6_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(stage.stageHeight / screenHeight);
                        if(_loc6_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc2_ < _loc3_)
                        {
                           _loc4_ = Number(stage.stageWidth);
                           §§push(stage.stageWidth * (screenHeight / screenWidth));
                           if(!(_loc7_ && this))
                           {
                              _loc5_ = §§pop();
                              if(_loc6_)
                              {
                                 §§goto(addr163);
                              }
                           }
                           else
                           {
                              addr146:
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 _loc5_ = stage.stageHeight;
                                 addr163:
                                 §'!V§.§>!T§(0,0,stage.stageWidth,stage.stageHeight);
                                 if(!(_loc7_ && param1))
                                 {
                                    setViewSize(stage.stageWidth,stage.stageHeight);
                                    addr184:
                                    §6!I§ = stage.stageWidth;
                                 }
                                 §+m§ = stage.stageHeight;
                                 return;
                              }
                           }
                           §§goto(addr184);
                        }
                        else
                        {
                           §§push(Number(stage.stageHeight * (screenWidth / screenHeight)));
                        }
                        §§goto(addr146);
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr62);
         }
         §§goto(addr74);
      }
      
      public function §!5§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(!(_loc2_ && this))
         {
            if(_loc1_ - this.§;R§ > §%!c§)
            {
               if(_loc3_ || this)
               {
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(_loc3_)
                     {
                        addr68:
                        this.§7Q§(_loc1_);
                        if(_loc2_ && _loc3_)
                        {
                        }
                     }
                  }
                  else if(stage.displayState == StageDisplayState.NORMAL)
                  {
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr89);
               }
               this.§+!Y§(_loc1_);
            }
            addr89:
            return;
         }
         §§goto(addr68);
      }
      
      public function §2t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§7Q§(0);
         }
      }
      
      public function §`!-§() : Boolean
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
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr45:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr45);
      }
      
      private function §7Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<W§ = true;
            if(_loc2_ || param1)
            {
               addr38:
               stage.displayState = StageDisplayState.NORMAL;
               if(!_loc3_)
               {
                  §§goto(addr44);
               }
               §§goto(addr49);
            }
            addr44:
            this.§;R§ = param1;
            if(!_loc3_)
            {
               addr49:
               this.§^!v§ = false;
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §+!Y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§<W§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         if(_loc3_)
         {
            this.§;R§ = param1;
            this.§#`§ = 0;
         }
         this.§#!I§ = 0;
         if(!_loc2_)
         {
            this.§^!v§ = true;
         }
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
               if(_loc4_ || _loc2_)
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
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.setFirstGameState();
            if(!(_loc1_ && _loc1_))
            {
               §%!M§.§`!t§.§3n§();
               if(!_loc1_)
               {
                  addr58:
                  §1^§.§2A§(JSON.parse(this.§<^§.getFileAsString("Chapters.json")));
                  if(!_loc1_)
                  {
                     addr68:
                     this.initializeGame();
                  }
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr68);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(§'!V§.§'!s§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr42:
                  if(_loc4_)
                  {
                     §§push(§'!V§.§'!s§);
                  }
                  §§push(super.updateState(param1));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc5_)
                  {
                     if(!§?8§().isGenericState())
                     {
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              if(§§pop() == §;!!§.STATE_STATUS_COMPLETED)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§`![§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() + §?8§().mName);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + " New State = ");
                                          if(_loc5_ && _loc2_)
                                          {
                                          }
                                          addr118:
                                          §§pop().log(§§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §8!W§(§?8§().mNextState);
                                             addr132:
                                             return _loc2_;
                                             addr131:
                                          }
                                          §§goto(addr131);
                                       }
                                       §§push(§§pop() + §?8§().mNextState);
                                    }
                                    §§goto(addr118);
                                 }
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr132);
                        }
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr42);
            }
            §§pop().update(param1);
         }
         §§goto(addr42);
      }
      
      override public function getAppWidth() : Number
      {
         return §&d§;
      }
      
      override public function getAppHeight() : Number
      {
         return §6k§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&_§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(!(_loc2_ && this))
         {
            §§push(VERSION);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!_loc2_)
               {
                  §§push(", ");
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_ || _loc2_)
                     {
                        addr75:
                        addr74:
                        §§push(§§pop() + "Server: ");
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr80);
                     }
                     addr79:
                     addr80:
                     return §§pop();
                     §§push(§§pop() + §9!T§);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr79);
         }
         §§goto(addr74);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!V§.§@!u§(this.getItemData(),this.getLevelBackgrounds());
            if(!(_loc1_ && _loc2_))
            {
               addr47:
               §'!V§.§ D§(this.§<^§.§#!a§,§1!!§.§`Y§(),this.onGraphicsInitialized);
            }
            return;
         }
         §§goto(addr47);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §3!X§.§3<§(§&!_§);
      }
      
      protected function getItemData() : XML
      {
         return §3!X§.§3<§(§?N§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7!p§ = true;
            if(_loc3_)
            {
               if(§^!#§)
               {
                  if(!_loc2_)
                  {
                     addr38:
                     §8!W§(§1!f§.STATE_NAME);
                     if(!_loc2_)
                     {
                        addr44:
                     }
                  }
                  §§goto(addr44);
               }
               else
               {
                  §8!W§(§#!@§.STATE_NAME);
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr38);
      }
      
      public function §]R§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§^!v§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     addr30:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§#`§);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§#`§ = _loc3_;
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr85);
               }
               addr77:
               §§push(§7j§.§!m§());
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr85:
                     super.onEnterFrame(param1);
                  }
               }
               §§goto(addr90);
            }
            addr90:
            if(this.§<W§)
            {
               if(_loc4_)
               {
                  this.§<W§ = false;
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
