package
{
   import §#h§.§ !H§;
   import §%!6§.§+9§;
   import §%!6§.§5!A§;
   import §+!?§.§"h§;
   import §+K§.§ !-§;
   import §2?§.§3!#§;
   import §3G§.§null §;
   import §6H§.§?i§;
   import §8c§.§ p§;
   import §;m§.§!!8§;
   import §;m§.§&!3§;
   import §;m§.§&0§;
   import §;m§.§&Z§;
   import §;m§.§,!>§;
   import §;m§.§-u§;
   import §;m§.§3!1§;
   import §;m§.§3'§;
   import §=!B§.§59§;
   import §>K§.§=!I§;
   import com.rovio.assets.§!Q§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §+!0§ extends AngryBirdsFP11
   {
      
      public static const §4l§:String = "1.0.0.5 (r97703) beta";
      
      private static const §'$§:String = "AngryBirdsEmbedIntelSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §?R§:Class;
      
      protected static var §0!%§:Class;
      
      protected static var §?J§:Class;
      
      protected static var §7r§:Class;
      
      public static var §2[§:§+!0§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4l§ = "1.0.0.5 (r97703) beta";
         }
         if(_loc1_)
         {
            LOCAL_CONNECTION_2 = "AngryBirdsIntelEmbed-2";
            if(!(_loc2_ && §+!0§))
            {
               addr64:
               §?R§ = §@J§;
               if(!(_loc2_ && §+!0§))
               {
                  §§goto(addr74);
               }
               §§goto(addr79);
            }
            addr74:
            §0!%§ = §3v§;
            if(!_loc2_)
            {
               addr79:
               §?J§ = §>%§;
            }
            §7r§ = §&!<§;
            return;
         }
         §§goto(addr64);
      }
      
      private var §3d§:String = null;
      
      private var §[!%§:String = "";
      
      private var §1%§:Boolean = false;
      
      private var §&!H§:LocalConnection;
      
      private var §0H§:String;
      
      private var §[[§:Boolean;
      
      private var §!$§:Sprite;
      
      private var §>,§:int = 0;
      
      private var §8!?§:Number;
      
      private var §=!8§:Number;
      
      public function §+!0§(param1:§ p§, param2:Number, param3:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc7_ && this))
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(!_loc7_)
            {
               §§push(param2);
               if(_loc8_)
               {
                  §§pop().§§slot[2] = §§pop();
                  addr39:
                  §§push(§§newactivation());
                  §§push(param3);
               }
               §§pop().§§slot[3] = §§pop();
               if(!(_loc7_ && this))
               {
                  §§push(this);
                  §§push(new Date().toTimeString() + "_");
                  if(_loc8_ || param3)
                  {
                     §§push(§§pop() + Math.round(Math.random() * 100000));
                  }
                  §§pop().§0H§ = §§pop();
                  if(!(_loc7_ && this))
                  {
                     this.§8!?§ = initialWidth;
                  }
                  this.§=!8§ = initialHeight;
                  this.§&!H§ = new LocalConnection();
                  if(_loc8_ || param2)
                  {
                     this.§&!H§.addEventListener(StatusEvent.STATUS,this.§4w§);
                  }
               }
               try
               {
                  this.§&!H§.connect(LOCAL_CONNECTION_1);
               }
               catch(e:Error)
               {
                  if(!(_loc7_ && this))
                  {
                     try
                     {
                        §&!H§.connect(LOCAL_CONNECTION_2);
                     }
                     catch(e:Error)
                     {
                     }
                     addr154:
                  }
                  §§goto(addr154);
               }
               this.§&!H§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§0H§);
               if(_loc8_)
               {
                  this.§&!H§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§0H§);
                  if(!_loc7_)
                  {
                     this.§&!H§.client = {"onInstanceStarting":this.onInstanceStarting};
                     super(canvas);
                     addr195:
                     §2[§ = this;
                     if(!(_loc7_ && param3))
                     {
                        canvas.stage.quality = StageQuality.MEDIUM;
                     }
                     §3!#§.initialize(canvas.stage);
                  }
                  return;
               }
               §§goto(addr195);
            }
         }
         §§goto(addr39);
      }
      
      private function §,Z§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Stage3D = null;
         var _loc1_:* = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(!(_loc4_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(_loc5_)
                  {
                     addr50:
                     §§push(1);
                     if(!_loc4_)
                     {
                        _loc1_ = §§pop();
                        if(_loc5_ || this)
                        {
                           addr84:
                           if(_loc1_ == 0)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr93:
                                 §§push(false);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr102:
                                 §§push(true);
                              }
                              return §§pop();
                           }
                           §§goto(addr102);
                           addr61:
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr50);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
         }
         §§goto(addr84);
      }
      
      private function §4w§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != this.§0H§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§&!H§ = null;
                  if(_loc3_ || this)
                  {
                     addr50:
                     this.§ set§();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §5"§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §+9§.§1!3§(param1);
            if(_loc3_ || this)
            {
               navigateToURL(new URLRequest("https://apps.facebook.com/ab_in_adventure/?ref=wallPlay" + param1 + "&levelId=" + §59§.§%j§),"_blank");
               if(_loc3_)
               {
                  addr54:
                  this.§ set§();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function § set§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[[§ = true;
         }
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§[[§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  stage.frameRate = 1;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr81);
               }
               §"h§.pause();
               if(_loc3_ || _loc2_)
               {
                  addr68:
                  this.§7!2§();
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr81);
               }
            }
            else
            {
               super.onEnterFrame(param1);
            }
            addr81:
            return;
         }
         §§goto(addr68);
      }
      
      private function §7!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§!$§)
            {
               if(!_loc5_)
               {
                  addr33:
                  _loc1_ = 0;
               }
               while(_loc1_ < stage.numChildren)
               {
                  stage.getChildAt(_loc1_).visible = false;
                  if(_loc4_)
                  {
                     _loc1_++;
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                  }
               }
               try
               {
                  _loc2_ = §!Q§.§^!H§("ThankYouForPlaying");
                  this.§!$§ = new _loc2_();
                  if(_loc4_)
                  {
                     this.§!$§.x = 0;
                  }
                  this.§!$§.y = 0;
                  stage.addChild(this.§!$§);
                  stage.addEventListener(MouseEvent.CLICK,this.§5a§);
                  if(_loc4_)
                  {
                     this.§!$§.useHandCursor = true;
                     if(_loc4_ || _loc2_)
                     {
                        this.§!$§.buttonMode = true;
                        if(_loc4_)
                        {
                           this.§<b§();
                        }
                        addr138:
                        §§push(§"h§.§1C§);
                        if(_loc4_ || this)
                        {
                           §§goto(addr151);
                        }
                        §§pop().clear();
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr148);
               }
               catch(e:Error)
               {
                  §§goto(addr138);
               }
            }
            addr151:
            if(§§pop())
            {
               addr148:
               §§push(§"h§.§1C§);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §5a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§5a§);
            if(!(_loc3_ && param1))
            {
               if(this.§!$§)
               {
                  if(_loc2_)
                  {
                     addr56:
                     this.§!$§.useHandCursor = false;
                     if(_loc2_ || param1)
                     {
                     }
                     §§goto(addr73);
                  }
                  this.§!$§.buttonMode = false;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               addr73:
               this.§5"§("ThankYou");
               return;
            }
         }
         §§goto(addr56);
      }
      
      override protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !H§.init();
            if(!_loc2_)
            {
               § !H§.enabled = false;
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §=!I§.§]g§(§?R§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=!I§.§]g§(§0!%§);
         if(_loc4_)
         {
            this.§;u§(_loc2_,_loc1_,["Views","Components"]);
         }
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §=!I§.§]g§(§7r§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_)
         {
            this.§;u§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §=!I§.§]g§(§?J§);
         if(_loc4_)
         {
            this.§;u§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
            if(!(_loc2_ && this))
            {
               this.§3d§ = stage.loaderInfo.parameters.levelId;
               if(!_loc2_)
               {
                  §§push(this.§3d§);
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr58:
                           this.§3d§ = "1-1";
                           if(!(_loc2_ && _loc1_))
                           {
                              addr78:
                              §§push(stage.loaderInfo.parameters.score);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || this)
                                    {
                                       addr99:
                                       §§pop();
                                       addr101:
                                       §§push("0");
                                    }
                                    var _loc1_:* = §§pop();
                                    if(_loc3_ || _loc1_)
                                    {
                                       this.§>,§ = parseInt(_loc1_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(this.§>,§ <= 0)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr143:
                                                this.§>,§ = 0;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr153:
                                                   §0R§(false);
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr101);
                              }
                           }
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr99);
               }
               §§goto(addr78);
            }
            §§goto(addr58);
         }
         §§goto(addr99);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§,Z§())
            {
               if(!(_loc1_ && _loc2_))
               {
                  §"h§.§1C§ = new §null §(stage);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr54);
               }
            }
            else
            {
               this.§3F§();
            }
         }
         addr54:
      }
      
      private function §3F§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TextField = new TextField();
         if(_loc2_)
         {
            _loc1_.text = "The game doesn\'t yet run on this device";
            _loc1_.textColor = 0;
            _loc1_.selectable = false;
            _loc1_.height = 30;
            if(!_loc3_)
            {
               _loc1_.width = 300;
               addr49:
               _loc1_.autoSize = TextFieldAutoSize.CENTER;
               stage.addChild(_loc1_);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                  _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            sUserProgress = new § !-§(§]!,§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §5!%§(new §,!>§(false));
         §5!%§(new §3!1§(false));
         §5!%§(new §&Z§(false,this.§>,§));
         §5!%§(new §!!8§(false));
         §5!%§(new §-u§(false,this.§>,§));
         if(_loc1_)
         {
            §5!%§(new §&!3§(false));
         }
      }
      
      override protected function initStateLoad() : §?i§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§0b§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr28:
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!_loc2_)
                     {
                     }
                     addr48:
                     §§push(§§findproperty(§&0§));
                     §§push(true);
                     §§push(§?i§.§-!A§);
                     §§push(this.getMinLoadingScreenTime());
                     if(!_loc1_)
                     {
                        §§push(stage.loaderInfo.parameters.assetsUrl);
                        if(!_loc1_)
                        {
                           §§push(§§pop());
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr84:
                                    §§pop();
                                    addr86:
                                    §§push("");
                                    §§push(stage.loaderInfo.parameters.buildNumber);
                                    if(_loc2_ || _loc2_)
                                    {
                                       return new §§pop().§&0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                                       addr98:
                                    }
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr48);
               }
               §+9§.§4!&§("assetsUrl");
            }
            §§goto(addr48);
         }
         §§goto(addr28);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(this.§[[§)
         {
            return;
         }
         §<!>§ = true;
         §§push(this.§3d§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§push(§59§.§7?§(this.§3d§));
                  if(_loc4_)
                  {
                     addr40:
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        addr53:
                        _loc2_ = §§pop();
                        if(_loc4_ || this)
                        {
                           addr62:
                           if(_loc2_ != this.§3d§)
                           {
                              addr65:
                              §+9§.§-t§(this.§3d§);
                           }
                           this.§3d§ = null;
                           if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §59§.§6!9§(_loc2_);
                                 if(_loc4_)
                                 {
                                    each(§3'§.§-!A§);
                                    if(_loc3_ && _loc2_)
                                    {
                                       addr114:
                                       return;
                                       addr111:
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr53);
               }
               §§goto(addr62);
            }
            else
            {
               this.§ set§();
            }
            §§goto(addr114);
         }
         §§goto(addr40);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§<b§();
         }
      }
      
      private function §<b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(20);
               if(!_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(!(_loc4_ && this))
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(20);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr80:
                                       if(§§pop())
                                       {
                                          addr83:
                                          _loc1_ = §&]§;
                                          _loc2_ = §-g§;
                                       }
                                       §§push(_loc1_);
                                       §§push(2);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(_loc3_)
                                          {
                                             addr94:
                                             if(!§§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr113:
                                                   §§pop();
                                                   §§push(_loc2_);
                                                   §§push(2);
                                                   if(!_loc4_)
                                                   {
                                                      addr119:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         return;
                                                      }
                                                      if(this.§!$§)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§!$§.x = 0;
                                                            if(_loc3_)
                                                            {
                                                               addr144:
                                                               this.§!$§.y = 0;
                                                               if(_loc3_)
                                                               {
                                                                  this.§!$§.scaleX = stage.stageWidth / this.§8!?§;
                                                                  this.§!$§.scaleY = stage.stageHeight / this.§=!8§;
                                                                  addr166:
                                                                  if(_loc1_ / _loc2_ > 25 / 12)
                                                                  {
                                                                     §§goto(addr173);
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         addr173:
                                                         _loc1_ = Math.round(_loc2_ * (25 / 12));
                                                         if(!_loc4_)
                                                         {
                                                            addr184:
                                                            addr186:
                                                            if(this.§,Z§())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §"h§.§19§(0,0,_loc1_,_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     setViewSize(_loc1_,_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               this.§,+§(_loc1_,_loc2_);
                                                            }
                                                            §&]§ = _loc1_;
                                                            if(_loc3_ || this)
                                                            {
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr227:
                                                         §-g§ = _loc2_;
                                                         return;
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr80);
               }
               §§goto(addr166);
            }
            §§goto(addr113);
         }
         §§goto(addr144);
      }
      
      public function §,+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §3!#§.setViewSize(param1,param2);
         }
      }
      
      protected function §;u§(param1:XML, param2:XML, param3:Array) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:XML = null;
         for each(_loc4_ in param3)
         {
            if(!(_loc11_ && param2))
            {
               var _loc8_:int = 0;
               if(_loc10_)
               {
                  for each(_loc5_ in param1[_loc4_].§*§)
                  {
                     if(!_loc11_)
                     {
                        param2[_loc4_].appendChild(_loc5_);
                     }
                  }
               }
            }
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(!(_loc2_ && this))
         {
            §§push(§§pop() + §4l§.replace("{svn_version}","local dev build"));
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ || _loc1_)
               {
                  addr55:
                  §§push(§§pop() + §4!?§);
               }
            }
            return §§pop();
         }
         §§goto(addr55);
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc2_ || _loc2_)
         {
            §+9§.§]c§(§5!A§.§ m§,_loc1_.toString(),_loc1_);
            if(_loc2_)
            {
               if(this.§[[§)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr68:
                  this.§1%§ = true;
                  if(_loc2_ || _loc1_)
                  {
                     addr78:
                     super.initializeGame();
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr78);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.onKeyDown(param1);
            if(_loc3_ || this)
            {
               §§push(this.§[!%§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     this.§[!%§ = String.fromCharCode(param1.keyCode);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr82:
                        this.§[!%§ = this.§[!%§.toLowerCase();
                        addr62:
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     this.§[!%§ += String.fromCharCode(param1.keyCode);
                  }
                  §§goto(addr82);
               }
               addr89:
               if(this.§[!%§.length > 15)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr99:
                     this.§[!%§ = this.§[!%§.substr(1);
                  }
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr62);
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
