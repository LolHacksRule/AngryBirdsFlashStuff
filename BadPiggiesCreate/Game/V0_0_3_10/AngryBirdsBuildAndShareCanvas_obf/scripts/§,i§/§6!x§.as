package §,i§
{
   import §0!d§.§!!y§;
   import §0!d§.§+J§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§ !e§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§'X§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §]!X§.§?7§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!x§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelSelectionState";
      
      protected static const §8!Y§:Number = 0.5;
      
      public static var §<!F§:String = "";
       
      
      protected var § use§:Boolean = false;
      
      protected var §++§:§7!a§;
      
      protected var §5"'§:§7!a§;
      
      protected var §6Q§:MovieClip;
      
      protected var §6<§:Array;
      
      protected var §5!0§:Array;
      
      protected var §%%§:int = 0;
      
      protected var §2!l§:int = 0;
      
      protected var §`!$§:int = 0;
      
      protected var §#1§:Boolean = false;
      
      protected var §=!@§:§^F§ = null;
      
      protected var §]u§:Dictionary;
      
      protected var §;!,§:Array;
      
      protected var §=!e§:Array;
      
      protected var §`H§:§?7§;
      
      protected var §`"5§:Number = 0;
      
      public function §6!x§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§7J§();
         while(this.§5"'§.mClip.numChildren > 0)
         {
            this.§5"'§.mClip.removeChildAt(0);
         }
         this.§5!0§ = [];
         this.§6<§ = [];
      }
      
      protected function §7J§() : void
      {
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelSelection[0]);
         this.§5"'§ = §'K§.getItemByName("Container_LevelRepeaters") as §7!a§;
         this.§++§ = §'K§.getItemByName("Container_LevelSelection") as §7!a§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!V§.§!j§.clearLevel();
         §"!V§.§!j§.§9!q§(false);
         this.§%!v§();
         this.§-"5§();
         if(this.§5!0§.length == 1)
         {
            (§'K§.getItemByName("Button_Prev") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_Next") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).setVisibility(false);
         }
         else
         {
            (§'K§.getItemByName("Button_Prev") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_Next") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).setVisibility(true);
         }
         this.§`"5§ = this.§5"'§.x;
         if(§'K§.stage)
         {
            §'K§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[!Q§);
         }
      }
      
      protected function §-"5§() : void
      {
         AngryBirdsFP11.§-"5§();
      }
      
      protected function §[!Q§(param1:KeyboardEvent) : void
      {
         if(this.§5!0§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§,L§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§1!B§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§finally§();
         this.§'<§();
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      protected function §finally§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6<§.length)
         {
            if(-this.§5"'§.x >= this.§5!0§[_loc1_].x && -this.§`"5§ < this.§5!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6<§.length)
               {
                  this.§6<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`!$§ = _loc1_;
               this.§6<§[_loc1_].gotoAndStop("Selected");
               (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).x = this.§6<§[_loc1_].x;
               this.§``§(_loc1_);
            }
            if(-this.§5"'§.x <= this.§5!0§[_loc1_].x && -this.§`"5§ > this.§5!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6<§.length)
               {
                  this.§6<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`!$§ = _loc1_;
               this.§6<§[_loc1_].gotoAndStop("Selected");
               (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).x = this.§6<§[_loc1_].x;
               this.§``§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§`!$§ != this.§%%§)
         {
            if(this.§%%§ > this.§`!$§)
            {
               this.§2!l§ = this.§`!$§ + 1;
            }
            else if(this.§%%§ < this.§`!$§)
            {
               this.§2!l§ = this.§`!$§ - 1;
            }
            else
            {
               this.§2!l§ = this.§`!$§;
            }
            if(this.§;!,§[this.§2!l§])
            {
               this.§`H§.§+3§(this.§;!,§[this.§2!l§].red,this.§;!,§[this.§2!l§].green,this.§;!,§[this.§2!l§].blue);
            }
         }
         this.§`"5§ = this.§5"'§.x;
      }
      
      protected function §'<§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!0§.length)
         {
            _loc2_ = this.§5"'§.x + this.§5!0§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§5!0§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§5!0§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§5!0§[_loc1_].mClip.alpha < 1)
            {
               (this.§5!0§[_loc1_] as §'X§).setEnabled(false);
            }
            else
            {
               (this.§5!0§[_loc1_] as §'X§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§'K§.stage)
         {
            §'K§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[!Q§);
         }
         super.deActivate();
         this.§+!K§();
         (§'K§.getItemByName("Button_Back") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §"?§.§5O§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§=!@§)
         {
            this.§=!@§.stop();
            this.§=!@§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         if(param2.length > 0 && param3 is §!!y§)
         {
            if((param3 as §!!y§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §!!y§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§#1§)
               {
                  §"?§.loadLevel(§"?§.§4?§(param2.toLowerCase()));
                  mNextState = StateCutScene.§]"2§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               § !x§.playSound("Menu_Back");
               mNextState = §4<§.§]"2§;
               break;
            case "NEXT":
               this.§1!B§();
               break;
            case "PREV":
               this.§,L§();
               break;
            case "FULLSCREEN_BUTTON":
               § !x§.playSound("Menu_Confirm");
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      protected function §1!B§() : void
      {
         § !x§.playSound("Menu_Confirm");
         if(!this.§#1§)
         {
            ++this.§%%§;
            this.§9X§(this.§%%§);
         }
      }
      
      protected function §,L§() : void
      {
         § !x§.playSound("Menu_Confirm");
         if(!this.§#1§)
         {
            --this.§%%§;
            this.§9X§(this.§%%§);
         }
      }
      
      public function §%!v§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§;!,§ = [];
         this.§=!e§ = [];
         this.§%%§ = §"?§.§3!X§(§"?§.§]"0§).§@w§;
         this.§2!l§ = this.§%%§;
         this.§`!$§ = this.§%%§;
         var _loc2_:§ !e§ = §"?§.§3!X§(§"?§.§]"0§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§+p§(_loc2_.pageIndexes[_loc3_]);
            this.§;!,§.push(_loc2_.§9!A§(_loc3_));
            this.§=!e§.push(_loc2_.§ S§(_loc3_));
            _loc1_ = this.§3!e§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§`H§ = new §?7§(this.§;!,§[this.§%%§].red,this.§;!,§[this.§%%§].green,this.§;!,§[this.§%%§].blue,1);
         §'K§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§`H§);
         if(_loc2_.§<"8§)
         {
            _loc6_ = new (_loc5_ = §5!+§.§,]§(_loc2_.§<"8§))();
            §'K§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §'K§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§5"-§)
         {
            _loc8_ = new (_loc7_ = §5!+§.§,]§(_loc2_.§5"-§))();
            §'K§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §'K§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§[!9§();
         if(§<!F§ == StateCutScene.§]"2§)
         {
            §<!F§ = "";
            this.§9X§(this.§`!$§);
         }
         else
         {
            this.§9X§(this.§%%§,true);
         }
      }
      
      protected function §3!e§(param1:Array, param2:int, param3:Number, param4:§ !e§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §5!+§.§,]§(this.§=!e§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§<U§.§0u§(_loc10_);
            _loc12_ = this.§!"3§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§2!_§)
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
         _loc8_ = <Repeater/>;
         if(param1.length == 15 || param1.length == 10)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§=!e§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§+J§;
         (_loc9_ = new §+J§(_loc8_,this.§5"'§,null,null)).§"9§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§5"'§.§2!%§(_loc9_);
         this.§5!0§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§#"8§);
      }
      
      protected function §!"3§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§<U§.§,[§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§<U§.§!!q§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §[!9§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§5!0§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§]u§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§5!0§.length)
         {
            _loc1_ = §5!+§.§,]§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§#"8§ / 2 + _loc3_ - this.§5!0§.length * _loc2_.width / 2;
            _loc2_.y = (§'K§.getItemByName("Button_Next") as §8!r§).y - _loc2_.height / 2;
            if(_loc4_ == this.§%%§)
            {
               _loc2_.gotoAndStop("Selected");
               (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).x = _loc2_.x;
               (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).y = _loc2_.y - _loc2_.height;
               this.§``§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§++§.mClip.addChild(_loc2_);
            this.§]u§[_loc2_] = _loc4_;
            this.§6<§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§"7§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§5!0§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§'K§.getItemByName("Button_Next") as §8!r§).x = AngryBirdsFP11.§#"8§ / 2;
         (§'K§.getItemByName("Button_Prev") as §8!r§).x = AngryBirdsFP11.§#"8§ / 2;
         (§'K§.getItemByName("Button_Next") as §8!r§).x = (§'K§.getItemByName("Button_Next") as §8!r§).x + (_loc3_ + 10);
         (§'K§.getItemByName("Button_Prev") as §8!r§).x = (§'K§.getItemByName("Button_Prev") as §8!r§).x - (_loc3_ + 10);
      }
      
      protected function §+!K§() : void
      {
         if(this.§`H§)
         {
            this.§`H§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§6<§.length)
         {
            if(this.§++§.mClip.contains(this.§6<§[_loc1_]))
            {
               this.§6<§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§"7§);
               this.§++§.mClip.removeChild(this.§6<§[_loc1_]);
            }
            _loc1_++;
         }
         this.§6<§ = [];
         while(this.§5"'§.mClip.numChildren > 0)
         {
            this.§5"'§.mClip.removeChildAt(0);
         }
         this.§5!0§ = [];
      }
      
      protected function §"7§(param1:MouseEvent) : void
      {
         if(!this.§#1§)
         {
            this.§9X§(this.§]u§[param1.target]);
         }
      }
      
      protected function §`!`§(param1:MouseEvent) : void
      {
         if(!this.§#1§)
         {
            mNextState = §6!x§.§]"2§;
         }
      }
      
      protected function §9X§(param1:int, param2:Boolean = false) : void
      {
         this.§#1§ = true;
         if(param1 > this.§5!0§.length - 1)
         {
            param1 = this.§5!0§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%%§ = param1;
         if(this.§%%§ > this.§`!$§)
         {
            this.§2!l§ = this.§`!$§ + 1;
         }
         else if(this.§%%§ < this.§`!$§)
         {
            this.§2!l§ = this.§`!$§ - 1;
         }
         var _loc3_:Number = -this.§5!0§[param1].x;
         var _loc4_:Number = this.§5!0§[param1].x + this.§5"'§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §8!Y§;
         if(this.§=!@§ != null)
         {
            this.§=!@§.stop();
         }
         if(param2)
         {
            this.§5"'§.x = _loc3_;
         }
         else
         {
            this.§=!@§ = §<y§.§,l§.§]!C§(this.§5"'§,{"x":_loc3_},null,_loc5_,§<y§.§-!]§);
            this.§=!@§.onComplete = this.§`!a§;
         }
         if(param2)
         {
            this.§`!a§();
         }
         else
         {
            this.§=!@§.play();
         }
      }
      
      protected function §`!a§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6<§.length)
         {
            if(_loc1_ == this.§%%§)
            {
               this.§6<§[_loc1_].gotoAndStop("Selected");
               (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).x = this.§6<§[_loc1_].x;
               this.§``§(_loc1_);
            }
            else
            {
               this.§6<§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§#1§ = false;
         §"?§.§3!X§(§"?§.§]"0§).§@w§ = this.§%%§;
      }
      
      protected function §``§(param1:int) : void
      {
         (§'K§.getItemByName("TextField_LevelNumberSmall") as §`G§).§?B§.text = §"?§.§3!X§(§"?§.§]"0§).pageIndexes[param1];
      }
   }
}
