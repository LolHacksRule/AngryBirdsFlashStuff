package §,!"§
{
   import §"U§.§^'§;
   import §#r§.§&4§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §5Z§.§[Z§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §]p§.§9!,§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §@f§ extends §'!#§
   {
      
      public static const §0!,§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §-k§:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §9!J§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §;!K§:Number = 1;
      
      public static const §-A§:String = "LevelSelectionState";
      
      private static const §3!J§:Number = 0.5;
      
      private static const §"!>§:Number = 1.5;
      
      private static const §,3§:Number = 0.1;
      
      private static const §[p§:Number = 0.8;
      
      private static const §80§:Number = 5;
      
      private static var §@!6§:int = 0;
       
      
      private var §"!%§:§[!9§;
      
      private var §&j§:§[!9§;
      
      private var § try§:uint;
      
      private var §21§:§[!9§;
      
      private var §5`§:Vector.<§[!9§>;
      
      private var static:Vector.<§^'§>;
      
      private var §9!-§:§&4§;
      
      private var §?!+§:Vector.<GlowFilter> = null;
      
      private var §#!E§:Vector.<§[!9§> = null;
      
      private var §4&§:int = 0;
      
      private var §&b§:int = 8;
      
      private var § 1§:int = 2;
      
      private var §,Z§:Number = 1;
      
      private var §?!<§:int = 0;
      
      private var §%!6§:int = 0;
      
      private var §,8§:int = 0;
      
      protected var §,%§:Boolean = false;
      
      protected var §;;§:§[!9§ = null;
      
      private var §9!B§:int = -1;
      
      public function §@f§(param1:Boolean, param2:String = "LevelSelectionState")
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
         var _loc9_:§^'§ = null;
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §!D§.§;2§(§!D§.§6+§ + "1-" + (_loc1_ + 1));
            if((_loc6_ = §!D§.§;2§(§!D§.§5!%§ + "1-" + (_loc1_ + 1))) != null)
            {
               AngryBirdsFP11.§`I§.§6y§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§`I§.§,!0§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§?!+§ = new Vector.<GlowFilter>(16,true);
         this.§#!E§ = new Vector.<§[!9§>(16,true);
         this.static = new Vector.<§^'§>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§9!-§ = new §&4§(_loc2_,§0q§.container,null,null);
         §0q§.container.addComponent(this.§9!-§);
         this.§9!B§ = §9!,§.§>o§.§+d§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§-p§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§3!F§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§9!-§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§5`§ = new Vector.<§[!9§>(this.static.length,true);
         §0q§.getItemByName("Button_Next_Left").mClip.alpha = 0;
         §0q§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super.activate();
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.start();
         }
         §#! §.§`'§.§^!6§(false);
         §#! §.§`'§.clearLevel();
         this.§9!B§ = §9!,§.§>o§.§+d§();
         var _loc1_:int = 0;
         while(_loc1_ < this.static.length)
         {
            _loc3_ = this.static[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§&b§ + 0.01) - 1;
            _loc5_ = §!D§.§]!?§("1-" + (_loc1_ + 1));
            _loc6_ = int(§!D§.§;2§(§!D§.§2I§ + "1-" + (_loc1_ + 1)));
            if(_loc5_ == -1)
            {
               _loc5_ = int(§!D§.§;2§(§!D§.§2I§ + "1-" + (_loc1_ + 1)));
               §!D§.§ t§(_loc5_,"1-" + (_loc1_ + 1));
            }
            else if(_loc5_ > 0 && _loc6_ < _loc5_ && _loc6_ != _loc5_)
            {
               §!D§.§#!O§(§!D§.§2I§ + "1-" + (_loc1_ + 1),_loc5_);
            }
            _loc7_ = AngryBirdsFP11.§`I§.§`!C§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc7_ > 20)
            {
               _loc7_ = Math.floor(_loc7_ / 20) * 20;
            }
            else if(_loc7_ != 0)
            {
               _loc7_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §0!,§[_loc1_] + "\n" + §-k§[_loc1_];
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
            if(_loc1_ > this.§9!B§)
            {
               this.§;X§(_loc1_);
            }
            else
            {
               this.§[8§(_loc1_);
            }
            _loc1_++;
         }
         this.§9!-§.x = 0;
         this.§9!-§.y = 0;
         if(§@!6§ == 1)
         {
            §0q§.getItemByName("Button_Next_Left").mClip.alpha = 1;
            §0q§.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            §0q§.getItemByName("Button_Next_Right").mClip.alpha = 0;
            §0q§.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            §0q§.getItemByName("Button_Next_Left").mClip.alpha = 0;
            §0q§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            §0q§.getItemByName("Button_Next_Right").mClip.alpha = 1;
            §0q§.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§ try§ = setInterval(this.§ x§,3000);
         this.§[!%§(§@!6§,true,false);
         §!D§.§[5§();
         var _loc2_:String = §!D§.§;2§(§!D§.§8T§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§6r§(Boolean(int(_loc2_)));
         }
         §0q§.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§5e§();
      }
      
      private function § x§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§,8§ == 0)
         {
            _loc1_ = §0q§.getItemByName("Button_Next_Right").mClip;
            this.§21§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":-§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":§80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":0},null,§[p§ / 8,§3C§.§5t§));
         }
         else
         {
            _loc1_ = §0q§.getItemByName("Button_Next_Left").mClip;
            this.§21§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 - §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180 + §80§},null,§[p§ / 8,§3C§.§5t§),§3C§.§>o§.§<t§(_loc1_,{"rotation":180},null,§[p§ / 8,§3C§.§5t§));
         }
         clearInterval(this.§ try§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§ try§ = setInterval(this.§ x§,_loc2_);
         this.§21§.play();
      }
      
      private function §`!P§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§?!+§.length)
         {
            this.§?!+§[_loc1_ - 1] = null;
            _loc2_ = §0q§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§#!E§[_loc1_ - 1] is §[!9§)
            {
               (this.§#!E§[_loc1_ - 1] as §[!9§).set();
            }
            this.§#!E§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §"3§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§?!+§[_loc1_ - 1] != null)
            {
               _loc2_ = §0q§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§?!+§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §class§(param1:int) : void
      {
         var _loc2_:MovieClip = §0q§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§#!E§[param1 - 1] is §[!9§)
         {
            if((this.§#!E§[param1 - 1] as §[!9§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§?!+§[param1 - 1] == null)
         {
            this.§?!+§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§[!9§ = §3C§.§>o§.§<!"§(§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":4},{"strength":0},§"!>§ / 4,§3C§.§,k§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":0},{"strength":4},§"!>§ / 4,§3C§.§!p§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":4},{"strength":0},§"!>§ / 4,§3C§.§,k§),§3C§.§>o§.§<t§(this.§?!+§[param1 - 1],{"strength":0},{"strength":4},§"!>§ / 4,§3C§.§!p§));
         _loc3_.play();
         this.§#!E§[param1 - 1] = _loc3_;
      }
      
      private function §;X§(param1:int) : void
      {
         var _loc2_:MovieClip = this.static[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
         _loc2_.TextField_Date.text.text = §9!J§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function §[8§(param1:int) : void
      {
         var _loc2_:MovieClip = this.static[param1].mClip;
         var _loc3_:* = §0q§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §[!%§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §@!6§ = param1;
         if(this.§,%§)
         {
            return false;
         }
         this.§,%§ = true;
         this.§`!4§();
         if(param1 > this.§ 1§ - 1)
         {
            param1 = this.§ 1§ - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?!<§ = param1;
         if(this.§?!<§ > this.§,8§)
         {
            this.§%!6§ = this.§,8§ + 1;
         }
         else if(this.§?!<§ < this.§,8§)
         {
            this.§%!6§ = this.§,8§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§-p§ * this.§,Z§);
         var _loc6_:Number = _loc4_ + this.§9!-§.x * this.§,Z§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §3!J§;
         if(this.§;;§ != null)
         {
            this.§;;§.stop();
         }
         if(param2)
         {
            this.§9!-§.x = _loc5_;
            this.§,8§ = param1;
         }
         else
         {
            this.§;;§ = §3C§.§>o§.§<t§(this.§9!-§,{"x":_loc5_},null,§;!K§,§3C§.§,k§);
            this.§;;§.onComplete = this.§>Z§;
         }
         if(param3)
         {
            this.§#%§();
         }
         if(param2)
         {
            this.§>Z§();
         }
         else
         {
            this.§;;§.play();
         }
         return true;
      }
      
      private function §`!4§() : void
      {
         var _loc1_:§^'§ = §0q§.getItemByName("Button_Sound") as §^'§;
         var _loc2_:§^'§ = §0q§.getItemByName("Button_Credits") as §^'§;
         var _loc3_:§^'§ = §0q§.getItemByName("MovieClip_SoundsOff") as §^'§;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§5e§();
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
         if(!§!D§.§^!E§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§,8§ == 0)
               {
                  this.§[!%§(1,false);
                  break;
               }
               this.§[!%§(0,false);
               break;
         }
      }
      
      protected function §0<§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§9!-§.x + _loc1_ * AngryBirdsCustomCanvas.§-p§ * this.§,Z§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.static[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§9!B§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§;X§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §>Z§() : void
      {
         this.§`!4§();
         this.§,%§ = false;
         this.§,8§ = this.§%!6§;
         var _loc1_:MovieClip = §0q§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §0q§.getItemByName("Button_Next_Right").mClip;
         if(this.§,8§ == 1)
         {
            this.§"!%§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§,3§);
            this.§"!%§.onComplete = this.§5=§;
            this.§"!%§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§&j§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§,3§);
            this.§&j§.onComplete = this.§?!8§;
            this.§&j§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §3!F§(param1:int) : §^'§
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §[!D§.§8!N§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §0!,§[param1] + "\n" + §-k§[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:§^'§ = new §^'§(_loc4_,§0q§.container,_loc3_);
         this.static.push(_loc5_);
         if(param1 > this.§9!B§)
         {
            this.§;X§(param1);
         }
         return _loc5_;
      }
      
      private function §?z§(param1:int, param2:int, param3:int) : int
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
         if(this.§21§ is §[!9§)
         {
            this.§21§.set();
         }
         this.§21§ = null;
         clearInterval(this.§ try§);
         this.§`!P§();
         super.deActivate();
         this.§#!%§();
         this.§,%§ = false;
         this.§;;§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.static.length)
         {
            _loc2_ = this.static[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function §#!%§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5`§.length)
         {
            if(this.§5`§[_loc1_] != null)
            {
               this.§5`§[_loc1_].stop();
               this.§5`§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §8!"§(param1:int) : void
      {
         var _loc2_:§7!K§ = §`!K§.§5!<§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§0<§();
         this.§,Z§ = §0q§.height / AngryBirdsCustomCanvas.§5!9§;
         this.§"3§();
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§,%§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§9!B§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§5`§[_loc5_] != null)
                        {
                           this.§5`§[_loc5_].stop();
                        }
                        this.§5`§[_loc5_] = §3C§.§>o§.§<t§(§0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§,Z§,
                           "scaleY":this.§,Z§
                        },null,0.5,§3C§.§ !1§);
                        this.§5`§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§5`§[_loc5_] != null)
                        {
                           this.§5`§[_loc5_].stop();
                        }
                        this.§5`§[_loc5_] = §3C§.§>o§.§<t§(§0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§,Z§ + 0.1 * this.§,Z§,
                           "scaleY":this.§,Z§ + 0.1 * this.§,Z§
                        },null,0.2);
                        this.§5`§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §0q§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §[!7§.playSound("Menu_Confirm");
                        §`!K§.§!e§(§`!K§.§]!F§("1-" + (_loc5_ + 1)));
                        mNextState = §-O§.§-A§;
                        break;
                     }
                     this.§class§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §!D§.§46§.§<!E§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §,!#§.§-A§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§[!%§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§[!%§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = §0q§.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = §0q§.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§5e§();
                  AngryBirdsFP11.§6r§(_loc10_);
                  §!D§.§#!O§(§!D§.§8T§,int(_loc10_));
            }
         }
      }
      
      private function §#%§() : void
      {
         var _loc1_:MovieClip = §0q§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §0q§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§&j§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§,3§);
            this.§&j§.onComplete = this.§?!8§;
            this.§&j§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§"!%§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§,3§);
            this.§"!%§.onComplete = this.§5=§;
            this.§"!%§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §5=§() : void
      {
         this.§"!%§ = null;
      }
      
      private function §?!8§() : void
      {
         this.§&j§ = null;
      }
   }
}
