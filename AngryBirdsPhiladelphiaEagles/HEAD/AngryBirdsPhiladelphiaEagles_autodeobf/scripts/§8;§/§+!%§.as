package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §&>§.§`!M§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §4!6§.§<5§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §=!H§.§=<§;
   import §?!;§.§6H§;
   import §?!;§.§;h§;
   import §^h§.§2l§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §+!%§ extends §!L§
   {
      
      public static const §,!M§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §case §:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §null§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §=K§:Number = 1;
      
      public static const §"Z§:String = "LevelSelectionState";
      
      private static const §+!!§:Number = 0.5;
      
      private static const §[!2§:Number = 1.5;
      
      private static const §6o§:Number = 0.1;
      
      private static const §3!Q§:Number = 0.8;
      
      private static const §>!$§:Number = 5;
      
      private static var §@9§:int = 0;
       
      
      private var §!!8§:§ !4§;
      
      private var §'+§:§ !4§;
      
      private var §;C§:uint;
      
      private var §+!Q§:§ !4§;
      
      private var §=,§:Vector.<§ !4§>;
      
      private var §!v§:Vector.<§=<§>;
      
      private var §+!0§:§`!M§;
      
      private var §;S§:Vector.<GlowFilter> = null;
      
      private var §7,§:Vector.<§ !4§> = null;
      
      private var §#&§:int = 0;
      
      private var §@!#§:int = 8;
      
      private var §4!E§:int = 2;
      
      private var §'I§:Number = 1;
      
      private var §]3§:int = 0;
      
      private var §?!$§:int = 0;
      
      private var §0P§:int = 0;
      
      protected var §6!4§:Boolean = false;
      
      protected var §!E§:§ !4§ = null;
      
      private var §,u§:int = -1;
      
      public function §+!%§(param1:Boolean, param2:String = "LevelSelectionState")
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
         var _loc9_:§=<§ = null;
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §#!1§.§9u§(§#!1§.§5!;§ + "1-" + (_loc1_ + 1));
            if((_loc6_ = §#!1§.§9u§(§#!1§.§6<§ + "1-" + (_loc1_ + 1))) != null)
            {
               AngryBirdsFP11.§^O§.§4`§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§^O§.§9!;§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§;S§ = new Vector.<GlowFilter>(16,true);
         this.§7,§ = new Vector.<§ !4§>(16,true);
         this.§!v§ = new Vector.<§=<§>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§+!0§ = new §`!M§(_loc2_,§>2§.container,null,null);
         §>2§.container.addComponent(this.§+!0§);
         this.§,u§ = §<5§.§&y§.§<!7§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§[!0§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§1;§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§+!0§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§=,§ = new Vector.<§ !4§>(this.§!v§.length,true);
         §>2§.getItemByName("Button_Next_Left").mClip.alpha = 0;
         §>2§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super.activate();
         if(§2l§.§7K§)
         {
            §2l§.§7K§.start();
         }
         §5!+§.§6!§.§'!+§(false);
         §5!+§.§6!§.clearLevel();
         this.§,u§ = §<5§.§&y§.§<!7§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§!v§.length)
         {
            _loc3_ = this.§!v§[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§@!#§ + 0.01) - 1;
            _loc5_ = §#!1§.§]%§("1-" + (_loc1_ + 1));
            _loc6_ = int(§#!1§.§9u§(§#!1§.§8-§ + "1-" + (_loc1_ + 1)));
            if(_loc5_ == -1)
            {
               _loc5_ = int(§#!1§.§9u§(§#!1§.§8-§ + "1-" + (_loc1_ + 1)));
               §#!1§.§?%§(_loc5_,"1-" + (_loc1_ + 1));
            }
            else if(_loc5_ > 0 && _loc6_ < _loc5_ && _loc6_ != _loc5_)
            {
               §#!1§.§`U§(§#!1§.§8-§ + "1-" + (_loc1_ + 1),_loc5_);
            }
            _loc7_ = AngryBirdsFP11.§^O§.§#!@§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc7_ > 20)
            {
               _loc7_ = Math.floor(_loc7_ / 20) * 20;
            }
            else if(_loc7_ != 0)
            {
               _loc7_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §,!M§[_loc1_] + "\n" + §case §[_loc1_];
            if(_loc7_ != 0)
            {
               _loc3_.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherTransparent.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherMask.height = 68 * (_loc7_ / 100);
               if(_loc7_ >= 100)
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
            if(_loc1_ > this.§,u§)
            {
               this.§8`§(_loc1_);
            }
            else
            {
               this.§ t§(_loc1_);
            }
            _loc1_++;
         }
         this.§+!0§.x = 0;
         this.§+!0§.y = 0;
         if(§@9§ == 1)
         {
            §>2§.getItemByName("Button_Next_Left").mClip.alpha = 1;
            §>2§.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            §>2§.getItemByName("Button_Next_Right").mClip.alpha = 0;
            §>2§.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            §>2§.getItemByName("Button_Next_Left").mClip.alpha = 0;
            §>2§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            §>2§.getItemByName("Button_Next_Right").mClip.alpha = 1;
            §>2§.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§;C§ = setInterval(this.§ w§,3000);
         this.§5!J§(§@9§,true,false);
         §#!1§.§6r§();
         var _loc2_:String = §#!1§.§9u§(§#!1§.§5Z§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§`1§(Boolean(int(_loc2_)));
         }
         §>2§.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§![§();
      }
      
      private function § w§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§0P§ == 0)
         {
            _loc1_ = §>2§.getItemByName("Button_Next_Right").mClip;
            this.§+!Q§ = §49§.§&y§.§,z§(§49§.§&y§.§=!3§(_loc1_,{"rotation":§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":-§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":-§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":-§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":§>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":0},null,§3!Q§ / 8,§49§.§%!2§));
         }
         else
         {
            _loc1_ = §>2§.getItemByName("Button_Next_Left").mClip;
            this.§+!Q§ = §49§.§&y§.§,z§(§49§.§&y§.§=!3§(_loc1_,{"rotation":180 + §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 - §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 + §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 - §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 + §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 - §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180 + §>!$§},null,§3!Q§ / 8,§49§.§%!2§),§49§.§&y§.§=!3§(_loc1_,{"rotation":180},null,§3!Q§ / 8,§49§.§%!2§));
         }
         clearInterval(this.§;C§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§;C§ = setInterval(this.§ w§,_loc2_);
         this.§+!Q§.play();
      }
      
      private function §,^§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§;S§.length)
         {
            this.§;S§[_loc1_ - 1] = null;
            _loc2_ = §>2§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§7,§[_loc1_ - 1] is § !4§)
            {
               (this.§7,§[_loc1_ - 1] as § !4§).§=;§();
            }
            this.§7,§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §'0§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§;S§[_loc1_ - 1] != null)
            {
               _loc2_ = §>2§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§;S§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §=W§(param1:int) : void
      {
         var _loc2_:MovieClip = §>2§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§7,§[param1 - 1] is § !4§)
         {
            if((this.§7,§[param1 - 1] as § !4§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§;S§[param1 - 1] == null)
         {
            this.§;S§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§ !4§ = §49§.§&y§.§,z§(§49§.§&y§.§=!3§(this.§;S§[param1 - 1],{"strength":4},{"strength":0},§[!2§ / 4,§49§.§+<§),§49§.§&y§.§=!3§(this.§;S§[param1 - 1],{"strength":0},{"strength":4},§[!2§ / 4,§49§.§5y§),§49§.§&y§.§=!3§(this.§;S§[param1 - 1],{"strength":4},{"strength":0},§[!2§ / 4,§49§.§+<§),§49§.§&y§.§=!3§(this.§;S§[param1 - 1],{"strength":0},{"strength":4},§[!2§ / 4,§49§.§5y§));
         _loc3_.play();
         this.§7,§[param1 - 1] = _loc3_;
      }
      
      private function §8`§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§!v§[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §,!M§[param1] + "\n" + §case §[param1];
         _loc2_.TextField_Date.text.text = §null§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function § t§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§!v§[param1].mClip;
         var _loc3_:* = §>2§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §,!M§[param1] + "\n" + §case §[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §5!J§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §@9§ = param1;
         if(this.§6!4§)
         {
            return false;
         }
         this.§6!4§ = true;
         this.§!p§();
         if(param1 > this.§4!E§ - 1)
         {
            param1 = this.§4!E§ - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]3§ = param1;
         if(this.§]3§ > this.§0P§)
         {
            this.§?!$§ = this.§0P§ + 1;
         }
         else if(this.§]3§ < this.§0P§)
         {
            this.§?!$§ = this.§0P§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§[!0§ * this.§'I§);
         var _loc6_:Number = _loc4_ + this.§+!0§.x * this.§'I§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §+!!§;
         if(this.§!E§ != null)
         {
            this.§!E§.stop();
         }
         if(param2)
         {
            this.§+!0§.x = _loc5_;
            this.§0P§ = param1;
         }
         else
         {
            this.§!E§ = §49§.§&y§.§=!3§(this.§+!0§,{"x":_loc5_},null,§=K§,§49§.§+<§);
            this.§!E§.onComplete = this.§=J§;
         }
         if(param3)
         {
            this.§;s§();
         }
         if(param2)
         {
            this.§=J§();
         }
         else
         {
            this.§!E§.play();
         }
         return true;
      }
      
      private function §!p§() : void
      {
         var _loc1_:§=<§ = §>2§.getItemByName("Button_Sound") as §=<§;
         var _loc2_:§=<§ = §>2§.getItemByName("Button_Credits") as §=<§;
         var _loc3_:§=<§ = §>2§.getItemByName("MovieClip_SoundsOff") as §=<§;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§![§();
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
         if(!§#!1§.§7I§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§0P§ == 0)
               {
                  this.§5!J§(1,false);
                  break;
               }
               this.§5!J§(0,false);
               break;
         }
      }
      
      protected function §&s§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§+!0§.x + _loc1_ * AngryBirdsCustomCanvas.§[!0§ * this.§'I§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.§!v§[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§,u§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§8`§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §=J§() : void
      {
         this.§!p§();
         this.§6!4§ = false;
         this.§0P§ = this.§?!$§;
         var _loc1_:MovieClip = §>2§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §>2§.getItemByName("Button_Next_Right").mClip;
         if(this.§0P§ == 1)
         {
            this.§!!8§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§6o§);
            this.§!!8§.onComplete = this.§%!#§;
            this.§!!8§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§'+§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§6o§);
            this.§'+§.onComplete = this.§&!Q§;
            this.§'+§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §1;§(param1:int) : §=<§
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §<x§.§,! §("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §,!M§[param1] + "\n" + §case §[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:§=<§ = new §=<§(_loc4_,§>2§.container,_loc3_);
         this.§!v§.push(_loc5_);
         if(param1 > this.§,u§)
         {
            this.§8`§(param1);
         }
         return _loc5_;
      }
      
      private function §,;§(param1:int, param2:int, param3:int) : int
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
         if(this.§+!Q§ is § !4§)
         {
            this.§+!Q§.§=;§();
         }
         this.§+!Q§ = null;
         clearInterval(this.§;C§);
         this.§,^§();
         super.deActivate();
         this.§1Q§();
         this.§6!4§ = false;
         this.§!E§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!v§.length)
         {
            _loc2_ = this.§!v§[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function §1Q§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=,§.length)
         {
            if(this.§=,§[_loc1_] != null)
            {
               this.§=,§[_loc1_].stop();
               this.§=,§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §5B§(param1:int) : void
      {
         var _loc2_:§;h§ = §6H§.§4_§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§&s§();
         this.§'I§ = §>2§.height / AngryBirdsCustomCanvas.§>!8§;
         this.§'0§();
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§6!4§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = §>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§,u§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§=,§[_loc5_] != null)
                        {
                           this.§=,§[_loc5_].stop();
                        }
                        this.§=,§[_loc5_] = §49§.§&y§.§=!3§(§>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§'I§,
                           "scaleY":this.§'I§
                        },null,0.5,§49§.§ get§);
                        this.§=,§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§=,§[_loc5_] != null)
                        {
                           this.§=,§[_loc5_].stop();
                        }
                        this.§=,§[_loc5_] = §49§.§&y§.§=!3§(§>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§'I§ + 0.1 * this.§'I§,
                           "scaleY":this.§'I§ + 0.1 * this.§'I§
                        },null,0.2);
                        this.§=,§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §>2§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §3V§.playSound("Menu_Confirm");
                        §6H§.§#L§(§6H§.§4!+§("1-" + (_loc5_ + 1)));
                        mNextState = §8^§.§"Z§;
                        break;
                     }
                     this.§=W§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §#!1§.§@F§.§]H§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §8!4§.§"Z§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§5!J§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§5!J§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = §>2§.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = §>2§.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§![§();
                  AngryBirdsFP11.§`1§(_loc10_);
                  §#!1§.§`U§(§#!1§.§5Z§,int(_loc10_));
            }
         }
      }
      
      private function §;s§() : void
      {
         var _loc1_:MovieClip = §>2§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §>2§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§'+§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§6o§);
            this.§'+§.onComplete = this.§&!Q§;
            this.§'+§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§!!8§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§6o§);
            this.§!!8§.onComplete = this.§%!#§;
            this.§!!8§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §%!#§() : void
      {
         this.§!!8§ = null;
      }
      
      private function §&!Q§() : void
      {
         this.§'+§ = null;
      }
   }
}
