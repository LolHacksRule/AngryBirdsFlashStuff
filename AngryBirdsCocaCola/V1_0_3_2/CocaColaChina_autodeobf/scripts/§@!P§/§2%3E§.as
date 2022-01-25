package §@!P§
{
   import § !9§.§'!U§;
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §!!a§.§^!>§;
   import §'b§.§&X§;
   import §'b§.§'!$§;
   import §'b§.§'^§;
   import §'b§.§0!D§;
   import §'b§.§6!-§;
   import §-!9§.§3!5§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§?O§;
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §6l§.§ l§;
   import §6l§.§#!Z§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §`!7§.§[5§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §2>§ extends §3!%§
   {
      
      public static const §'2§:String = "LevelSelectionState";
      
      private static const §6a§:Number = 0.5;
      
      public static var §?t§:String = "";
       
      
      private var §;T§:Boolean = false;
      
      private var §6!2§:§'^§;
      
      private var §"!C§:§'^§;
      
      private var §85§:MovieClip;
      
      private var §?!S§:Array;
      
      private var §4I§:Array;
      
      private var §>!'§:int = 0;
      
      private var §,p§:int = 0;
      
      private var §=I§:int = 0;
      
      private var §@G§:Boolean = false;
      
      private var §1_§:§]&§ = null;
      
      private var §;!9§:Dictionary;
      
      private var §;h§:Array;
      
      private var §9t§:Array;
      
      private var §&!B§:§?O§;
      
      private var §5!]§:Number = 0;
      
      public function §2>§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#j§ = new §?O§(41,118,142,1);
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelSelection[0]);
         this.§"!C§ = §+!`§.getItemByName("Container_LevelRepeaters") as §'^§;
         this.§6!2§ = §+!`§.getItemByName("Container_LevelSelection") as §'^§;
         while(this.§"!C§.mClip.numChildren > 0)
         {
            this.§"!C§.mClip.removeChildAt(0);
         }
         this.§4I§ = [];
         this.§?!S§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         §=i§.§0!U§ = §'2§;
         §"n§.§[b§.clearLevel();
         §"n§.§[b§.§+!U§(false);
         §"n§.§[b§.§9'§(false);
         this.§2!%§();
         §=i§.§ !A§();
         if(this.§4I§.length == 1)
         {
            (§+!`§.getItemByName("Button_Prev") as §0!D§).setVisibility(false);
            (§+!`§.getItemByName("Button_Next") as §0!D§).setVisibility(false);
            (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).setVisibility(false);
         }
         else
         {
            (§+!`§.getItemByName("Button_Prev") as §0!D§).setVisibility(true);
            (§+!`§.getItemByName("Button_Next") as §0!D§).setVisibility(true);
            (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).setVisibility(true);
         }
         var _loc1_:§^!>§ = §9G§.§8o§();
         §+!`§.setText(§=i§.§2S§.§1B§(_loc1_) + "/" + §=i§.§2S§.§1!H§(_loc1_),"Textfield_CollectedStars");
         this.§5!]§ = this.§"!C§.x;
      }
      
      override protected function setInitialState() : void
      {
         §@<§.changeState(HighscoreSidebar.§%A§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?!>§();
         this.§-!4§();
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      private function §?!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!S§.length)
         {
            if(-this.§"!C§.x >= this.§4I§[_loc1_].x && -this.§5!]§ < this.§4I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?!S§.length)
               {
                  this.§?!S§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=I§ = _loc1_;
               this.§?!S§[_loc1_].gotoAndStop("Selected");
               (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).x = this.§?!S§[_loc1_].x;
               this.§`X§(_loc1_);
            }
            if(-this.§"!C§.x <= this.§4I§[_loc1_].x && -this.§5!]§ > this.§4I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?!S§.length)
               {
                  this.§?!S§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=I§ = _loc1_;
               this.§?!S§[_loc1_].gotoAndStop("Selected");
               (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).x = this.§?!S§[_loc1_].x;
               this.§`X§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§=I§ != this.§>!'§)
         {
            if(this.§>!'§ > this.§=I§)
            {
               this.§,p§ = this.§=I§ + 1;
            }
            else if(this.§>!'§ < this.§=I§)
            {
               this.§,p§ = this.§=I§ - 1;
            }
            else
            {
               this.§,p§ = this.§=I§;
            }
            this.§&!B§.§!Z§(this.§;h§[this.§,p§].red,this.§;h§[this.§,p§].green,this.§;h§[this.§,p§].blue);
         }
         this.§5!]§ = this.§"!C§.x;
      }
      
      private function §-!4§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4I§.length)
         {
            _loc2_ = this.§"!C§.x + this.§4I§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§4I§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§4I§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§4I§[_loc1_].mClip.alpha < 1)
            {
               (this.§4I§[_loc1_] as §'!$§).setEnabled(false);
            }
            else
            {
               (this.§4I§[_loc1_] as §'!$§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!#§();
         (§+!`§.getItemByName("Button_Back") as §0!D§).setComponentVisualState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §9G§.§7T§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§1_§)
         {
            this.§1_§.stop();
            this.§1_§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param2.length > 0 && param3 is §&X§)
         {
            if((param3 as §&X§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §&X§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§@G§)
               {
                  if(§[5§.§!_§(param2))
                  {
                     §9G§.§%^§(§9G§.§,! §(param2.toLowerCase()));
                     mNextState = StateCutScene.§'2§;
                  }
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §'!U§.playSound("Menu_Back");
               mNextState = §;"§.§'2§;
               break;
            case "NEXT":
               this.§?R§();
               break;
            case "PREV":
               this.§in§();
               break;
            case "FULLSCREEN_BUTTON":
               §'!U§.playSound("Menu_Confirm");
         }
      }
      
      private function §?R§() : void
      {
         §'!U§.playSound("Menu_Confirm");
         if(!this.§@G§)
         {
            ++this.§>!'§;
            this.§7@§(this.§>!'§);
         }
      }
      
      private function §in§() : void
      {
         §'!U§.playSound("Menu_Confirm");
         if(!this.§@G§)
         {
            --this.§>!'§;
            this.§7@§(this.§>!'§);
         }
      }
      
      public function §2!%§() : void
      {
         var _loc8_:Array = null;
         var _loc1_:Number = 0;
         this.§;h§ = [];
         this.§9t§ = [];
         this.§>!'§ = §9G§.§68§(§9G§.§=!1§).§`=§;
         this.§,p§ = this.§>!'§;
         this.§=I§ = this.§>!'§;
         var _loc2_:§^!>§ = §9G§.§68§(§9G§.§=!1§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc8_ = _loc2_.§`&§(_loc2_.pageIndexes[_loc3_]);
            this.§;h§.push(_loc2_.§^G§(_loc3_));
            this.§9t§.push(_loc2_.§#!D§(_loc3_));
            _loc1_ = this.§!![§(_loc8_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§&!B§ = new §?O§(this.§;h§[this.§>!'§].red,this.§;h§[this.§>!'§].green,this.§;h§[this.§>!'§].blue,1);
         §+!`§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§&!B§);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §3!5§.§9g§(_loc2_.§%"§))();
         var _loc6_:Class;
         var _loc7_:MovieClip = new (_loc6_ = §3!5§.§9g§(_loc2_.§,s§))();
         §+!`§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc5_);
         §+!`§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc7_);
         this.§-!F§();
         if(§?t§ == StateCutScene.§'2§)
         {
            §?t§ = "";
            this.§7@§(this.§=I§);
         }
         else
         {
            this.§7@§(this.§>!'§,true);
         }
      }
      
      private function §!![§(param1:Array, param2:int, param3:Number, param4:§^!>§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §3!5§.§9g§(this.§9t§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §=i§.§2S§.§,D§(_loc10_);
            _loc12_ = this.§<0§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §=i§.§2!@§)
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
         _loc8_.@button = this.§9t§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§'!$§;
         (_loc9_ = new §'!$§(_loc8_,this.§"!C§,null,null)).§`!H§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§"!C§.addComponent(_loc9_);
         this.§4I§.push(_loc9_);
         return Number(param3 + §=i§.§'0§);
      }
      
      protected function §<0§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§=i§.§2S§.§32§(param1) == 100)
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
            _loc7_ = §=i§.§2S§.§4! §(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      private function §-!F§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§4I§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§;!9§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§4I§.length)
         {
            _loc1_ = §3!5§.§9g§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §=i§.§'0§ / 2 + _loc3_ - this.§4I§.length * _loc2_.width / 2;
            _loc2_.y = (§+!`§.getItemByName("Button_Next") as §0!D§).y - _loc2_.height / 2;
            if(_loc4_ == this.§>!'§)
            {
               _loc2_.gotoAndStop("Selected");
               (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).x = _loc2_.x;
               (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).y = _loc2_.y - _loc2_.height;
               this.§`X§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§6!2§.mClip.addChild(_loc2_);
            this.§;!9§[_loc2_] = _loc4_;
            this.§?!S§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,g§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§4I§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!`§.getItemByName("Button_Next") as §0!D§).x = §=i§.§'0§ / 2;
         (§+!`§.getItemByName("Button_Prev") as §0!D§).x = §=i§.§'0§ / 2;
         (§+!`§.getItemByName("Button_Next") as §0!D§).x = (§+!`§.getItemByName("Button_Next") as §0!D§).x + (_loc3_ + 10);
         (§+!`§.getItemByName("Button_Prev") as §0!D§).x = (§+!`§.getItemByName("Button_Prev") as §0!D§).x - (_loc3_ + 10);
      }
      
      private function §0!#§() : void
      {
         this.§&!B§.clean();
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!S§.length)
         {
            if(this.§6!2§.mClip.contains(this.§?!S§[_loc1_]))
            {
               this.§?!S§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§,g§);
               this.§6!2§.mClip.removeChild(this.§?!S§[_loc1_]);
            }
            _loc1_++;
         }
         this.§?!S§ = [];
         while(this.§"!C§.mClip.numChildren > 0)
         {
            this.§"!C§.mClip.removeChildAt(0);
         }
         this.§4I§ = [];
      }
      
      private function §,g§(param1:MouseEvent) : void
      {
         if(!this.§@G§)
         {
            this.§7@§(this.§;!9§[param1.target]);
         }
      }
      
      private function §8@§(param1:MouseEvent) : void
      {
         if(!this.§@G§)
         {
            mNextState = §2>§.§'2§;
         }
      }
      
      private function §7@§(param1:int, param2:Boolean = false) : void
      {
         this.§@G§ = true;
         if(param1 > this.§4I§.length - 1)
         {
            param1 = this.§4I§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§>!'§ = param1;
         if(this.§>!'§ > this.§=I§)
         {
            this.§,p§ = this.§=I§ + 1;
         }
         else if(this.§>!'§ < this.§=I§)
         {
            this.§,p§ = this.§=I§ - 1;
         }
         var _loc3_:Number = -this.§4I§[param1].x;
         var _loc4_:Number = this.§4I§[param1].x + this.§"!C§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §6a§;
         if(this.§1_§ != null)
         {
            this.§1_§.stop();
         }
         if(param2)
         {
            this.§"!C§.x = _loc3_;
         }
         else
         {
            this.§1_§ = §8h§.§`G§.§[O§(this.§"!C§,{"x":_loc3_},null,_loc5_,§8h§.§var §);
            this.§1_§.onComplete = this.§8!3§;
         }
         if(param2)
         {
            this.§8!3§();
         }
         else
         {
            this.§1_§.play();
         }
      }
      
      private function §8!3§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!S§.length)
         {
            if(_loc1_ == this.§>!'§)
            {
               this.§?!S§[_loc1_].gotoAndStop("Selected");
               (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).x = this.§?!S§[_loc1_].x;
               this.§`X§(_loc1_);
            }
            else
            {
               this.§?!S§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§@G§ = false;
         §9G§.§68§(§9G§.§=!1§).§`=§ = this.§>!'§;
      }
      
      protected function §`X§(param1:int) : void
      {
         (§+!`§.getItemByName("TextField_LevelNumberSmall") as §6!-§).§`!C§.text = §9G§.§68§(§9G§.§=!1§).pageIndexes[param1];
      }
   }
}
