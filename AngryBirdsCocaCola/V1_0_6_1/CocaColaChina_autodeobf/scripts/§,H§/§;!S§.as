package §,H§
{
   import § !K§.§'h§;
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §+!6§.HighscoreSidebar;
   import §3U§.§2!%§;
   import §3U§.§^v§;
   import §4!W§.§@R§;
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §7!H§.§`f§;
   import §8!<§.§#u§;
   import §8!<§.§1e§;
   import §8!<§.§29§;
   import §8!<§.§2W§;
   import §8!<§.§<h§;
   import §;A§.§7!K§;
   import §=L§.§@E§;
   import §@W§.§2!_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §;!S§ extends §1!a§
   {
      
      public static const §^!O§:String = "LevelSelectionState";
      
      private static const §%"§:Number = 0.5;
      
      public static var §"!?§:String = "";
       
      
      private var §^^§:Boolean = false;
      
      private var §26§:§2W§;
      
      private var §&q§:§2W§;
      
      private var §2q§:MovieClip;
      
      private var §-G§:Array;
      
      private var §80§:Array;
      
      private var §?,§:int = 0;
      
      private var §5!c§:int = 0;
      
      private var §=!-§:int = 0;
      
      private var § c§:Boolean = false;
      
      private var §!V§:§'!9§ = null;
      
      private var §4!X§:Dictionary;
      
      private var §[m§:Array;
      
      private var §@!5§:Array;
      
      private var §]!]§:§@R§;
      
      private var §'!2§:Number = 0;
      
      public function §;!S§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`! § = new §@R§(41,118,142,1);
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelSelection[0]);
         this.§&q§ = §=!I§.getItemByName("Container_LevelRepeaters") as §2W§;
         this.§26§ = §=!I§.getItemByName("Container_LevelSelection") as §2W§;
         while(this.§&q§.mClip.numChildren > 0)
         {
            this.§&q§.mClip.removeChildAt(0);
         }
         this.§80§ = [];
         this.§-G§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         §6T§.§-5§ = §^!O§;
         §7!K§.§=j§.clearLevel();
         §7!K§.§=j§.§ i§(false);
         §7!K§.§=j§.§6z§(false);
         this.§ !Q§();
         §6T§.§"t§();
         if(this.§80§.length == 1)
         {
            (§=!I§.getItemByName("Button_Prev") as §29§).setVisibility(false);
            (§=!I§.getItemByName("Button_Next") as §29§).setVisibility(false);
            (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).setVisibility(false);
         }
         else
         {
            (§=!I§.getItemByName("Button_Prev") as §29§).setVisibility(true);
            (§=!I§.getItemByName("Button_Next") as §29§).setVisibility(true);
            (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).setVisibility(true);
         }
         var _loc1_:§^v§ = §2!%§.§-U§();
         §=!I§.setText(§6T§.§>c§.§9!Q§(_loc1_) + "/" + §6T§.§>c§.§-!U§(_loc1_),"Textfield_CollectedStars");
         this.§'!2§ = this.§&q§.x;
      }
      
      override protected function setInitialState() : void
      {
         §+D§.changeState(HighscoreSidebar.§=!"§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;0§();
         this.§@r§();
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      private function §;0§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-G§.length)
         {
            if(-this.§&q§.x >= this.§80§[_loc1_].x && -this.§'!2§ < this.§80§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-G§.length)
               {
                  this.§-G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=!-§ = _loc1_;
               this.§-G§[_loc1_].gotoAndStop("Selected");
               (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).x = this.§-G§[_loc1_].x;
               this.§=W§(_loc1_);
            }
            if(-this.§&q§.x <= this.§80§[_loc1_].x && -this.§'!2§ > this.§80§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-G§.length)
               {
                  this.§-G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=!-§ = _loc1_;
               this.§-G§[_loc1_].gotoAndStop("Selected");
               (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).x = this.§-G§[_loc1_].x;
               this.§=W§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§=!-§ != this.§?,§)
         {
            if(this.§?,§ > this.§=!-§)
            {
               this.§5!c§ = this.§=!-§ + 1;
            }
            else if(this.§?,§ < this.§=!-§)
            {
               this.§5!c§ = this.§=!-§ - 1;
            }
            else
            {
               this.§5!c§ = this.§=!-§;
            }
            this.§]!]§.§-!F§(this.§[m§[this.§5!c§].red,this.§[m§[this.§5!c§].green,this.§[m§[this.§5!c§].blue);
         }
         this.§'!2§ = this.§&q§.x;
      }
      
      private function §@r§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§80§.length)
         {
            _loc2_ = this.§&q§.x + this.§80§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§80§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§80§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§80§[_loc1_].mClip.alpha < 1)
            {
               (this.§80§[_loc1_] as §1e§).setEnabled(false);
            }
            else
            {
               (this.§80§[_loc1_] as §1e§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!C§();
         (§=!I§.getItemByName("Button_Back") as §29§).setComponentVisualState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2!%§.§-d§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§!V§)
         {
            this.§!V§.stop();
            this.§!V§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param2.length > 0 && param3 is §<h§)
         {
            if((param3 as §<h§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §<h§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§ c§)
               {
                  if(§@2§.§ case§(param2))
                  {
                     §2!%§.§4y§(§2!%§.§4D§(param2.toLowerCase()));
                     mNextState = StateCutScene.§^!O§;
                  }
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@E§.playSound("Menu_Back");
               mNextState = §`$§.§^!O§;
               break;
            case "NEXT":
               this.§7!]§();
               break;
            case "PREV":
               this.§`2§();
               break;
            case "FULLSCREEN_BUTTON":
               §@E§.playSound("Menu_Confirm");
         }
      }
      
      private function §7!]§() : void
      {
         §@E§.playSound("Menu_Confirm");
         if(!this.§ c§)
         {
            ++this.§?,§;
            this.§3W§(this.§?,§);
         }
      }
      
      private function §`2§() : void
      {
         §@E§.playSound("Menu_Confirm");
         if(!this.§ c§)
         {
            --this.§?,§;
            this.§3W§(this.§?,§);
         }
      }
      
      public function § !Q§() : void
      {
         var _loc8_:Array = null;
         var _loc1_:Number = 0;
         this.§[m§ = [];
         this.§@!5§ = [];
         this.§?,§ = §2!%§.§<3§(§2!%§.§[!=§).§>!L§;
         this.§5!c§ = this.§?,§;
         this.§=!-§ = this.§?,§;
         var _loc2_:§^v§ = §2!%§.§<3§(§2!%§.§[!=§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc8_ = _loc2_.§5!D§(_loc2_.pageIndexes[_loc3_]);
            this.§[m§.push(_loc2_.§8!_§(_loc3_));
            this.§@!5§.push(_loc2_.§ !J§(_loc3_));
            _loc1_ = this.§!!O§(_loc8_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§]!]§ = new §@R§(this.§[m§[this.§?,§].red,this.§[m§[this.§?,§].green,this.§[m§[this.§?,§].blue,1);
         §=!I§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§]!]§);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §'h§.§`E§(_loc2_.§5!X§))();
         var _loc6_:Class;
         var _loc7_:MovieClip = new (_loc6_ = §'h§.§`E§(_loc2_.§&-§))();
         §=!I§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc5_);
         §=!I§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc7_);
         this.§7@§();
         if(§"!?§ == StateCutScene.§^!O§)
         {
            §"!?§ = "";
            this.§3W§(this.§=!-§);
         }
         else
         {
            this.§3W§(this.§?,§,true);
         }
      }
      
      private function §!!O§(param1:Array, param2:int, param3:Number, param4:§^v§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §'h§.§`E§(this.§@!5§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §6T§.§>c§.§>!b§(_loc10_);
            _loc12_ = this.§+@§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §6T§.§2H§)
            {
               _loc13_.@MouseUp = _loc10_;
            }
            _loc13_.@scaleOnMouseOver = "True";
            _loc5_[0].push(new Array(_loc13_,null,_loc12_));
            if(_loc11_)
            {
               _loc12_.MovieClip_Stars.mouseEnabled = false;
            }
            _loc12_.TextField_LevelNum.text.mouseEnabled = false;
            _loc7_++;
         }
         (_loc8_ = <Repeater/>).@name = "Repeater_LevelSelection";
         _loc8_.@button = this.§@!5§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§1e§;
         (_loc9_ = new §1e§(_loc8_,this.§&q§,null,null)).§<!U§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§&q§.addComponent(_loc9_);
         this.§80§.push(_loc9_);
         return Number(param3 + §6T§.§,x§);
      }
      
      protected function §+@§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§6T§.§>c§.§^!'§(param1) == 100)
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Visible");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
            else
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
         }
         else
         {
            _loc6_.gotoAndStop("Locked");
         }
         _loc6_.isOpen = param2;
         if(param2)
         {
            _loc7_ = §6T§.§>c§.§[!X§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      private function §7@§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§80§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§4!X§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§80§.length)
         {
            _loc1_ = §'h§.§`E§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §6T§.§,x§ / 2 + _loc3_ - this.§80§.length * _loc2_.width / 2;
            _loc2_.y = (§=!I§.getItemByName("Button_Next") as §29§).y - _loc2_.height / 2;
            if(_loc4_ == this.§?,§)
            {
               _loc2_.gotoAndStop("Selected");
               (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).x = _loc2_.x;
               (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).y = _loc2_.y - _loc2_.height;
               this.§=W§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§26§.mClip.addChild(_loc2_);
            this.§4!X§[_loc2_] = _loc4_;
            this.§-G§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[Z§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§80§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§=!I§.getItemByName("Button_Next") as §29§).x = §6T§.§,x§ / 2;
         (§=!I§.getItemByName("Button_Prev") as §29§).x = §6T§.§,x§ / 2;
         (§=!I§.getItemByName("Button_Next") as §29§).x = (§=!I§.getItemByName("Button_Next") as §29§).x + (_loc3_ + 10);
         (§=!I§.getItemByName("Button_Prev") as §29§).x = (§=!I§.getItemByName("Button_Prev") as §29§).x - (_loc3_ + 10);
      }
      
      private function §-!C§() : void
      {
         this.§]!]§.clean();
         var _loc1_:int = 0;
         while(_loc1_ < this.§-G§.length)
         {
            if(this.§26§.mClip.contains(this.§-G§[_loc1_]))
            {
               this.§-G§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§[Z§);
               this.§26§.mClip.removeChild(this.§-G§[_loc1_]);
            }
            _loc1_++;
         }
         this.§-G§ = [];
         while(this.§&q§.mClip.numChildren > 0)
         {
            this.§&q§.mClip.removeChildAt(0);
         }
         this.§80§ = [];
      }
      
      private function §[Z§(param1:MouseEvent) : void
      {
         if(!this.§ c§)
         {
            this.§3W§(this.§4!X§[param1.target]);
         }
      }
      
      private function § n§(param1:MouseEvent) : void
      {
         if(!this.§ c§)
         {
            mNextState = §;!S§.§^!O§;
         }
      }
      
      private function §3W§(param1:int, param2:Boolean = false) : void
      {
         this.§ c§ = true;
         if(param1 > this.§80§.length - 1)
         {
            param1 = this.§80§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?,§ = param1;
         if(this.§?,§ > this.§=!-§)
         {
            this.§5!c§ = this.§=!-§ + 1;
         }
         else if(this.§?,§ < this.§=!-§)
         {
            this.§5!c§ = this.§=!-§ - 1;
         }
         var _loc3_:Number = -this.§80§[param1].x;
         var _loc4_:Number = this.§80§[param1].x + this.§&q§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §%"§;
         if(this.§!V§ != null)
         {
            this.§!V§.stop();
         }
         if(param2)
         {
            this.§&q§.x = _loc3_;
         }
         else
         {
            this.§!V§ = §;!a§.§0%§.§,w§(this.§&q§,{"x":_loc3_},null,_loc5_,§;!a§.§"d§);
            this.§!V§.onComplete = this.§]!S§;
         }
         if(param2)
         {
            this.§]!S§();
         }
         else
         {
            this.§!V§.play();
         }
      }
      
      private function §]!S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§-G§.length)
         {
            if(_loc1_ == this.§?,§)
            {
               this.§-G§[_loc1_].gotoAndStop("Selected");
               (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).x = this.§-G§[_loc1_].x;
               this.§=W§(_loc1_);
            }
            else
            {
               this.§-G§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§ c§ = false;
         §2!%§.§<3§(§2!%§.§[!=§).§>!L§ = this.§?,§;
      }
      
      protected function §=W§(param1:int) : void
      {
         (§=!I§.getItemByName("TextField_LevelNumberSmall") as §#u§).§=J§.text = §2!%§.§<3§(§2!%§.§[!=§).pageIndexes[param1];
      }
   }
}
