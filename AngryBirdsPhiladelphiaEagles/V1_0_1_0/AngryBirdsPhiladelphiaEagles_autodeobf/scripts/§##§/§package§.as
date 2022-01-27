package §##§
{
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §2!4§.§7!I§;
   import §4!D§.§>!4§;
   import §5=§.§-+§;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §package§ extends §6!M§
   {
      
      public static const §1D§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §7>§:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §9!D§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §9H§:Number = 1;
      
      public static const §=,§:String = "LevelSelectionState";
      
      private static const §#!D§:Number = 0.5;
      
      private static const §8c§:Number = 1.5;
      
      private static const §&s§:Number = 0.1;
      
      private static const § each§:Number = 0.8;
      
      private static const §]B§:Number = 5;
      
      private static var §0!C§:int = 0;
       
      
      private var §1v§:§]H§;
      
      private var §3!%§:§]H§;
      
      private var §;!3§:uint;
      
      private var §5v§:§]H§;
      
      private var §=B§:Vector.<§]H§>;
      
      private var §1!?§:Vector.<dynamic>;
      
      private var §#u§:§7!I§;
      
      private var §8^§:Vector.<GlowFilter> = null;
      
      private var §&v§:Vector.<§]H§> = null;
      
      private var §&!P§:int = 0;
      
      private var §!!K§:int = 8;
      
      private var §4>§:int = 2;
      
      private var § d§:Number = 1;
      
      private var §4!P§:int = 0;
      
      private var §"s§:int = 0;
      
      private var §@p§:int = 0;
      
      protected var §%t§:Boolean = false;
      
      protected var §implements§:§]H§ = null;
      
      private var §+v§:int = -1;
      
      public function §package§(param1:Boolean, param2:String = "LevelSelectionState")
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
         var _loc9_:dynamic = null;
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §#g§.§'!>§(§#g§.§9!@§ + "1-" + (_loc1_ + 1));
            if((_loc6_ = §#g§.§'!>§(§#g§.§&,§ + "1-" + (_loc1_ + 1))) != null)
            {
               AngryBirdsFP11.§ ;§.§'Z§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§ ;§.§#!P§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§8^§ = new Vector.<GlowFilter>(16,true);
         this.§&v§ = new Vector.<§]H§>(16,true);
         this.§1!?§ = new Vector.<dynamic>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§#u§ = new §7!I§(_loc2_,§ §.container,null,null);
         § §.container.addComponent(this.§#u§);
         this.§+v§ = §>!4§.§4J§.§36§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§=!M§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§6!$§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§#u§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§=B§ = new Vector.<§]H§>(this.§1!?§.length,true);
         § §.getItemByName("Button_Next_Left").mClip.alpha = 0;
         § §.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super.activate();
         if(§>$§.§-U§)
         {
            §>$§.§-U§.start();
         }
         §2G§.§7!,§.§`!>§(false);
         §2G§.§7!,§.clearLevel();
         this.§+v§ = §>!4§.§4J§.§36§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!?§.length)
         {
            _loc3_ = this.§1!?§[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§!!K§ + 0.01) - 1;
            _loc5_ = §#g§.§9?§("1-" + (_loc1_ + 1));
            _loc6_ = int(§#g§.§'!>§(§#g§.§3!9§ + "1-" + (_loc1_ + 1)));
            if(_loc5_ == -1)
            {
               _loc5_ = int(§#g§.§'!>§(§#g§.§3!9§ + "1-" + (_loc1_ + 1)));
               §#g§.§%!C§(_loc5_,"1-" + (_loc1_ + 1));
            }
            else if(_loc5_ > 0 && _loc6_ < _loc5_ && _loc6_ != _loc5_)
            {
               §#g§.§56§(§#g§.§3!9§ + "1-" + (_loc1_ + 1),_loc5_);
            }
            _loc7_ = AngryBirdsFP11.§ ;§.§4m§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc7_ > 20)
            {
               _loc7_ = Math.floor(_loc7_ / 20) * 20;
            }
            else if(_loc7_ != 0)
            {
               _loc7_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §1D§[_loc1_] + "\n" + §7>§[_loc1_];
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
            if(_loc1_ > this.§+v§)
            {
               this.§8J§(_loc1_);
            }
            else
            {
               this.§^T§(_loc1_);
            }
            _loc1_++;
         }
         this.§#u§.x = 0;
         this.§#u§.y = 0;
         if(§0!C§ == 1)
         {
            § §.getItemByName("Button_Next_Left").mClip.alpha = 1;
            § §.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            § §.getItemByName("Button_Next_Right").mClip.alpha = 0;
            § §.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            § §.getItemByName("Button_Next_Left").mClip.alpha = 0;
            § §.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            § §.getItemByName("Button_Next_Right").mClip.alpha = 1;
            § §.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§;!3§ = setInterval(this.§;J§,3000);
         this.§7!K§(§0!C§,true,false);
         §#g§.§+Q§();
         var _loc2_:String = §#g§.§'!>§(§#g§.§ !@§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§<!H§(Boolean(int(_loc2_)));
         }
         § §.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§"7§();
      }
      
      private function §;J§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§@p§ == 0)
         {
            _loc1_ = § §.getItemByName("Button_Next_Right").mClip;
            this.§5v§ = §<t§.§4J§.§-J§(§<t§.§4J§.§#q§(_loc1_,{"rotation":§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":-§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":-§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":-§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":§]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":0},null,§ each§ / 8,§<t§.§#V§));
         }
         else
         {
            _loc1_ = § §.getItemByName("Button_Next_Left").mClip;
            this.§5v§ = §<t§.§4J§.§-J§(§<t§.§4J§.§#q§(_loc1_,{"rotation":180 + §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 - §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 + §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 - §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 + §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 - §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180 + §]B§},null,§ each§ / 8,§<t§.§#V§),§<t§.§4J§.§#q§(_loc1_,{"rotation":180},null,§ each§ / 8,§<t§.§#V§));
         }
         clearInterval(this.§;!3§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§;!3§ = setInterval(this.§;J§,_loc2_);
         this.§5v§.play();
      }
      
      private function §-=§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§8^§.length)
         {
            this.§8^§[_loc1_ - 1] = null;
            _loc2_ = § §.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§&v§[_loc1_ - 1] is §]H§)
            {
               (this.§&v§[_loc1_ - 1] as §]H§).§`6§();
            }
            this.§&v§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §2M§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§8^§[_loc1_ - 1] != null)
            {
               _loc2_ = § §.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§8^§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §3P§(param1:int) : void
      {
         var _loc2_:MovieClip = § §.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§&v§[param1 - 1] is §]H§)
         {
            if((this.§&v§[param1 - 1] as §]H§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§8^§[param1 - 1] == null)
         {
            this.§8^§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§]H§ = §<t§.§4J§.§-J§(§<t§.§4J§.§#q§(this.§8^§[param1 - 1],{"strength":4},{"strength":0},§8c§ / 4,§<t§.§=!&§),§<t§.§4J§.§#q§(this.§8^§[param1 - 1],{"strength":0},{"strength":4},§8c§ / 4,§<t§.§6!E§),§<t§.§4J§.§#q§(this.§8^§[param1 - 1],{"strength":4},{"strength":0},§8c§ / 4,§<t§.§=!&§),§<t§.§4J§.§#q§(this.§8^§[param1 - 1],{"strength":0},{"strength":4},§8c§ / 4,§<t§.§6!E§));
         _loc3_.play();
         this.§&v§[param1 - 1] = _loc3_;
      }
      
      private function §8J§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§1!?§[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §1D§[param1] + "\n" + §7>§[param1];
         _loc2_.TextField_Date.text.text = §9!D§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function §^T§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§1!?§[param1].mClip;
         var _loc3_:* = § §.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §1D§[param1] + "\n" + §7>§[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §7!K§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §0!C§ = param1;
         if(this.§%t§)
         {
            return false;
         }
         this.§%t§ = true;
         this.§9!'§();
         if(param1 > this.§4>§ - 1)
         {
            param1 = this.§4>§ - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§4!P§ = param1;
         if(this.§4!P§ > this.§@p§)
         {
            this.§"s§ = this.§@p§ + 1;
         }
         else if(this.§4!P§ < this.§@p§)
         {
            this.§"s§ = this.§@p§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§=!M§ * this.§ d§);
         var _loc6_:Number = _loc4_ + this.§#u§.x * this.§ d§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §#!D§;
         if(this.§implements§ != null)
         {
            this.§implements§.stop();
         }
         if(param2)
         {
            this.§#u§.x = _loc5_;
            this.§@p§ = param1;
         }
         else
         {
            this.§implements§ = §<t§.§4J§.§#q§(this.§#u§,{"x":_loc5_},null,§9H§,§<t§.§=!&§);
            this.§implements§.onComplete = this.§;F§;
         }
         if(param3)
         {
            this.§4!H§();
         }
         if(param2)
         {
            this.§;F§();
         }
         else
         {
            this.§implements§.play();
         }
         return true;
      }
      
      private function §9!'§() : void
      {
         var _loc1_:dynamic = § §.getItemByName("Button_Sound") as dynamic;
         var _loc2_:dynamic = § §.getItemByName("Button_Credits") as dynamic;
         var _loc3_:dynamic = § §.getItemByName("MovieClip_SoundsOff") as dynamic;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§"7§();
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
         if(!§#g§.§`T§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§@p§ == 0)
               {
                  this.§7!K§(1,false);
                  break;
               }
               this.§7!K§(0,false);
               break;
         }
      }
      
      protected function §'D§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§#u§.x + _loc1_ * AngryBirdsCustomCanvas.§=!M§ * this.§ d§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.§1!?§[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§+v§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§8J§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §;F§() : void
      {
         this.§9!'§();
         this.§%t§ = false;
         this.§@p§ = this.§"s§;
         var _loc1_:MovieClip = § §.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = § §.getItemByName("Button_Next_Right").mClip;
         if(this.§@p§ == 1)
         {
            this.§1v§ = §<t§.§4J§.§#q§(§ §.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§&s§);
            this.§1v§.onComplete = this.§@T§;
            this.§1v§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§3!%§ = §<t§.§4J§.§#q§(§ §.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§&s§);
            this.§3!%§.onComplete = this.§2_§;
            this.§3!%§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §6!$§(param1:int) : dynamic
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §4D§.§,!O§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §1D§[param1] + "\n" + §7>§[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:dynamic = new dynamic(_loc4_,§ §.container,_loc3_);
         this.§1!?§.push(_loc5_);
         if(param1 > this.§+v§)
         {
            this.§8J§(param1);
         }
         return _loc5_;
      }
      
      private function §&A§(param1:int, param2:int, param3:int) : int
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
         if(this.§5v§ is §]H§)
         {
            this.§5v§.§`6§();
         }
         this.§5v§ = null;
         clearInterval(this.§;!3§);
         this.§-=§();
         super.deActivate();
         this.§;S§();
         this.§%t§ = false;
         this.§implements§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!?§.length)
         {
            _loc2_ = this.§1!?§[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function §;S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=B§.length)
         {
            if(this.§=B§[_loc1_] != null)
            {
               this.§=B§[_loc1_].stop();
               this.§=B§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §2K§(param1:int) : void
      {
         var _loc2_:§-+§ = §^n§.§0!,§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§'D§();
         this.§ d§ = § §.height / AngryBirdsCustomCanvas.§"!§;
         this.§2M§();
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§%t§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = § §.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§+v§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           § §.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§=B§[_loc5_] != null)
                        {
                           this.§=B§[_loc5_].stop();
                        }
                        this.§=B§[_loc5_] = §<t§.§4J§.§#q§(§ §.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§ d§,
                           "scaleY":this.§ d§
                        },null,0.5,§<t§.§?!;§);
                        this.§=B§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           § §.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§=B§[_loc5_] != null)
                        {
                           this.§=B§[_loc5_].stop();
                        }
                        this.§=B§[_loc5_] = §<t§.§4J§.§#q§(§ §.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§ d§ + 0.1 * this.§ d§,
                           "scaleY":this.§ d§ + 0.1 * this.§ d§
                        },null,0.2);
                        this.§=B§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           § §.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           § §.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §9k§.playSound("Menu_Confirm");
                        §^n§.§4S§(§^n§.§while§("1-" + (_loc5_ + 1)));
                        mNextState = §6l§.§=,§;
                        break;
                     }
                     this.§3P§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §#g§.§^!G§.§>y§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §2!5§.§=,§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§7!K§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§7!K§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = § §.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = § §.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§"7§();
                  AngryBirdsFP11.§<!H§(_loc10_);
                  §#g§.§56§(§#g§.§ !@§,int(_loc10_));
            }
         }
      }
      
      private function §4!H§() : void
      {
         var _loc1_:MovieClip = § §.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = § §.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§3!%§ = §<t§.§4J§.§#q§(§ §.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§&s§);
            this.§3!%§.onComplete = this.§2_§;
            this.§3!%§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§1v§ = §<t§.§4J§.§#q§(§ §.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§&s§);
            this.§1v§.onComplete = this.§@T§;
            this.§1v§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §@T§() : void
      {
         this.§1v§ = null;
      }
      
      private function §2_§() : void
      {
         this.§3!%§ = null;
      }
   }
}
