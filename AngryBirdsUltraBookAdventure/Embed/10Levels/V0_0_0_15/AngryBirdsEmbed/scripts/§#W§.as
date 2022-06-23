package
{
   import §"!&§.§=F§;
   import §#'§.§'Q§;
   import §+!"§.§=L§;
   import §+!C§.§`O§;
   import §4!H§.;
   import §4!H§.§["§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §;!B§.§5U§;
   import §>!A§.§#!3§;
   import §>!A§.§+=§;
   import §>!A§.§,!7§;
   import §>!A§.§,w§;
   import §>!A§.§0$§;
   import §>!A§.§=!$§;
   import §>!A§.§^!-§;
   import §>!A§.§`I§;
   import §?b§.§8! §;
   import §@D§.§6I§;
   import com.rovio.assets.§'!H§;
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
   
   public class §#W§ extends AngryBirdsFP11
   {
      
      public static const §#0§:String = "0.0.0.1 (r97255) beta";
      
      private static const §>5§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §;i§:Class;
      
      protected static var §@%§:Class;
      
      protected static var §+!H§:Class;
      
      protected static var §`!E§:Class;
      
      public static var §[G§:§#W§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#0§ = "0.0.0.1 (r97255) beta";
         }
         if(_loc1_)
         {
            LOCAL_CONNECTION_2 = "AngryBirdsIntelEmbed-2";
            if(!(_loc2_ && §#W§))
            {
               addr64:
               §;i§ = §<b§;
               if(!(_loc2_ && §#W§))
               {
                  §§goto(addr74);
               }
               §§goto(addr79);
            }
            addr74:
            §@%§ = §'J§;
            if(!_loc2_)
            {
               addr79:
               §+!H§ = §,<§;
            }
            §`!E§ = §`s§;
            return;
         }
         §§goto(addr64);
      }
      
      private var §1!"§:String = null;
      
      private var §[F§:String = "";
      
      private var §<3§:Boolean = false;
      
      private var §5!$§:LocalConnection;
      
      private var §]"§:String;
      
      private var §>i§:Boolean;
      
      private var § Y§:Sprite;
      
      private var §3Z§:int = 0;
      
      private var §,v§:Number;
      
      private var §%C§:Number;
      
      public function §#W§(param1:§'Q§, param2:Number, param3:Number)
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
                  §§pop().§]"§ = §§pop();
                  if(!(_loc7_ && this))
                  {
                     this.§,v§ = initialWidth;
                  }
                  this.§%C§ = initialHeight;
                  this.§5!$§ = new LocalConnection();
                  if(_loc8_ || param2)
                  {
                     this.§5!$§.addEventListener(StatusEvent.STATUS,this.§2!!§);
                  }
               }
               try
               {
                  this.§5!$§.connect(LOCAL_CONNECTION_1);
               }
               catch(e:Error)
               {
                  if(!(_loc7_ && this))
                  {
                     try
                     {
                        §5!$§.connect(LOCAL_CONNECTION_2);
                     }
                     catch(e:Error)
                     {
                     }
                     addr154:
                  }
                  §§goto(addr154);
               }
               this.§5!$§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§]"§);
               if(_loc8_)
               {
                  this.§5!$§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§]"§);
                  if(!_loc7_)
                  {
                     this.§5!$§.client = {"onInstanceStarting":this.onInstanceStarting};
                     super(canvas);
                     addr195:
                     §[G§ = this;
                     if(!(_loc7_ && param3))
                     {
                        canvas.stage.quality = StageQuality.MEDIUM;
                     }
                     §5U§.initialize(canvas.stage);
                  }
                  return;
               }
               §§goto(addr195);
            }
         }
         §§goto(addr39);
      }
      
      private function §4a§() : Boolean
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
      
      private function §2!!§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != this.§]"§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§5!$§ = null;
                  if(_loc3_ || this)
                  {
                     addr50:
                     this.§0!"§();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §=K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §["§.§1!&§(param1);
            if(_loc3_ || this)
            {
               navigateToURL(new URLRequest("https://apps.facebook.com/ultraangerdev/?ref=wallPlay" + param1 + "&levelId=" + §5j§.§%V§),"_blank");
               if(_loc3_)
               {
                  addr54:
                  this.§0!"§();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §0!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§>i§ = true;
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
            if(this.§>i§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  stage.frameRate = 1;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr81);
               }
               §[k§.pause();
               if(_loc3_ || _loc2_)
               {
                  addr68:
                  this.§#1§();
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
      
      private function §#1§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§ Y§)
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
                  _loc2_ = §'!H§.§&!G§("ThankYouForPlaying");
                  this.§ Y§ = new _loc2_();
                  if(_loc4_)
                  {
                     this.§ Y§.x = 0;
                  }
                  this.§ Y§.y = 0;
                  stage.addChild(this.§ Y§);
                  stage.addEventListener(MouseEvent.CLICK,this.§"w§);
                  if(_loc4_)
                  {
                     this.§ Y§.useHandCursor = true;
                     if(_loc4_ || _loc2_)
                     {
                        this.§ Y§.buttonMode = true;
                        if(_loc4_)
                        {
                           this.§6D§();
                        }
                        addr138:
                        §§push(§[k§.§&@§);
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
               §§push(§[k§.§&@§);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §"w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§"w§);
            if(!(_loc3_ && param1))
            {
               if(this.§ Y§)
               {
                  if(_loc2_)
                  {
                     addr56:
                     this.§ Y§.useHandCursor = false;
                     if(_loc2_ || param1)
                     {
                     }
                     §§goto(addr73);
                  }
                  this.§ Y§.buttonMode = false;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               addr73:
               this.§=K§("ThankYou");
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
            §6I§.init();
            if(!_loc2_)
            {
               §6I§.enabled = false;
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §=L§.§!#§(§;i§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=L§.§!#§(§@%§);
         if(_loc4_)
         {
            this.§%!&§(_loc2_,_loc1_,["Views","Components"]);
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
         var _loc2_:XML = §=L§.§!#§(§`!E§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_)
         {
            this.§%!&§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §=L§.§!#§(§+!H§);
         if(_loc4_)
         {
            this.§%!&§(_loc2_,_loc1_,["Backgrounds"]);
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
               this.§1!"§ = stage.loaderInfo.parameters.levelId;
               if(!_loc2_)
               {
                  §§push(this.§1!"§);
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr58:
                           this.§1!"§ = "1-1";
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
                                       this.§3Z§ = parseInt(_loc1_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(this.§3Z§ <= 0)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr143:
                                                this.§3Z§ = 0;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr153:
                                                   §4C§(false);
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
            if(this.§4a§())
            {
               if(!(_loc1_ && _loc2_))
               {
                  §[k§.§&@§ = new §8! §(stage);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr54);
               }
            }
            else
            {
               this.§2l§();
            }
         }
         addr54:
      }
      
      private function §2l§() : void
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
            sUserProgress = new §`O§(§+u§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §^'§(new §0$§(false));
         §^'§(new §^!-§(false));
         §^'§(new §=!$§(false,this.§3Z§));
         §^'§(new §`I§(false));
         §^'§(new §+=§(false,this.§3Z§));
         if(_loc1_)
         {
            §^'§(new §,!7§(false));
         }
      }
      
      override protected function initStateLoad() : §=F§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§,#§)
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
                     §§push(§§findproperty(§#!3§));
                     §§push(true);
                     §§push(§=F§.§?x§);
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
                                       return new §§pop().§#!3§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
               §["§.§<G§("assetsUrl");
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
         if(this.§>i§)
         {
            return;
         }
         §'^§ = true;
         §§push(this.§1!"§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§push(§5j§.§8[§(this.§1!"§));
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
                           if(_loc2_ != this.§1!"§)
                           {
                              addr65:
                              §["§.§%#§(this.§1!"§);
                           }
                           this.§1!"§ = null;
                           if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §5j§.§#8§(_loc2_);
                                 if(_loc4_)
                                 {
                                    §'<§(§,w§.§?x§);
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
               this.§0!"§();
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
            this.§6D§();
         }
      }
      
      private function §6D§() : void
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
                                          _loc1_ = §>D§;
                                          _loc2_ = §1!4§;
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
                                                      if(this.§ Y§)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§ Y§.x = 0;
                                                            if(_loc3_)
                                                            {
                                                               addr144:
                                                               this.§ Y§.y = 0;
                                                               if(_loc3_)
                                                               {
                                                                  this.§ Y§.scaleX = stage.stageWidth / this.§,v§;
                                                                  this.§ Y§.scaleY = stage.stageHeight / this.§%C§;
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
                                                            if(this.§4a§())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §[k§.§%e§(0,0,_loc1_,_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     setViewSize(_loc1_,_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               this.§1&§(_loc1_,_loc2_);
                                                            }
                                                            §>D§ = _loc1_;
                                                            if(_loc3_ || this)
                                                            {
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr227:
                                                         §1!4§ = _loc2_;
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
      
      public function §1&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §5U§.setViewSize(param1,param2);
         }
      }
      
      protected function §%!&§(param1:XML, param2:XML, param3:Array) : void
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
            §§push(§§pop() + §#0§.replace("{svn_version}","local dev build"));
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ || _loc1_)
               {
                  addr55:
                  §§push(§§pop() + §<U§);
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
            §["§.§,9§(§#3§.§&! §,_loc1_.toString(),_loc1_);
            if(_loc2_)
            {
               if(this.§>i§)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr68:
                  this.§<3§ = true;
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
               §§push(this.§[F§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     this.§[F§ = String.fromCharCode(param1.keyCode);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr82:
                        this.§[F§ = this.§[F§.toLowerCase();
                        addr62:
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     this.§[F§ += String.fromCharCode(param1.keyCode);
                  }
                  §§goto(addr82);
               }
               addr89:
               if(this.§[F§.length > 15)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr99:
                     this.§[F§ = this.§[F§.substr(1);
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
