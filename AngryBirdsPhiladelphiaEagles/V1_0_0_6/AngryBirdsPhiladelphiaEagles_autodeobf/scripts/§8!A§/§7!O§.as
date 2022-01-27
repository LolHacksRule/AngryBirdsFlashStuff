package §8!A§
{
   import §!!0§.§ true§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §16§.§;v§;
   import §1E§.§2h§;
   import §1E§.§8P§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§-u§;
   import §;!!§.§0H§;
   import §@g§.§4!@§;
   import §[K§.§-3§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §7!O§ extends §0H§
   {
      
      public static const §3!=§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §`v§:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §5Z§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §+Y§:Number = 1;
      
      public static const §2`§:String = "LevelSelectionState";
      
      private static const §;!D§:Number = 0.5;
      
      private static const §,!B§:Number = 1.5;
      
      private static const §,!J§:Number = 0.1;
      
      private static const §++§:Number = 0.8;
      
      private static const §!c§:Number = 5;
      
      private static var §'!L§:int = 0;
       
      
      private var §"!3§:§<Q§;
      
      private var §9!§:§<Q§;
      
      private var §2u§:uint;
      
      private var §,M§:§<Q§;
      
      private var §'§:Vector.<§<Q§>;
      
      private var §,!C§:Vector.<§-u§>;
      
      private var §>&§:§-3§;
      
      private var §2[§:Vector.<GlowFilter> = null;
      
      private var §&!I§:Vector.<§<Q§> = null;
      
      private var §+! §:int = 0;
      
      private var §^Z§:int = 8;
      
      private var §8! §:int = 2;
      
      private var §'G§:Number = 1;
      
      private var §each §:int = 0;
      
      private var §6!0§:int = 0;
      
      private var §"!E§:int = 0;
      
      protected var §`F§:Boolean = false;
      
      protected var §^i§:§<Q§ = null;
      
      private var §4J§:int = -1;
      
      public function §7!O§(param1:Boolean, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         var _loc2_:XML = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:§-u§ = null;
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §>!?§.§5!5§(§>!?§.§5i§ + "1-" + (_loc1_ + 1),true);
            if((_loc6_ = §>!?§.§5!5§(§>!?§.§ J§ + "1-" + (_loc1_ + 1),true)) != null)
            {
               AngryBirdsFP11.§ !-§.§'!6§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§ !-§.§@v§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§2[§ = new Vector.<GlowFilter>(16,true);
         this.§&!I§ = new Vector.<§<Q§>(16,true);
         this.§,!C§ = new Vector.<§-u§>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§>&§ = new §-3§(_loc2_,§<A§.container,null,null);
         §<A§.container.addComponent(this.§>&§);
         this.§4J§ = §;v§.§<"§.§%0§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§[!1§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§-_§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§>&§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§'§ = new Vector.<§<Q§>(this.§,!C§.length,true);
         §<A§.getItemByName("Button_Next_Left").mClip.alpha = 0;
         §<A§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super.activate();
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.start();
         }
         §[F§.§9u§.§#Q§(false);
         §[F§.§9u§.clearLevel();
         this.§4J§ = §;v§.§<"§.§%0§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!C§.length)
         {
            _loc3_ = this.§,!C§[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§^Z§ + 0.01) - 1;
            _loc5_ = int(§>!?§.§5!5§(§>!?§.§3a§ + "1-" + (_loc1_ + 1),true));
            _loc6_ = AngryBirdsFP11.§ !-§.§,h§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc6_ > 20)
            {
               _loc6_ = Math.floor(_loc6_ / 20) * 20;
            }
            else if(_loc6_ != 0)
            {
               _loc6_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §3!=§[_loc1_] + "\n" + §`v§[_loc1_];
            if(_loc6_ != 0)
            {
               _loc3_.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherTransparent.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherMask.height = 68 * (_loc6_ / 100);
               if(_loc6_ >= 100)
               {
                  if(_loc5_ == 3)
                  {
                     _loc3_.Button_IconBackground.gotoAndStop("gold");
                     _loc3_.MovieClip_Feather.gotoAndStop("Hidden");
                  }
               }
            }
            else
            {
               _loc3_.MovieClip_Feather.gotoAndStop("Hidden");
            }
            if(_loc1_ > this.§4J§)
            {
               this.§`J§(_loc1_);
            }
            else
            {
               this.§@j§(_loc1_);
            }
            _loc1_++;
         }
         this.§>&§.x = 0;
         this.§>&§.y = 0;
         if(§'!L§ == 1)
         {
            §<A§.getItemByName("Button_Next_Left").mClip.alpha = 1;
            §<A§.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            §<A§.getItemByName("Button_Next_Right").mClip.alpha = 0;
            §<A§.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            §<A§.getItemByName("Button_Next_Left").mClip.alpha = 0;
            §<A§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            §<A§.getItemByName("Button_Next_Right").mClip.alpha = 1;
            §<A§.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§2u§ = setInterval(this.§!§,3000);
         this.§<H§(§'!L§,true,false);
         §>!?§.§=0§();
         var _loc2_:String = §>!?§.§5!5§(§>!?§.§%§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§0!E§(Boolean(int(_loc2_)));
         }
         §<A§.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§ !Q§();
      }
      
      private function §!§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§"!E§ == 0)
         {
            _loc1_ = §<A§.getItemByName("Button_Next_Right").mClip;
            this.§,M§ = §5^§.§<"§.§8q§(§5^§.§<"§.§^g§(_loc1_,{"rotation":§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":-§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":-§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":-§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":§!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":0},null,§++§ / 8,§5^§.§5]§));
         }
         else
         {
            _loc1_ = §<A§.getItemByName("Button_Next_Left").mClip;
            this.§,M§ = §5^§.§<"§.§8q§(§5^§.§<"§.§^g§(_loc1_,{"rotation":180 + §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 - §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 + §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 - §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 + §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 - §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180 + §!c§},null,§++§ / 8,§5^§.§5]§),§5^§.§<"§.§^g§(_loc1_,{"rotation":180},null,§++§ / 8,§5^§.§5]§));
         }
         clearInterval(this.§2u§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§2u§ = setInterval(this.§!§,_loc2_);
         this.§,M§.play();
      }
      
      private function §%j§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§2[§.length)
         {
            this.§2[§[_loc1_ - 1] = null;
            _loc2_ = §<A§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§&!I§[_loc1_ - 1] is §<Q§)
            {
               (this.§&!I§[_loc1_ - 1] as §<Q§).§>!J§();
            }
            this.§&!I§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §@!=§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§2[§[_loc1_ - 1] != null)
            {
               _loc2_ = §<A§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§2[§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §4'§(param1:int) : void
      {
         var _loc2_:MovieClip = §<A§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§&!I§[param1 - 1] is §<Q§)
         {
            if((this.§&!I§[param1 - 1] as §<Q§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§2[§[param1 - 1] == null)
         {
            this.§2[§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§<Q§ = §5^§.§<"§.§8q§(§5^§.§<"§.§^g§(this.§2[§[param1 - 1],{"strength":4},{"strength":0},§,!B§ / 4,§5^§.§,3§),§5^§.§<"§.§^g§(this.§2[§[param1 - 1],{"strength":0},{"strength":4},§,!B§ / 4,§5^§.§2!C§),§5^§.§<"§.§^g§(this.§2[§[param1 - 1],{"strength":4},{"strength":0},§,!B§ / 4,§5^§.§,3§),§5^§.§<"§.§^g§(this.§2[§[param1 - 1],{"strength":0},{"strength":4},§,!B§ / 4,§5^§.§2!C§));
         _loc3_.play();
         this.§&!I§[param1 - 1] = _loc3_;
      }
      
      private function §`J§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§,!C§[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §3!=§[param1] + "\n" + §`v§[param1];
         _loc2_.TextField_Date.text.text = §5Z§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function §@j§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§,!C§[param1].mClip;
         var _loc3_:* = §<A§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §3!=§[param1] + "\n" + §`v§[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §<H§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §'!L§ = param1;
         if(this.§`F§)
         {
            return false;
         }
         this.§`F§ = true;
         this.§7! §();
         if(param1 > this.§8! § - 1)
         {
            param1 = this.§8! § - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§each § = param1;
         if(this.§each § > this.§"!E§)
         {
            this.§6!0§ = this.§"!E§ + 1;
         }
         else if(this.§each § < this.§"!E§)
         {
            this.§6!0§ = this.§"!E§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§[!1§ * this.§'G§);
         var _loc6_:Number = _loc4_ + this.§>&§.x * this.§'G§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §;!D§;
         if(this.§^i§ != null)
         {
            this.§^i§.stop();
         }
         if(param2)
         {
            this.§>&§.x = _loc5_;
            this.§"!E§ = param1;
         }
         else
         {
            this.§^i§ = §5^§.§<"§.§^g§(this.§>&§,{"x":_loc5_},null,§+Y§,§5^§.§,3§);
            this.§^i§.onComplete = this.§7!+§;
         }
         if(param3)
         {
            this.§]"§();
         }
         if(param2)
         {
            this.§7!+§();
         }
         else
         {
            this.§^i§.play();
         }
         return true;
      }
      
      private function §7! §() : void
      {
         var _loc1_:§-u§ = §<A§.getItemByName("Button_Sound") as §-u§;
         var _loc2_:§-u§ = §<A§.getItemByName("Button_Credits") as §-u§;
         var _loc3_:§-u§ = §<A§.getItemByName("MovieClip_SoundsOff") as §-u§;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§ !Q§();
         if(_loc1_.visible)
         {
            if(!_loc5_ && !_loc4_)
            {
               _loc3_.setVisibility(true);
            }
            else if(_loc5_ && _loc4_)
            {
               _loc3_.setVisibility(false);
            }
         }
         else
         {
            _loc3_.setVisibility(false);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§>!?§.§9!-§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§"!E§ == 0)
               {
                  this.§<H§(1,false);
                  break;
               }
               this.§<H§(0,false);
               break;
         }
      }
      
      protected function §"Z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§>&§.x + _loc1_ * AngryBirdsCustomCanvas.§[!1§ * this.§'G§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.§,!C§[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§4J§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§`J§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §7!+§() : void
      {
         this.§7! §();
         this.§`F§ = false;
         this.§"!E§ = this.§6!0§;
         var _loc1_:MovieClip = §<A§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §<A§.getItemByName("Button_Next_Right").mClip;
         if(this.§"!E§ == 1)
         {
            this.§"!3§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§,!J§);
            this.§"!3§.onComplete = this.§,C§;
            this.§"!3§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§9!§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§,!J§);
            this.§9!§.onComplete = this.§?!7§;
            this.§9!§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §-_§(param1:int) : §-u§
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §^3§.§+_§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §3!=§[param1] + "\n" + §`v§[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:§-u§ = new §-u§(_loc4_,§<A§.container,_loc3_);
         this.§,!C§.push(_loc5_);
         if(param1 > this.§4J§)
         {
            this.§`J§(param1);
         }
         return _loc5_;
      }
      
      private function §91§(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = 4;
         if(param2 == 0 || param3 == 0)
         {
            return _loc4_;
         }
         if(param1 >= param2)
         {
            _loc4_ = 1;
         }
         else if(param1 >= param3)
         {
            _loc4_ = 2;
         }
         else if(param1 > 0)
         {
            _loc4_ = 3;
         }
         return _loc4_;
      }
      
      override public function deActivate() : void
      {
         var _loc2_:MovieClip = null;
         if(this.§,M§ is §<Q§)
         {
            this.§,M§.§>!J§();
         }
         this.§,M§ = null;
         clearInterval(this.§2u§);
         this.§%j§();
         super.deActivate();
         this.§+!'§();
         this.§`F§ = false;
         this.§^i§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!C§.length)
         {
            _loc2_ = this.§,!C§[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function §+!'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'§.length)
         {
            if(this.§'§[_loc1_] != null)
            {
               this.§'§[_loc1_].stop();
               this.§'§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §<! §(param1:int) : void
      {
         var _loc2_:§8P§ = §2h§.§&I§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§"Z§();
         this.§'G§ = §<A§.height / AngryBirdsCustomCanvas.§87§;
         this.§@!=§();
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§`F§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = §<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§4J§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§'§[_loc5_] != null)
                        {
                           this.§'§[_loc5_].stop();
                        }
                        this.§'§[_loc5_] = §5^§.§<"§.§^g§(§<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§'G§,
                           "scaleY":this.§'G§
                        },null,0.5,§5^§.§]!8§);
                        this.§'§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§'§[_loc5_] != null)
                        {
                           this.§'§[_loc5_].stop();
                        }
                        this.§'§[_loc5_] = §5^§.§<"§.§^g§(§<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§'G§ + 0.1 * this.§'G§,
                           "scaleY":this.§'G§ + 0.1 * this.§'G§
                        },null,0.2);
                        this.§'§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §<A§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §#-§.playSound("Menu_Confirm");
                        §2h§.§2!I§(§2h§.§>w§("1-" + (_loc5_ + 1)));
                        mNextState = §#u§.§2`§;
                        break;
                     }
                     this.§4'§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §>!?§.§=!N§.§`!E§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §4!?§.§2`§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§<H§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§<H§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = §<A§.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = §<A§.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§ !Q§();
                  AngryBirdsFP11.§0!E§(_loc10_);
                  §>!?§.§+s§(§>!?§.§%§,int(_loc10_));
            }
         }
      }
      
      private function §]"§() : void
      {
         var _loc1_:MovieClip = §<A§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §<A§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§9!§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§,!J§);
            this.§9!§.onComplete = this.§?!7§;
            this.§9!§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§"!3§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§,!J§);
            this.§"!3§.onComplete = this.§,C§;
            this.§"!3§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §,C§() : void
      {
         this.§"!3§ = null;
      }
      
      private function §?!7§() : void
      {
         this.§9!§ = null;
      }
   }
}
