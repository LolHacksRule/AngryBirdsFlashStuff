package
{
   import § C§.§#y§;
   import § C§.§%H§;
   import § C§.§+!"§;
   import § C§.§+!A§;
   import § C§.§,§;
   import § C§.§,!?§;
   import § C§.§4t§;
   import § C§.§7!6§;
   import § C§.§9,§;
   import § C§.StateCutScene;
   import § C§.StatePlay;
   import § C§.§]!'§;
   import § C§.§]O§;
   import §!%§.§=0§;
   import §!Y§.§==§;
   import §!Y§.§[o§;
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import §-Z§.§?h§;
   import §2!5§.§";§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §;8§.§!$§;
   import §;8§.§3f§;
   import §;8§.§]'§;
   import §;_§.;
   import §@!,§.§8!6§;
   import §@!,§.§`!,§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import com.rovio.assets.§8!=§;
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
   
   public class AngryBirdsFP11 extends §`!,§
   {
      
      protected static var §@N§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §>d§:String;
      
      public static var §]J§:String;
      
      public static const static:int = 1024;
      
      public static const §for§:int = 768;
      
      public static const §'Q§:Boolean = false;
      
      public static const §`]§:int = 2000;
      
      public static const §4K§:Boolean = false;
      
      private static const §&k§:int = 750;
      
      private static const §1F§:int = 3;
      
      private static const §2p§:int = 15;
      
      protected static var §&!,§:Class;
      
      protected static var §+N§:Class;
      
      protected static var § W§:Class;
      
      protected static var §,a§:Class;
      
      public static var §64§:§#1§ = null;
      
      public static var §6!<§:Boolean = true;
      
      private static var get:AngryBirdsFP11 = null;
      
      public static var §1?§:Sprite = null;
      
      public static var §0-§:§==§;
      
      public static var §[h§:Boolean = false;
      
      protected static var §%! §:int = 0;
      
      protected static var §=j§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@N§ = AngryBirdsFP11_mTextBinary;
            VERSION = "0.0.1.({svn_version})";
            static = 1024;
            §for§ = 768;
            §'Q§ = false;
            §`]§ = 2000;
            loop0:
            while(true)
            {
               §4K§ = false;
               loop1:
               while(true)
               {
                  §&k§ = 750;
                  while(true)
                  {
                     §1F§ = 3;
                     addr124:
                     addr63:
                     while(true)
                     {
                        §2p§ = 15;
                        §&!,§ = AngryBirdsFP11_mViewLibraryBin;
                        while(true)
                        {
                           §+N§ = AngryBirdsFP11_mAssetMapBin;
                           § W§ = AngryBirdsFP11_mItemDataTableBin;
                           §,a§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                           §64§ = null;
                           addr92:
                           while(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     loop6:
                     while(!(_loc1_ && AngryBirdsFP11))
                     {
                        §1?§ = null;
                        while(true)
                        {
                           §[h§ = false;
                           while(_loc2_)
                           {
                              §%! § = 0;
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 §=j§ = 0;
                                 if(_loc1_)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc1_)
                                 {
                                    §§goto(addr32);
                                 }
                                 else
                                 {
                                    §§goto(addr92);
                                 }
                              }
                              §§goto(addr124);
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private var §0!9§:§=0§;
      
      private var §6s§:int;
      
      private var §"I§:Boolean;
      
      private var §4l§:int;
      
      private var §1`§:int;
      
      protected var §@C§:Boolean;
      
      public function AngryBirdsFP11(param1:§8!6§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§0!9§ = new §=0§();
         §§push(§§findproperty(§>d§));
         if(_loc2_ || _loc2_)
         {
            §§push(param1.stage.loaderInfo.parameters.serverVersion);
            if(_loc2_ || _loc2_)
            {
               §§pop().§>d§ = §§pop() || "[No version from server]";
               while(true)
               {
                  §§push(§§findproperty(§]J§));
                  if(_loc2_ || this)
                  {
                     §§push(param1.stage.loaderInfo.parameters.serverRoot);
                     if(!(_loc3_ && this))
                     {
                        if(!§§pop())
                        {
                           addr118:
                           §§pop();
                           if(_loc2_)
                           {
                              addr121:
                              if(!§'Q§)
                              {
                                 addr128:
                                 §§pop().§]J§ = "http://angrybirds-facebook-dev.appspot.com";
                                 super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
                                 continue;
                              }
                              §§goto(addr128);
                           }
                           §§push("http://head-dot-angrybirds-facebook-dev.appspot.com");
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr164);
      }
      
      public static function get stageWidth() : int
      {
         return §%! §;
      }
      
      public static function get stageHeight() : int
      {
         return §=j§;
      }
      
      public static function §-!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §6!<§ = param1;
         }
         do
         {
            §@6§.§`n§(§6!<§);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public static function §;9§() : Boolean
      {
         return §6!<§;
      }
      
      public static function get screenWidth() : int
      {
         return §?L§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §?L§.getAppHeight();
      }
      
      public static function §]!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§@6§.§"7§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr95:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || AngryBirdsFP11)
                        {
                           §@6§.playSound("ThemeMusic","Channel_Theme",999);
                        }
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr58:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(§@6§.§"7§("Channel_Theme"));
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop().§%!'§());
               if(_loc2_)
               {
                  if(!_loc1_)
                  {
                     addr51:
                     §§push(!§§pop());
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr58);
               }
               §§goto(addr51);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      public static function §^!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@6§.§!>§("Channel_Theme");
         }
      }
      
      public static function get §?L§() : AngryBirdsFP11
      {
         return get;
      }
      
      protected function getAssetMap() : XML
      {
         return §]'§.§5P§(§+N§);
      }
      
      protected function getUIData() : XML
      {
         return §]'§.§5P§(§&!,§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §>!8§.§[8§.init(§[-§.§]B§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§0!9§,this.§^!+§);
         get = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         do
         {
            stage.align = StageAlign.TOP_LEFT;
            do
            {
               §'F§ = screenWidth;
            }
            while(_loc3_ && this);
            
            §=b§ = screenHeight;
         }
         while(_loc3_);
         
         §[o§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         loop2:
         while(true)
         {
            §[o§.§#[§.visible = false;
            addr49:
            while(true)
            {
               addr32:
               while(true)
               {
                  §3f§.§=a§(§5A§);
                  continue loop2;
               }
            }
         }
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[o§.§='§ = new §2^§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §64§ = new §#1§(§]J§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!2§(new §]!'§(false));
            §9!2§(new §7!6§(false));
            §9!2§(new §,!?§(false));
            §9!2§(new §9,§(false));
            while(true)
            {
               §9!2§(new §4t§(false));
               loop1:
               while(true)
               {
                  §9!2§(new StatePlay(false));
                  loop2:
                  while(true)
                  {
                     §9!2§(new §,§(false));
                     addr138:
                     while(_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function §^!+§(param1:ByteArray) : void
      {
      }
      
      protected function §6!G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §!$§.§31§();
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §!$§.§8,§();
            if(!_loc4_)
            {
               if(this.§"I§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr38:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§1`§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§1`§ = _loc3_;
                     }
                     §§push(this.§1`§);
                     loop1:
                     while(true)
                     {
                        §§push(§2p§);
                        loop2:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§"I§ = false;
                                 addr120:
                                 while(true)
                                 {
                                    §§push(this.§4l§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§1F§);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             break;
                                          }
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             this.§,!C§(this.§6s§);
                                          }
                                          if(_loc5_ || this)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr65);
                        }
                     }
                     addr63:
                  }
                  §§goto(addr120);
               }
               addr65:
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr63);
      }
      
      public function §30§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_ || _loc3_)
         {
            §§push(this.§@C§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc7_ || _loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     loop4:
                     for(; _loc7_ || this; while(true)
                     {
                        §§pop();
                        continue loop4;
                     })
                     {
                        addr84:
                        §§push(stage.stageHeight < 2);
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              if(_loc6_ && param1)
                              {
                                 continue loop4;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                    addr55:
                                 }
                                 while(true)
                                 {
                                    §§push(stage.stageWidth < 2);
                                    if(_loc7_ || this)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                           §§goto(addr84);
                        }
                        §§push(stage.stageWidth / screenWidth);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(stage.stageHeight / screenHeight);
                        if(_loc7_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc2_ < _loc3_)
                        {
                           §§push(Number(stage.stageWidth));
                           loop7:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr256:
                              while(true)
                              {
                                 §§push(stage.stageWidth * (screenHeight / screenWidth));
                                 continue loop7;
                              }
                           }
                        }
                        else
                        {
                           §§push(Number(stage.stageHeight * (screenWidth / screenHeight)));
                        }
                        §§goto(addr230);
                     }
                  }
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §,!!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(!(_loc2_ && _loc1_))
         {
            if(_loc1_ - this.§6s§ > §&k§)
            {
               for(; stage.displayState != StageDisplayState.FULL_SCREEN; if(_loc2_ && this)
               {
                  continue;
               },addr77:)
               {
                  if(stage.displayState == StageDisplayState.NORMAL)
                  {
                     if(!_loc2_)
                     {
                        this.§0;§(_loc1_);
                     }
                     if(!_loc3_)
                     {
                        addr29:
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                     addr29:
                     return;
                     addr92:
                  }
                  §§goto(addr29);
               }
               this.§,!C§(_loc1_);
               §§goto(addr92);
            }
            §§goto(addr29);
         }
         §§goto(addr77);
      }
      
      public function §&x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!C§(0);
         }
      }
      
      public function § 3§() : Boolean
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
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr30:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr30);
      }
      
      private function §,!C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@C§ = true;
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               while(true)
               {
                  this.§6s§ = param1;
                  §§goto(addr64);
               }
            }
         }
         addr64:
         while(true)
         {
            this.§"I§ = false;
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr59:
      }
      
      private function §0;§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§@C§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         while(true)
         {
            this.§6s§ = param1;
            loop1:
            while(!(_loc3_ && _loc2_))
            {
               this.§4l§ = 0;
               loop2:
               do
               {
                  this.§1`§ = 0;
                  while(_loc2_)
                  {
                     this.§"I§ = true;
                     if(_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(!_loc2_);
               
               return;
            }
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(_loc3_ || _loc3_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr45:
               §§push(0);
               if(!_loc3_)
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
         §§goto(addr45);
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
               §>!8§.§[8§.§=#§();
               while(true)
               {
                  §0$§.§#;§(JSON.parse(this.§0!9§.getFileAsString("Chapters.json")));
                  §§goto(addr72);
               }
            }
         }
         addr72:
         while(true)
         {
            this.initializeGame();
            if(_loc1_ || _loc1_)
            {
               if(_loc1_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr62:
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(§[o§.§#[§);
            if(_loc4_ || param1)
            {
               if(§§pop() != null)
               {
                  addr37:
                  if(!_loc5_)
                  {
                     §§push(§[o§.§#[§);
                  }
                  §§push(super.updateState(param1));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc5_)
                  {
                     if(!§"! §().isGenericState())
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           addr107:
                           while(true)
                           {
                              if(§§pop() == §-§.STATE_STATUS_COMPLETED)
                              {
                                 while(true)
                                 {
                                    §§push(§3f§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() + §"! §().mName);
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() + " New State = ");
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 addr110:
                              }
                           }
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && param1))
                              {
                                 break;
                              }
                              §§goto(addr107);
                           }
                           return §§pop();
                           addr47:
                        }
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr110);
               }
               §§goto(addr37);
            }
            §§pop().update(param1);
         }
         §§goto(addr37);
      }
      
      override public function getAppWidth() : Number
      {
         return static;
      }
      
      override public function getAppHeight() : Number
      {
         return §for§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §`]§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(_loc1_ || _loc2_)
         {
            §§push(VERSION);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(_loc1_)
               {
                  addr53:
                  §§push(", ");
                  if(!_loc2_)
                  {
                     §§goto(addr75);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && this))
                  {
                     addr74:
                     §§push(§§pop() + §>d§);
                  }
               }
               addr75:
               §§push(§§pop() + §§pop());
               if(_loc1_ || _loc2_)
               {
                  return "Server: ";
               }
            }
            §§goto(addr74);
         }
         §§goto(addr53);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[o§.§'7§(this.getItemData(),this.getLevelBackgrounds());
            do
            {
               §[o§.§>&§(this.§0!9§.§->§,§&!@§.§]r§(),this.onGraphicsInitialized);
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §]'§.§5P§(§,a§);
      }
      
      protected function getItemData() : XML
      {
         return §]'§.§5P§(§ W§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §[h§ = true;
            do
            {
               if(!§4K§)
               {
                  §&K§(§,!?§.§?B§);
                  if(_loc2_)
                  {
                     if(!(_loc2_ || param1))
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
            while(!_loc2_);
            
            §&K§(§]!'§.§?B§);
         }
         §§goto(addr74);
      }
      
      public function §8M§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§"I§);
         if(_loc5_)
         {
            if(§§pop())
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§4l§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§4l§ = _loc3_;
               }
            }
            §§push(§?h§.§6t§());
         }
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr106);
            }
            while(true)
            {
               super.onEnterFrame(param1);
               §§push(this.§@C§);
               if(_loc5_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     if(!(_loc5_ || _loc3_))
                     {
                        addr106:
                        return;
                     }
                     this.§@C§ = false;
                  }
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
