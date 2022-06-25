package
{
   import § !@§.§,a§;
   import § !@§.§22§;
   import § !@§.§4`§;
   import § !@§.§5l§;
   import § !@§.§6f§;
   import § !@§.§7L§;
   import § !@§.§<!=§;
   import § !@§.§^!K§;
   import §#X§.§,!F§;
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §-I§.§=!B§;
   import §1!-§.§[4§;
   import §3a§.§"X§;
   import §5!L§.§=w§;
   import §6!C§.§+7§;
   import §6A§.§&>§;
   import §7g§.§'!;§;
   import §7j§.§5!N§;
   import com.rovio.assets.LoadingScreen;
   import com.rovio.assets.§]!>§;
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
   
   public class §<!7§ extends AngryBirdsFP11
   {
      
      public static const §#!3§:String = "1.0.0.5 (r106377) beta";
      
      private static const §;V§:String = "AngryBirdsEmbedIntelSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §51§:Class;
      
      protected static var §9i§:Class;
      
      protected static var §`H§:Class;
      
      protected static var §&,§:Class;
      
      public static var §4!"§:§<!7§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;V§ = "AngryBirdsEmbedIntelSettings";
            LOCAL_CONNECTION_1 = "AngryBirdsIntelEmbed-1";
            LOCAL_CONNECTION_2 = "AngryBirdsIntelEmbed-2";
            §51§ = §3C§;
            if(_loc1_ || _loc1_)
            {
               §9i§ = §<x§;
               addr68:
               §`H§ = §4o§;
               §&,§ = §]!A§;
            }
            return;
         }
         §§goto(addr68);
      }
      
      private var §4_§:String = null;
      
      private var §9j§:String = "";
      
      private var §9!$§:Boolean = false;
      
      private var §3!5§:LocalConnection;
      
      private var §>o§:String;
      
      private var §^!F§:Boolean;
      
      private var §9!D§:Sprite;
      
      private var §5G§:int = 0;
      
      private var §'v§:Number;
      
      private var §>Z§:Number;
      
      public function §<!7§(param1:§5!N§, param2:Number, param3:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc7_ && param3))
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(_loc8_ || param1)
            {
               addr39:
               §§push(param2);
               if(!(_loc7_ && this))
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc8_ || this)
                  {
                     addr57:
                     var initialHeight:Number = param3;
                     §§push(this);
                     §§push(new Date().toTimeString() + "_");
                     if(_loc8_)
                     {
                        §§push(§§pop() + Math.round(Math.random() * 100000));
                     }
                     §§pop().§>o§ = §§pop();
                     this.§'v§ = initialWidth;
                  }
                  this.§>Z§ = initialHeight;
                  this.§3!5§ = new LocalConnection();
                  if(_loc8_ || param3)
                  {
                     this.§3!5§.addEventListener(StatusEvent.STATUS,this.§0!B§);
                  }
                  try
                  {
                     this.§3!5§.connect(LOCAL_CONNECTION_1);
                     if(!_loc7_)
                     {
                        addr156:
                        this.§3!5§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§>o§);
                        if(!(_loc7_ && param1))
                        {
                           this.§3!5§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§>o§);
                           if(_loc8_ || param3)
                           {
                              this.§3!5§.client = {"onInstanceStarting":this.onInstanceStarting};
                              if(!_loc8_)
                              {
                              }
                              §§goto(addr223);
                           }
                           super(canvas);
                           §4!"§ = this;
                           if(_loc7_)
                           {
                           }
                           §§goto(addr223);
                        }
                        canvas.stage.quality = StageQuality.MEDIUM;
                     }
                     §+7§.initialize(canvas.stage);
                  }
                  catch(e:Error)
                  {
                     if(_loc8_ || this)
                     {
                        try
                        {
                           §3!5§.connect(LOCAL_CONNECTION_2);
                        }
                        catch(e:Error)
                        {
                        }
                        addr154:
                        §§goto(addr156);
                     }
                     §§goto(addr154);
                  }
                  addr223:
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr39);
      }
      
      private function §8b§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Stage3D = null;
         var _loc1_:* = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(_loc5_ || _loc1_)
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(1);
                     if(_loc5_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr92);
                     }
                     if(§§pop() == 0)
                     {
                        if(_loc5_)
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr71);
            }
            addr92:
            if(_loc5_ || _loc1_)
            {
               addr83:
               §§push(_loc1_);
               addr71:
            }
            return true;
         }
         catch(e:Error)
         {
         }
         §§goto(addr83);
      }
      
      private function §0!B§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != this.§>o§)
            {
               if(_loc3_)
               {
                  this.§3!5§ = null;
                  if(!_loc2_)
                  {
                     addr30:
                     this.§;!H§();
                  }
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §^"§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §;9§.§%p§(param1);
            if(!(_loc3_ && param1))
            {
               addr38:
               navigateToURL(new URLRequest("https://apps.facebook.com/ab_in_adventure/?ref=wallPlay" + param1 + "&levelId=" + §[4§.§"!>§),"_blank");
               if(_loc2_)
               {
                  this.§;!H§();
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §;!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§^!F§ = true;
         }
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^!F§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  stage.frameRate = 1;
                  if(_loc2_)
                  {
                     addr53:
                     §=w§.pause();
                     if(!_loc3_)
                     {
                        this.§=Q§();
                        if(_loc3_ && param1)
                        {
                        }
                        §§goto(addr70);
                     }
                  }
               }
            }
            else
            {
               super.onEnterFrame(param1);
            }
            addr70:
            return;
         }
         §§goto(addr53);
      }
      
      private function §=Q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(_loc5_ || _loc1_)
         {
            if(!this.§9!D§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr39:
                  _loc1_ = 0;
               }
               while(_loc1_ < stage.numChildren)
               {
                  stage.getChildAt(_loc1_).visible = false;
                  if(_loc5_ || _loc2_)
                  {
                     _loc1_++;
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
               }
               try
               {
                  _loc2_ = §]!>§.§8!@§("ThankYouForPlaying");
                  this.§9!D§ = new _loc2_();
                  this.§9!D§.x = 0;
                  this.§9!D§.y = 0;
                  stage.addChild(this.§9!D§);
                  stage.addEventListener(MouseEvent.CLICK,this.§%!J§);
                  if(!_loc4_)
                  {
                     this.§9!D§.useHandCursor = true;
                     if(_loc5_)
                     {
                        this.§9!D§.buttonMode = true;
                        if(!(_loc4_ && _loc1_))
                        {
                           addr128:
                           this.§4!>§();
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr128);
                  }
               }
               catch(e:Error)
               {
                  addr144:
                  §§push(§=w§.§ o§);
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        §§push(§=w§.§ o§);
                     }
                     §§goto(addr157);
                  }
                  §§pop().clear();
                  addr157:
                  return;
               }
            }
            §§goto(addr128);
         }
         §§goto(addr39);
      }
      
      private function §%!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§%!J§);
            if(!_loc2_)
            {
               if(this.§9!D§)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§9!D§.useHandCursor = false;
                     if(_loc3_ || param1)
                     {
                        addr68:
                        this.§9!D§.buttonMode = false;
                        if(_loc3_)
                        {
                           addr74:
                           this.§^"§("ThankYou");
                        }
                     }
                     return;
                  }
                  §§goto(addr68);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr68);
      }
      
      override protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!F§.init();
            if(!(_loc2_ && _loc2_))
            {
               §,!F§.enabled = false;
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §"X§.§,@§(§51§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §"X§.§,@§(§9i§);
         if(!_loc3_)
         {
            this.§&z§(_loc2_,_loc1_,["Views","Components"]);
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
         var _loc2_:XML = §"X§.§,@§(§&,§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_ || _loc2_)
         {
            this.§&z§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §"X§.§,@§(§`H§);
         if(!_loc4_)
         {
            this.§&z§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.initialize();
            if(!_loc2_)
            {
               this.§4_§ = stage.loaderInfo.parameters.levelId;
               if(!_loc2_)
               {
                  §§push(this.§4_§);
                  if(_loc3_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           addr58:
                           this.§4_§ = "1-1";
                           if(!_loc3_)
                           {
                           }
                           addr92:
                           var _loc1_:String = "0";
                        }
                        §§goto(addr80);
                     }
                     §§push(stage.loaderInfo.parameters.score);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr75:
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr92);
                     }
                     addr79:
                     §§pop();
                     addr80:
                     if(_loc3_)
                     {
                        this.§5G§ = parseInt(_loc1_);
                        if(_loc3_)
                        {
                           if(this.§5G§ <= 0)
                           {
                              if(_loc3_)
                              {
                                 this.§5G§ = 0;
                                 if(_loc2_ && _loc1_)
                                 {
                                 }
                              }
                              §§goto(addr121);
                           }
                           §%!H§(false);
                        }
                     }
                     addr121:
                     return;
                  }
                  §§goto(addr75);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr58);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§8b§())
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr39:
                  §=w§.§ o§ = new §&>§(stage);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr49);
               }
            }
            else
            {
               this.§66§();
            }
            addr49:
            return;
         }
         §§goto(addr39);
      }
      
      private function §66§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.text = "The game doesn\'t yet run on this device";
            if(_loc3_)
            {
               addr28:
               _loc1_.textColor = 0;
               _loc1_.selectable = false;
            }
            _loc1_.height = 30;
            if(!_loc2_)
            {
               _loc1_.width = 300;
               _loc1_.autoSize = TextFieldAutoSize.CENTER;
               stage.addChild(_loc1_);
               if(_loc3_ || _loc1_)
               {
                  §§goto(addr76);
               }
               §§goto(addr87);
            }
            addr76:
            _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
            if(_loc3_)
            {
               addr87:
               _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
            }
            return;
         }
         §§goto(addr28);
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            sUserProgress = new §=!B§(§,A§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §8Y§(new §,a§(false));
         §8Y§(new §5l§(false));
         if(_loc1_ || _loc1_)
         {
            §8Y§(new §<!=§(false,this.§5G§));
            if(!_loc2_)
            {
               §8Y§(new §22§(false));
               if(_loc1_ || this)
               {
                  addr74:
                  §8Y§(new §7L§(false,this.§5G§));
               }
               §8Y§(new §6f§(false));
               §§goto(addr86);
            }
            §§goto(addr74);
         }
         addr86:
      }
      
      override protected function initStateLoad() : §'!;§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§%Z§)
            {
               if(_loc2_)
               {
                  addr23:
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!_loc2_)
                     {
                     }
                     addr33:
                     §§push(§§findproperty(§4`§));
                     §§push(true);
                     §§push(§'!;§.§>9§);
                     §§push(this.getMinLoadingScreenTime());
                     if(_loc2_ || this)
                     {
                        §§push(stage.loaderInfo.parameters.assetsUrl);
                        if(_loc2_)
                        {
                           §§push(§§pop());
                           if(_loc2_ || _loc1_)
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
                                       return new §§pop().§4`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
                  §§goto(addr33);
               }
               §;9§.§2j§("assetsUrl");
            }
            §§goto(addr33);
         }
         §§goto(addr23);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(this.§^!F§)
         {
            if(!(_loc4_ && _loc2_))
            {
               return;
            }
         }
         else
         {
            §,E§ = true;
            if(_loc3_)
            {
               §§push(this.§4_§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(§[4§.§![§(this.§4_§));
                        if(_loc3_ || this)
                        {
                           addr70:
                           §§push(§§pop());
                           if(_loc3_ || param1)
                           {
                              addr78:
                              _loc2_ = §§pop();
                              §§push(_loc2_);
                           }
                           if(§§pop() != this.§4_§)
                           {
                              §;9§.§^'§(this.§4_§);
                              §§goto(addr97);
                           }
                           addr97:
                           this.§4_§ = null;
                           if(!_loc4_)
                           {
                              if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                              {
                                 if(_loc3_)
                                 {
                                    §[4§.§]a§(_loc2_);
                                    if(!_loc4_)
                                    {
                                       addr114:
                                       §+N§(§^!K§.§>9§);
                                       if(!_loc4_)
                                       {
                                          §§goto(addr120);
                                       }
                                       else
                                       {
                                          §§goto(addr124);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     this.§;!H§();
                  }
                  addr124:
                  return;
               }
               §§goto(addr70);
            }
            §§goto(addr97);
         }
         addr120:
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4!>§();
         }
      }
      
      private function §4!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:* = int(Math.round(stage.stageHeight));
         §§push(_loc1_);
         if(_loc3_)
         {
            §§push(20);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() < §§pop());
               if(_loc3_ || this)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        addr51:
                        §§pop();
                        §§push(_loc2_);
                        §§push(20);
                        if(!_loc4_)
                        {
                           addr57:
                           if(§§pop() < §§pop())
                           {
                              if(!_loc4_)
                              {
                                 _loc1_ = §&n§;
                                 §§push(int(§7?§));
                                 if(_loc3_ || _loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       addr75:
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr83:
                                          §§push(2);
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr100:
                                                if(!§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc2_);
                                                      §§push(2);
                                                      if(_loc3_)
                                                      {
                                                         addr118:
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr126:
                                                            if(§§pop())
                                                            {
                                                               return;
                                                            }
                                                            if(this.§9!D§)
                                                            {
                                                               this.§9!D§.x = 0;
                                                               this.§9!D§.y = 0;
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  this.§9!D§.scaleX = stage.stageWidth / this.§'v§;
                                                                  if(_loc3_)
                                                                  {
                                                                     this.§9!D§.scaleY = stage.stageHeight / this.§>Z§;
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr178:
                                                                        if(_loc1_ / _loc2_ > 25 / 12)
                                                                        {
                                                                           _loc1_ = Math.round(_loc2_ * (25 / 12));
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              addr201:
                                                                              if(this.§8b§())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr216);
                                                                                 }
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr201);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                }
                                             }
                                             §§goto(addr126);
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                    addr216:
                                    §=w§.§8'§(0,0,_loc1_,_loc2_);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr229:
                                       setViewSize(_loc1_,_loc2_);
                                       addr233:
                                       this.§>F§(_loc1_,_loc2_);
                                       if(!_loc4_)
                                       {
                                          addr239:
                                          §&n§ = _loc1_;
                                       }
                                    }
                                    §7?§ = _loc2_;
                                    return;
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr100);
               }
               §§goto(addr51);
            }
            §§goto(addr118);
         }
         §§goto(addr83);
      }
      
      public function §>F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §+7§.setViewSize(param1,param2);
         }
      }
      
      protected function §&z§(param1:XML, param2:XML, param3:Array) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:XML = null;
         for each(_loc4_ in param3)
         {
            if(!(_loc11_ && param1))
            {
               var _loc8_:int = 0;
               if(_loc10_ || param1)
               {
                  for each(_loc5_ in param1[_loc4_].§*§)
                  {
                     if(_loc10_ || param1)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!_loc1_)
         {
            §§push(§§pop() + §#!3§.replace("{svn_version}","local dev build"));
            if(!_loc1_)
            {
               §§goto(addr37);
            }
            §§goto(addr46);
         }
         addr37:
         §§push(§§pop() + "Server: ");
         if(!(_loc1_ && _loc1_))
         {
            addr46:
            §§push(§§pop() + §"!&§);
         }
         return §§pop();
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!(_loc3_ && _loc1_))
         {
            §;9§.§"!A§(§-Q§.§0!4§,_loc1_.toString(),_loc1_);
            if(!_loc3_)
            {
               if(this.§^!F§)
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  addr73:
                  this.§9!$§ = true;
                  if(_loc2_ || _loc2_)
                  {
                     super.initializeGame();
                  }
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.onKeyDown(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§9j§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  this.§9j§ = String.fromCharCode(param1.keyCode);
                  addr31:
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr81);
               }
               else
               {
                  this.§9j§ += String.fromCharCode(param1.keyCode);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr81:
                     this.§9j§ = this.§9j§.toLowerCase();
                     §§goto(addr88);
                  }
               }
               §§goto(addr93);
            }
            addr88:
            if(this.§9j§.length > 15)
            {
               if(_loc2_)
               {
                  addr93:
                  this.§9j§ = this.§9j§.substr(1);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
