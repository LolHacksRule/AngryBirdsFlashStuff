package §>Y§
{
   import §"^§.§9=§;
   import §#!§.§%&§;
   import §&[§.§<c§;
   import §3!%§.§-k§;
   import §3!%§.§9i§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§1r§;
   import §>w§.;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §%R§ extends §<!>§
   {
      
      public static const §5!!§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §]L§:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §<!I§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §"J§:Number = 1;
      
      public static const §4!C§:String = "LevelSelectionState";
      
      private static const §2! §:Number = 0.5;
      
      private static const §[!"§:Number = 1.5;
      
      private static const §1&§:Number = 0.1;
      
      private static const §9k§:Number = 0.8;
      
      private static const §;!5§:Number = 5;
      
      private static var §#>§:int = 0;
       
      
      private var § M§:§6q§;
      
      private var §59§:§6q§;
      
      private var §`!'§:uint;
      
      private var §[>§:§6q§;
      
      private var §]!L§:Vector.<§6q§>;
      
      private var §`!I§:Vector.<§1r§>;
      
      private var §;!2§:§%&§;
      
      private var §>]§:Vector.<GlowFilter> = null;
      
      private var §>!,§:Vector.<§6q§> = null;
      
      private var §>!8§:int = 0;
      
      private var §`J§:int = 8;
      
      private var §-K§:int = 2;
      
      private var §4!P§:Number = 1;
      
      private var §`!+§:int = 0;
      
      private var §0!;§:int = 0;
      
      private var §?m§:int = 0;
      
      protected var §@!&§:Boolean = false;
      
      protected var §#e§:§6q§ = null;
      
      private var §@9§:int = -1;
      
      public function §%R§(param1:Boolean, param2:String = "LevelSelectionState")
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
         var _loc9_:§1r§ = null;
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §#'§.§=!@§(§#'§.§!!H§ + "1-" + (_loc1_ + 1),true);
            if((_loc6_ = §#'§.§=!@§(§#'§.§'c§ + "1-" + (_loc1_ + 1),true)) != null)
            {
               AngryBirdsFP11.§3!?§.§6!4§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§3!?§.§2!F§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§>]§ = new Vector.<GlowFilter>(16,true);
         this.§>!,§ = new Vector.<§6q§>(16,true);
         this.§`!I§ = new Vector.<§1r§>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§;!2§ = new §%&§(_loc2_,§3g§.container,null,null);
         §3g§.container.addComponent(this.§;!2§);
         this.§@9§ = §<c§.§ set§.§"q§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§^&§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§2!D§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§;!2§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§]!L§ = new Vector.<§6q§>(this.§`!I§.length,true);
         §3g§.getItemByName("Button_Next_Left").mClip.alpha = 0;
         §3g§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super.activate();
         if(§#0§.§#4§)
         {
            §#0§.§#4§.start();
         }
         §9=§.§<!@§.§2k§(false);
         §9=§.§<!@§.clearLevel();
         this.§@9§ = §<c§.§ set§.§"q§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!I§.length)
         {
            _loc3_ = this.§`!I§[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§`J§ + 0.01) - 1;
            _loc5_ = int(§#'§.§=!@§(§#'§.§7!<§ + "1-" + (_loc1_ + 1),true));
            _loc6_ = AngryBirdsFP11.§3!?§.§#J§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc6_ > 20)
            {
               _loc6_ = Math.floor(_loc6_ / 20) * 20;
            }
            else if(_loc6_ != 0)
            {
               _loc6_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §5!!§[_loc1_] + "\n" + §]L§[_loc1_];
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
            if(_loc1_ > this.§@9§)
            {
               this.§`=§(_loc1_);
            }
            else
            {
               this.§"!H§(_loc1_);
            }
            _loc1_++;
         }
         this.§;!2§.x = 0;
         this.§;!2§.y = 0;
         if(§#>§ == 1)
         {
            §3g§.getItemByName("Button_Next_Left").mClip.alpha = 1;
            §3g§.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            §3g§.getItemByName("Button_Next_Right").mClip.alpha = 0;
            §3g§.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            §3g§.getItemByName("Button_Next_Left").mClip.alpha = 0;
            §3g§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            §3g§.getItemByName("Button_Next_Right").mClip.alpha = 1;
            §3g§.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§`!'§ = setInterval(this.§6E§,3000);
         this.§0J§(§#>§,true,false);
         §#'§.§if §();
         var _loc2_:String = §#'§.§=!@§(§#'§.§-&§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§'_§(Boolean(int(_loc2_)));
         }
         §3g§.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§8!M§();
      }
      
      private function §6E§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§?m§ == 0)
         {
            _loc1_ = §3g§.getItemByName("Button_Next_Right").mClip;
            this.§[>§ = §[!-§.§ set§.§0c§(§[!-§.§ set§.§6B§(_loc1_,{"rotation":§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":-§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":-§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":-§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":§;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":0},null,§9k§ / 8,§[!-§.§'!P§));
         }
         else
         {
            _loc1_ = §3g§.getItemByName("Button_Next_Left").mClip;
            this.§[>§ = §[!-§.§ set§.§0c§(§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 + §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 - §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 + §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 - §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 + §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 - §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180 + §;!5§},null,§9k§ / 8,§[!-§.§'!P§),§[!-§.§ set§.§6B§(_loc1_,{"rotation":180},null,§9k§ / 8,§[!-§.§'!P§));
         }
         clearInterval(this.§`!'§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§`!'§ = setInterval(this.§6E§,_loc2_);
         this.§[>§.play();
      }
      
      private function §<!?§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§>]§.length)
         {
            this.§>]§[_loc1_ - 1] = null;
            _loc2_ = §3g§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§>!,§[_loc1_ - 1] is §6q§)
            {
               (this.§>!,§[_loc1_ - 1] as §6q§).§ O§();
            }
            this.§>!,§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §8[§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§>]§[_loc1_ - 1] != null)
            {
               _loc2_ = §3g§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§>]§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §'!F§(param1:int) : void
      {
         var _loc2_:MovieClip = §3g§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§>!,§[param1 - 1] is §6q§)
         {
            if((this.§>!,§[param1 - 1] as §6q§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§>]§[param1 - 1] == null)
         {
            this.§>]§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§6q§ = §[!-§.§ set§.§0c§(§[!-§.§ set§.§6B§(this.§>]§[param1 - 1],{"strength":4},{"strength":0},§[!"§ / 4,§[!-§.§>X§),§[!-§.§ set§.§6B§(this.§>]§[param1 - 1],{"strength":0},{"strength":4},§[!"§ / 4,§[!-§.§3d§),§[!-§.§ set§.§6B§(this.§>]§[param1 - 1],{"strength":4},{"strength":0},§[!"§ / 4,§[!-§.§>X§),§[!-§.§ set§.§6B§(this.§>]§[param1 - 1],{"strength":0},{"strength":4},§[!"§ / 4,§[!-§.§3d§));
         _loc3_.play();
         this.§>!,§[param1 - 1] = _loc3_;
      }
      
      private function §`=§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§`!I§[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §5!!§[param1] + "\n" + §]L§[param1];
         _loc2_.TextField_Date.text.text = §<!I§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function §"!H§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§`!I§[param1].mClip;
         var _loc3_:* = §3g§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §5!!§[param1] + "\n" + §]L§[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §0J§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §#>§ = param1;
         if(this.§@!&§)
         {
            return false;
         }
         this.§@!&§ = true;
         this.§6!M§();
         if(param1 > this.§-K§ - 1)
         {
            param1 = this.§-K§ - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`!+§ = param1;
         if(this.§`!+§ > this.§?m§)
         {
            this.§0!;§ = this.§?m§ + 1;
         }
         else if(this.§`!+§ < this.§?m§)
         {
            this.§0!;§ = this.§?m§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§^&§ * this.§4!P§);
         var _loc6_:Number = _loc4_ + this.§;!2§.x * this.§4!P§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §2! §;
         if(this.§#e§ != null)
         {
            this.§#e§.stop();
         }
         if(param2)
         {
            this.§;!2§.x = _loc5_;
            this.§?m§ = param1;
         }
         else
         {
            this.§#e§ = §[!-§.§ set§.§6B§(this.§;!2§,{"x":_loc5_},null,§"J§,§[!-§.§>X§);
            this.§#e§.onComplete = this.§[w§;
         }
         if(param3)
         {
            this.§%!=§();
         }
         if(param2)
         {
            this.§[w§();
         }
         else
         {
            this.§#e§.play();
         }
         return true;
      }
      
      private function §6!M§() : void
      {
         var _loc1_:§1r§ = §3g§.getItemByName("Button_Sound") as §1r§;
         var _loc2_:§1r§ = §3g§.getItemByName("Button_Credits") as §1r§;
         var _loc3_:§1r§ = §3g§.getItemByName("MovieClip_SoundsOff") as §1r§;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§8!M§();
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
         if(!§#'§.§<y§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§?m§ == 0)
               {
                  this.§0J§(1,false);
                  break;
               }
               this.§0J§(0,false);
               break;
         }
      }
      
      protected function §36§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§;!2§.x + _loc1_ * AngryBirdsCustomCanvas.§^&§ * this.§4!P§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.§`!I§[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§@9§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§`=§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §[w§() : void
      {
         this.§6!M§();
         this.§@!&§ = false;
         this.§?m§ = this.§0!;§;
         var _loc1_:MovieClip = §3g§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §3g§.getItemByName("Button_Next_Right").mClip;
         if(this.§?m§ == 1)
         {
            this.§ M§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§1&§);
            this.§ M§.onComplete = this.§@!O§;
            this.§ M§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§59§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§1&§);
            this.§59§.onComplete = this.§4t§;
            this.§59§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §2!D§(param1:int) : §1r§
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §@h§.§[@§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §5!!§[param1] + "\n" + §]L§[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:§1r§ = new §1r§(_loc4_,§3g§.container,_loc3_);
         this.§`!I§.push(_loc5_);
         if(param1 > this.§@9§)
         {
            this.§`=§(param1);
         }
         return _loc5_;
      }
      
      private function §7!@§(param1:int, param2:int, param3:int) : int
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
         if(this.§[>§ is §6q§)
         {
            this.§[>§.§ O§();
         }
         this.§[>§ = null;
         clearInterval(this.§`!'§);
         this.§<!?§();
         super.deActivate();
         this.§finally§();
         this.§@!&§ = false;
         this.§#e§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!I§.length)
         {
            _loc2_ = this.§`!I§[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function §finally§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!L§.length)
         {
            if(this.§]!L§[_loc1_] != null)
            {
               this.§]!L§[_loc1_].stop();
               this.§]!L§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §0!H§(param1:int) : void
      {
         var _loc2_:§9i§ = §-k§.§^4§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§36§();
         this.§4!P§ = §3g§.height / AngryBirdsCustomCanvas.§"#§;
         this.§8[§();
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§@!&§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = §3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§@9§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§]!L§[_loc5_] != null)
                        {
                           this.§]!L§[_loc5_].stop();
                        }
                        this.§]!L§[_loc5_] = §[!-§.§ set§.§6B§(§3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§4!P§,
                           "scaleY":this.§4!P§
                        },null,0.5,§[!-§.§%!D§);
                        this.§]!L§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§]!L§[_loc5_] != null)
                        {
                           this.§]!L§[_loc5_].stop();
                        }
                        this.§]!L§[_loc5_] = §[!-§.§ set§.§6B§(§3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§4!P§ + 0.1 * this.§4!P§,
                           "scaleY":this.§4!P§ + 0.1 * this.§4!P§
                        },null,0.2);
                        this.§]!L§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §3g§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §25§.playSound("Menu_Confirm");
                        §-k§.§+p§(§-k§.§0S§("1-" + (_loc5_ + 1)));
                        mNextState = §;O§.§4!C§;
                        break;
                     }
                     this.§'!F§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §#'§.§20§.§"!O§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §6[§.§4!C§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§0J§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§0J§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = §3g§.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = §3g§.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§8!M§();
                  AngryBirdsFP11.§'_§(_loc10_);
                  §#'§.§,B§(§#'§.§-&§,int(_loc10_));
            }
         }
      }
      
      private function §%!=§() : void
      {
         var _loc1_:MovieClip = §3g§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §3g§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§59§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§1&§);
            this.§59§.onComplete = this.§4t§;
            this.§59§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§ M§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§1&§);
            this.§ M§.onComplete = this.§@!O§;
            this.§ M§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §@!O§() : void
      {
         this.§ M§ = null;
      }
      
      private function §4t§() : void
      {
         this.§59§ = null;
      }
   }
}
