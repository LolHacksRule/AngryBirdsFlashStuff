package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §-!0§.§1^§;
   import §1!F§.§'§;
   import §1!F§.§0!`§;
   import §1!F§.§26§;
   import §1!F§.§6!$§;
   import §1!F§.§6;§;
   import §1!F§.§>!u§;
   import §1!F§.§?Y§;
   import §1!F§.§`h§;
   import §1?§.§+!§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §<!<§.§#!H§;
   import §=!3§.§<!=§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import com.rovio.assets.LoadingScreen;
   import §false§.§'k§;
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
   import §var§.§else §;
   
   public class §#!?§ extends AngryBirdsFP11
   {
      
      public static const §9!o§:String = "0.0.0.1 ({svn_version}) beta";
      
      private static const §6!]§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §]D§:Class;
      
      protected static var §+!t§:Class = §@,§;
      
      protected static var §3@§:Class = §@!$§;
      
      protected static var §+!1§:Class;
      
      public static var §8;§:§#!?§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!o§ = "0.0.0.1 ({svn_version}) beta";
            if(!(_loc1_ && _loc1_))
            {
               §6!]§ = "AngryBirdsEmbedSettings";
            }
            LOCAL_CONNECTION_1 = "AngryBirdsEmbed-1";
            LOCAL_CONNECTION_2 = "AngryBirdsEmbed-2";
            §]D§ = §>!r§;
         }
         if(!_loc1_)
         {
            §+!1§ = §8!4§;
         }
      }
      
      private var §'Y§:String = null;
      
      private var §[G§:String = "";
      
      private var §4X§:Boolean = false;
      
      private var §&!<§:LocalConnection;
      
      private var §-"§:String;
      
      private var §'4§:Boolean;
      
      private var §9!K§:Sprite;
      
      private var §"Q§:int = 0;
      
      private var §]F§:Number;
      
      private var §,!n§:Number;
      
      public function §#!?§(param1:§"!8§, param2:Number, param3:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(_loc8_ || param2)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc7_ && param3))
            {
               §§push(§§newactivation());
               if(_loc8_)
               {
                  addr41:
                  §§push(param2);
                  if(_loc8_)
                  {
                     §§pop().§§slot[2] = §§pop();
                     addr46:
                     §§push(§§newactivation());
                     §§push(param3);
                  }
                  §§pop().§§slot[3] = §§pop();
                  §§push(this);
                  §§push(new Date().toTimeString() + "_");
                  if(_loc8_ || this)
                  {
                     §§push(§§pop() + Math.round(Math.random() * 100000));
                  }
                  §§pop().§-"§ = §§pop();
                  if(!(_loc7_ && param3))
                  {
                     this.§]F§ = initialWidth;
                  }
                  §§goto(addr80);
               }
               §§goto(addr46);
            }
            addr80:
            this.§,!n§ = initialHeight;
            this.§&!<§ = new LocalConnection();
            this.§&!<§.addEventListener(StatusEvent.STATUS,this.§'i§);
            try
            {
               this.§&!<§.connect(LOCAL_CONNECTION_1);
            }
            catch(e:Error)
            {
               if(_loc8_ || param2)
               {
                  try
                  {
                     §&!<§.connect(LOCAL_CONNECTION_2);
                  }
                  catch(e:Error)
                  {
                  }
                  addr147:
               }
               §§goto(addr147);
            }
            this.§&!<§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§-"§);
            this.§&!<§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§-"§);
            this.§&!<§.client = {"onInstanceStarting":this.onInstanceStarting};
            super(canvas);
            if(_loc8_ || param3)
            {
               §8;§ = this;
               if(!_loc7_)
               {
                  canvas.stage.quality = StageQuality.MEDIUM;
                  §'k§.initialize(canvas.stage);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §=F§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Stage3D = null;
         var _loc1_:* = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(_loc5_ || this)
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(1);
                     if(_loc5_ || _loc2_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr98);
                     }
                     if(§§pop() == 0)
                     {
                        if(_loc5_ || _loc1_)
                        {
                           addr98:
                           if(_loc5_ || _loc3_)
                           {
                              addr88:
                              §§push(_loc1_);
                              addr76:
                           }
                           §§push(false);
                           if(_loc5_)
                           {
                              return §§pop();
                           }
                           §§goto(addr103);
                        }
                        else
                        {
                           addr102:
                           §§push(true);
                        }
                        addr103:
                        return §§pop();
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr98);
               }
               §§goto(addr76);
            }
            §§goto(addr102);
         }
         catch(e:Error)
         {
         }
         §§goto(addr88);
      }
      
      private function §'i§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != this.§-"§)
            {
               if(_loc2_)
               {
                  this.§&!<§ = null;
                  if(_loc2_)
                  {
                     this.§53§();
                  }
               }
            }
         }
      }
      
      public function §4!`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §,8§.§1!I§(param1);
            if(!_loc3_)
            {
               navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §1^§.§ ]§),"_blank");
               if(!_loc3_)
               {
                  this.§53§();
               }
            }
         }
      }
      
      private function §53§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§'4§ = true;
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
            if(this.§'4§)
            {
               if(!_loc2_)
               {
                  stage.frameRate = 1;
                  if(_loc3_)
                  {
                     §'!V§.pause();
                     if(_loc3_ || _loc2_)
                     {
                     }
                     addr71:
                     return;
                     addr67:
                  }
                  this.§0!e§();
                  if(_loc3_)
                  {
                     §§goto(addr67);
                  }
               }
            }
            else
            {
               super.onEnterFrame(param1);
            }
         }
         §§goto(addr71);
      }
      
      private function §0!e§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.§9!K§)
            {
               if(_loc4_ || this)
               {
                  _loc1_ = 0;
                  §§goto(addr40);
               }
               addr40:
               while(_loc1_ < stage.numChildren)
               {
                  stage.getChildAt(_loc1_).visible = false;
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
               }
               try
               {
                  _loc2_ = §1F§.§"!_§("ThankYouForPlaying");
                  if(!_loc5_)
                  {
                     this.§9!K§ = new _loc2_();
                     this.§9!K§.x = stage.stageWidth - this.§9!K§.width >> 1;
                     this.§9!K§.y = stage.stageHeight - this.§9!K§.height >> 1;
                     if(!_loc5_)
                     {
                        stage.addChild(this.§9!K§);
                        if(_loc4_ || _loc1_)
                        {
                        }
                        §§goto(addr150);
                     }
                     stage.addEventListener(MouseEvent.CLICK,this.§]q§);
                     this.§9!K§.useHandCursor = true;
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§9!K§.buttonMode = true;
                        if(!_loc5_)
                        {
                           §§goto(addr150);
                        }
                        §§goto(addr169);
                     }
                  }
                  addr150:
                  this.§<!H§();
                  §§goto(addr164);
               }
               catch(e:Error)
               {
               }
               addr164:
               §§push(§'!V§.§1!2§);
               if(!_loc5_)
               {
                  §§goto(addr172);
               }
               §§pop().clear();
               §§goto(addr172);
            }
            addr172:
            if(§§pop())
            {
               addr169:
               §§push(§'!V§.§1!2§);
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function §]q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§]q§);
            if(_loc3_ || _loc2_)
            {
               if(this.§9!K§)
               {
                  if(!_loc2_)
                  {
                     addr62:
                     this.§9!K§.useHandCursor = false;
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr79);
            }
            addr73:
            this.§9!K§.buttonMode = false;
            if(!_loc2_)
            {
               addr79:
               this.§4!`§("ThankYou");
            }
            return;
         }
         §§goto(addr62);
      }
      
      override protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+!§.init();
            if(_loc2_)
            {
               §+!§.enabled = false;
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§]D§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §3!X§.§3<§(§+!t§);
         if(_loc3_ || _loc3_)
         {
            this.§@l§(_loc2_,_loc1_,["Views","Components"]);
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
         var _loc2_:XML = §3!X§.§3<§(§+!1§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_)
         {
            this.§@l§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §3!X§.§3<§(§3@§);
         if(_loc3_)
         {
            this.§@l§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.initialize();
            if(!(_loc3_ && _loc2_))
            {
               this.§'Y§ = stage.loaderInfo.parameters.levelId;
               if(_loc2_)
               {
                  §§push(this.§'Y§);
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr52:
                           this.§'Y§ = "1-1";
                           if(_loc2_)
                           {
                              addr67:
                              §§push(stage.loaderInfo.parameters.score);
                              if(_loc2_ || _loc3_)
                              {
                                 addr79:
                                 if(!§§pop())
                                 {
                                    addr91:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§pop();
                                       addr89:
                                       §§push("0");
                                    }
                                    var _loc1_:* = §§pop();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.§"Q§ = parseInt(_loc1_);
                                       if(!_loc3_)
                                       {
                                          addr116:
                                          if(this.§"Q§ <= 0)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr127);
                                             }
                                          }
                                          §§goto(addr137);
                                       }
                                       addr127:
                                       this.§"Q§ = 0;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr137:
                                          §;z§(false);
                                       }
                                       return;
                                    }
                                    §§goto(addr116);
                                 }
                                 §§push(§§pop());
                              }
                              §§goto(addr91);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr79);
               }
               §§goto(addr52);
            }
            §§goto(addr67);
         }
         §§goto(addr52);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§=F§())
            {
               if(!_loc1_)
               {
                  §'!V§.§1!2§ = new §#!H§(stage);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr34);
               }
            }
            else
            {
               this.§'1§();
            }
         }
         addr34:
      }
      
      private function §'1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         _loc1_.text = "The game doesn\'t yet run on this device";
         if(!_loc2_)
         {
            _loc1_.textColor = 0;
            if(!_loc2_)
            {
               _loc1_.selectable = false;
               if(_loc3_)
               {
                  _loc1_.height = 30;
               }
               §§goto(addr73);
            }
            _loc1_.width = 300;
            if(_loc3_)
            {
               _loc1_.autoSize = TextFieldAutoSize.CENTER;
               if(!_loc2_)
               {
                  stage.addChild(_loc1_);
               }
            }
            §§goto(addr73);
         }
         addr73:
         _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
         _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            sUserProgress = new §else §(§`!l§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         § Y§(new §?Y§(false));
         § Y§(new §6!$§(false));
         § Y§(new §>!u§(false,this.§"Q§));
         if(!(_loc2_ && _loc2_))
         {
            § Y§(new §'§(false));
            if(!_loc2_)
            {
               §§goto(addr67);
            }
            §§goto(addr81);
         }
         addr67:
         § Y§(new §6;§(false,this.§"Q§));
         if(!(_loc2_ && _loc1_))
         {
            addr81:
            § Y§(new §`h§(false));
         }
      }
      
      override protected function initStateLoad() : §<!=§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§>!q§)
            {
               if(_loc1_ || this)
               {
                  addr32:
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!_loc2_)
                     {
                        §,8§.§^F§("assetsUrl");
                     }
                  }
               }
            }
            §§push(§§findproperty(§0!`§));
            §§push(true);
            §§push(§<!=§.STATE_NAME);
            §§push(this.getMinLoadingScreenTime());
            if(!_loc2_)
            {
               §§push(stage.loaderInfo.parameters.assetsUrl);
               if(_loc1_ || this)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr100);
                     }
                     §§push(stage.loaderInfo.parameters.buildNumber);
                     if(!_loc2_)
                     {
                        §§goto(addr97);
                     }
                     §§goto(addr99);
                  }
                  addr97:
                  if(!§§pop())
                  {
                     addr99:
                     §§pop();
                  }
                  §§goto(addr100);
               }
               addr100:
               if(_loc1_)
               {
                  §§pop();
                  addr89:
                  §§push("");
               }
               return new §§pop().§0!`§(§§pop(),§§pop(),§§pop(),§§pop(),"");
            }
            §§goto(addr89);
         }
         §§goto(addr32);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(_loc3_)
         {
            if(this.§'4§)
            {
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
            §7!p§ = true;
            §§push(this.§'Y§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  addr62:
                  §§push(§1^§.§=h§(this.§'Y§));
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                     }
                     addr73:
                     if(§§pop() != this.§'Y§)
                     {
                        §,8§.§"!>§(this.§'Y§);
                     }
                     this.§'Y§ = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §1^§.loadLevel(_loc2_);
                              if(!_loc3_)
                              {
                                 addr127:
                                 return;
                                 addr124:
                              }
                              §§goto(addr127);
                           }
                           §8!W§(§26§.STATE_NAME);
                           if(_loc3_)
                           {
                              return;
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr124);
                  }
                  _loc2_ = §§pop();
                  §§goto(addr73);
                  §§push(_loc2_);
               }
               else
               {
                  this.§53§();
               }
               §§goto(addr127);
            }
            §§goto(addr73);
         }
         §§goto(addr62);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!H§();
         }
      }
      
      private function §<!H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = int(Math.round(stage.stageWidth));
         var _loc2_:int = Math.round(stage.stageHeight);
         §§push(_loc1_);
         if(!(_loc3_ && _loc2_))
         {
            §§push(20);
            if(_loc4_)
            {
               §§push(§§pop() < §§pop());
               if(_loc4_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(20);
                           if(_loc4_)
                           {
                              addr64:
                              §§push(§§pop() < §§pop());
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§goto(addr72);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr89);
                     }
                     addr72:
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(int(§6!I§));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr89:
                              _loc1_ = §§pop();
                              _loc2_ = §+m§;
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr100);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr151);
                     }
                     addr100:
                     §§push(_loc1_);
                     if(_loc4_ || this)
                     {
                        §§push(2);
                        if(!(_loc3_ && _loc1_))
                        {
                           addr116:
                           §§push(§§pop() < §§pop());
                           if(!(§§pop() < §§pop()))
                           {
                              addr129:
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    addr135:
                                    §§push(2);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc4_ || this)
                                       {
                                          addr146:
                                          if(§§pop())
                                          {
                                             return;
                                          }
                                          if(this.§9!K§)
                                          {
                                             addr151:
                                             this.§9!K§.x = this.§]F§ - this.§9!K§.width / this.§9!K§.scaleX >> 1;
                                             §§goto(addr166);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr208);
                              }
                              addr166:
                              this.§9!K§.y = this.§,!n§ - this.§9!K§.height / this.§9!K§.scaleY >> 1;
                              this.§9!K§.scaleX = stage.stageWidth / this.§]F§;
                              this.§9!K§.scaleY = stage.stageHeight / this.§,!n§;
                              if(_loc4_)
                              {
                                 addr199:
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr208:
                                    if(§§pop() / _loc2_ > 25 / 12)
                                    {
                                       §§goto(addr221);
                                    }
                                    §§goto(addr224);
                                 }
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr208);
                     }
                     addr221:
                     _loc1_ = int(Math.round(_loc2_ * (25 / 12)));
                     if(_loc4_)
                     {
                        addr224:
                        if(this.§=F§())
                        {
                           §'!V§.§>!T§(0,0,_loc1_,_loc2_);
                           setViewSize(_loc1_,_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              this.§0!J§(_loc1_,_loc2_);
                           }
                        }
                     }
                     §6!I§ = _loc1_;
                     §+m§ = _loc2_;
                     return;
                  }
                  §§goto(addr116);
               }
               §§goto(addr129);
            }
            §§goto(addr64);
         }
         §§goto(addr89);
      }
      
      public function §0!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §'k§.setViewSize(param1,param2);
         }
      }
      
      protected function §@l§(param1:XML, param2:XML, param3:Array) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:XML = null;
         for each(_loc4_ in param3)
         {
            if(!_loc10_)
            {
               var _loc8_:int = 0;
               if(_loc11_)
               {
                  for each(_loc5_ in param1[_loc4_].§*§)
                  {
                     if(!(_loc10_ && param1))
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
            §§push(§§pop() + §9!o§.replace("{svn_version}","local dev build"));
            if(!_loc1_)
            {
               §§push(§§pop() + "Server: ");
               if(!_loc1_)
               {
                  addr31:
                  §§push(§§pop() + §9!T§);
               }
            }
            return §§pop();
         }
         §§goto(addr31);
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc3_)
         {
            §,8§.§?!@§(§ ^§.§9!c§,_loc1_.toString(),_loc1_);
            if(_loc3_)
            {
               if(this.§'4§)
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§goto(addr66);
                  }
                  else
                  {
                     addr84:
                     super.initializeGame();
                  }
               }
               else
               {
                  this.§4X§ = true;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr84);
                  }
               }
               return;
            }
            addr66:
            return;
         }
         §§goto(addr84);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.onKeyDown(param1);
            §§push(this.§[G§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     this.§[G§ = String.fromCharCode(param1.keyCode);
                     if(_loc3_ || param1)
                     {
                        addr89:
                        this.§[G§ = this.§[G§.toLowerCase();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr103:
                           if(this.§[G§.length > 15)
                           {
                           }
                           §§goto(addr112);
                        }
                        addr112:
                        return;
                        addr62:
                     }
                     this.§[G§ = this.§[G§.substr(1);
                     §§goto(addr112);
                  }
                  §§goto(addr89);
               }
               else
               {
                  this.§[G§ += String.fromCharCode(param1.keyCode);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr103);
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
