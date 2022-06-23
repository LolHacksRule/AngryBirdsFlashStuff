package
{
   import § !;§.§%'§;
   import § !;§.§^!3§;
   import §"!5§.§,!!§;
   import §%x§.§6]§;
   import §'R§.§2g§;
   import §'X§.§8s§;
   import §0!<§.§]o§;
   import §<!7§.§2+§;
   import §=!4§.§>y§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §`!%§.§ @§;
   import §`!%§.§ z§;
   import §`!%§.;
   import §`!%§.§&Z§;
   import §`!%§.§+o§;
   import §`!%§.§=!$§;
   import §`!%§.§?3§;
   import §`!%§.§^s§;
   import com.rovio.assets.§,u§;
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
   
   public class §@!?§ extends AngryBirdsFP11
   {
      
      public static const §#d§:String = "0.0.0.1 (r97183) beta";
      
      private static const §03§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §?k§:Class;
      
      protected static var §<J§:Class;
      
      protected static var §>O§:Class;
      
      protected static var §@!8§:Class;
      
      public static var §%P§:§@!?§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#d§ = "0.0.0.1 (r97183) beta";
         }
         if(_loc1_)
         {
            LOCAL_CONNECTION_2 = "AngryBirdsIntelEmbed-2";
            if(!(_loc2_ && §@!?§))
            {
               addr64:
               §?k§ = §0$§;
               if(!(_loc2_ && §@!?§))
               {
                  §§goto(addr74);
               }
               §§goto(addr79);
            }
            addr74:
            §<J§ = §"#§;
            if(!_loc2_)
            {
               addr79:
               §>O§ = §'Q§;
            }
            §@!8§ = §%_§;
            return;
         }
         §§goto(addr64);
      }
      
      private var §[!>§:String = null;
      
      private var §%8§:String = "";
      
      private var §5;§:Boolean = false;
      
      private var § e§:LocalConnection;
      
      private var §;2§:String;
      
      private var §!3§:Boolean;
      
      private var §4!?§:Sprite;
      
      private var §<!?§:int = 0;
      
      private var §2!B§:Number;
      
      private var §2!0§:Number;
      
      public function §@!?§(param1:§2+§, param2:Number, param3:Number)
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
                  §§pop().§;2§ = §§pop();
                  if(!(_loc7_ && this))
                  {
                     this.§2!B§ = initialWidth;
                  }
                  this.§2!0§ = initialHeight;
                  this.§ e§ = new LocalConnection();
                  if(_loc8_ || param2)
                  {
                     this.§ e§.addEventListener(StatusEvent.STATUS,this.§8"§);
                  }
               }
               try
               {
                  this.§ e§.connect(LOCAL_CONNECTION_1);
               }
               catch(e:Error)
               {
                  if(!(_loc7_ && this))
                  {
                     try
                     {
                        § e§.connect(LOCAL_CONNECTION_2);
                     }
                     catch(e:Error)
                     {
                     }
                     addr154:
                  }
                  §§goto(addr154);
               }
               this.§ e§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§;2§);
               if(_loc8_)
               {
                  this.§ e§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§;2§);
                  if(!_loc7_)
                  {
                     this.§ e§.client = {"onInstanceStarting":this.onInstanceStarting};
                     super(canvas);
                     addr195:
                     §%P§ = this;
                     if(!(_loc7_ && param3))
                     {
                        canvas.stage.quality = StageQuality.MEDIUM;
                     }
                     §>y§.initialize(canvas.stage);
                  }
                  return;
               }
               §§goto(addr195);
            }
         }
         §§goto(addr39);
      }
      
      private function §",§() : Boolean
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
      
      private function §8"§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != this.§;2§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§ e§ = null;
                  if(_loc3_ || this)
                  {
                     addr50:
                     this.§^j§();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §7a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%'§.§71§(param1);
            if(_loc3_ || this)
            {
               navigateToURL(new URLRequest("https://apps.facebook.com/ultraangerdev/?ref=wallPlay" + param1 + "&levelId=" + §6M§.§[z§),"_blank");
               if(_loc3_)
               {
                  addr54:
                  this.§^j§();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §^j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!3§ = true;
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
            if(this.§!3§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  stage.frameRate = 1;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr81);
               }
               §,!!§.pause();
               if(_loc3_ || _loc2_)
               {
                  addr68:
                  this.§]!F§();
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
      
      private function §]!F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§4!?§)
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
                  _loc2_ = §,u§.§'[§("ThankYouForPlaying");
                  this.§4!?§ = new _loc2_();
                  if(_loc4_)
                  {
                     this.§4!?§.x = 0;
                  }
                  this.§4!?§.y = 0;
                  stage.addChild(this.§4!?§);
                  stage.addEventListener(MouseEvent.CLICK,this.§%L§);
                  if(_loc4_)
                  {
                     this.§4!?§.useHandCursor = true;
                     if(_loc4_ || _loc2_)
                     {
                        this.§4!?§.buttonMode = true;
                        if(_loc4_)
                        {
                           this.§!!#§();
                        }
                        addr138:
                        §§push(§,!!§.§;4§);
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
               §§push(§,!!§.§;4§);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §%L§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§%L§);
            if(!(_loc3_ && param1))
            {
               if(this.§4!?§)
               {
                  if(_loc2_)
                  {
                     addr56:
                     this.§4!?§.useHandCursor = false;
                     if(_loc2_ || param1)
                     {
                     }
                     §§goto(addr73);
                  }
                  this.§4!?§.buttonMode = false;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               addr73:
               this.§7a§("ThankYou");
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
            §3!E§.init();
            if(!_loc2_)
            {
               §3!E§.enabled = false;
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §]o§.§#b§(§?k§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §]o§.§#b§(§<J§);
         if(_loc4_)
         {
            this.§=i§(_loc2_,_loc1_,["Views","Components"]);
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
         var _loc2_:XML = §]o§.§#b§(§@!8§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_)
         {
            this.§=i§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §]o§.§#b§(§>O§);
         if(_loc4_)
         {
            this.§=i§(_loc2_,_loc1_,["Backgrounds"]);
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
               this.§[!>§ = stage.loaderInfo.parameters.levelId;
               if(!_loc2_)
               {
                  §§push(this.§[!>§);
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr58:
                           this.§[!>§ = "1-1";
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
                                       this.§<!?§ = parseInt(_loc1_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(this.§<!?§ <= 0)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr143:
                                                this.§<!?§ = 0;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr153:
                                                   §-E§(false);
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
            if(this.§",§())
            {
               if(!(_loc1_ && _loc2_))
               {
                  §,!!§.§;4§ = new §6]§(stage);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr54);
               }
            }
            else
            {
               this.§"Z§();
            }
         }
         addr54:
      }
      
      private function §"Z§() : void
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
            sUserProgress = new §2g§(§+!E§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §0!5§(new §+o§(false));
         §0!5§(new §=!$§(false));
         §0!5§(new §^s§(false,this.§<!?§));
         §0!5§(new §&Z§(false));
         §0!5§(new § z§(false,this.§<!?§));
         if(_loc1_)
         {
            §0!5§(new §#7§(false));
         }
      }
      
      override protected function initStateLoad() : §8s§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§[!2§)
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
                     §§push(§§findproperty(§?3§));
                     §§push(true);
                     §§push(§8s§.§0!7§);
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
                                       return new §§pop().§?3§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
               §%'§.§?&§("assetsUrl");
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
         if(this.§!3§)
         {
            return;
         }
         §with§ = true;
         §§push(this.§[!>§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§push(§6M§.§&q§(this.§[!>§));
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
                           if(_loc2_ != this.§[!>§)
                           {
                              addr65:
                              §%'§.§<_§(this.§[!>§);
                           }
                           this.§[!>§ = null;
                           if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §6M§.§<H§(_loc2_);
                                 if(_loc4_)
                                 {
                                    §,t§(§ @§.§0!7§);
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
               this.§^j§();
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
            this.§!!#§();
         }
      }
      
      private function §!!#§() : void
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
                                          _loc1_ = §;B§;
                                          _loc2_ = §=!#§;
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
                                                      if(this.§4!?§)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§4!?§.x = 0;
                                                            if(_loc3_)
                                                            {
                                                               addr144:
                                                               this.§4!?§.y = 0;
                                                               if(_loc3_)
                                                               {
                                                                  this.§4!?§.scaleX = stage.stageWidth / this.§2!B§;
                                                                  this.§4!?§.scaleY = stage.stageHeight / this.§2!0§;
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
                                                            if(this.§",§())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §,!!§.§1%§(0,0,_loc1_,_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     setViewSize(_loc1_,_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               this.§>@§(_loc1_,_loc2_);
                                                            }
                                                            §;B§ = _loc1_;
                                                            if(_loc3_ || this)
                                                            {
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr227:
                                                         §=!#§ = _loc2_;
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
      
      public function §>@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §>y§.setViewSize(param1,param2);
         }
      }
      
      protected function §=i§(param1:XML, param2:XML, param3:Array) : void
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
            §§push(§§pop() + §#d§.replace("{svn_version}","local dev build"));
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ || _loc1_)
               {
                  addr55:
                  §§push(§§pop() + §]7§);
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
            §%'§.§#r§(§^!3§.§#+§,_loc1_.toString(),_loc1_);
            if(_loc2_)
            {
               if(this.§!3§)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr68:
                  this.§5;§ = true;
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
               §§push(this.§%8§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     this.§%8§ = String.fromCharCode(param1.keyCode);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr82:
                        this.§%8§ = this.§%8§.toLowerCase();
                        addr62:
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     this.§%8§ += String.fromCharCode(param1.keyCode);
                  }
                  §§goto(addr82);
               }
               addr89:
               if(this.§%8§.length > 15)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr99:
                     this.§%8§ = this.§%8§.substr(1);
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
