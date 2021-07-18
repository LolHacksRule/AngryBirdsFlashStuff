package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§ else§;
   import §"!E§.§#!'§;
   import §"!E§.§;!j§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §?&§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §%!V§:Number = 0.5;
      
      public static var §3d§:String = "";
       
      
      protected var §#!<§:Boolean = false;
      
      protected var §+Q§:§[!s§;
      
      protected var §&!l§:§[!s§;
      
      protected var §%!B§:MovieClip;
      
      protected var §<!^§:Array;
      
      protected var §0![§:Array;
      
      protected var §#!2§:int = 0;
      
      protected var §,!@§:int = 0;
      
      protected var §%<§:int = 0;
      
      protected var §<!v§:Boolean = false;
      
      protected var §7!Z§:§0Y§ = null;
      
      protected var §>!5§:Dictionary;
      
      protected var §>i§:Array;
      
      protected var §%U§:Array;
      
      protected var §7H§:§%!Y§;
      
      protected var §"!d§:Number = 0;
      
      public function §?&§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§=!c§();
         while(this.§&!l§.mClip.numChildren > 0)
         {
            this.§&!l§.mClip.removeChildAt(0);
         }
         this.§0![§ = [];
         this.§<!^§ = [];
      }
      
      protected function §=!c§() : void
      {
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelSelection[0]);
         this.§&!l§ = §+!$§.getItemByName("Container_LevelRepeaters") as §[!s§;
         this.§+Q§ = §+!$§.getItemByName("Container_LevelSelection") as §[!s§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.§1!2§.clearLevel();
         §'!V§.§1!2§.§-I§(false);
         this.each();
         AngryBirdsFP11.§?!7§();
         if(this.§0![§.length == 1)
         {
            (§+!$§.getItemByName("Button_Prev") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_Next") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).setVisibility(false);
         }
         else
         {
            (§+!$§.getItemByName("Button_Prev") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_Next") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).setVisibility(true);
         }
         this.§"!d§ = this.§&!l§.x;
         if(§+!$§.stage)
         {
            §+!$§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§3!7§);
         }
      }
      
      protected function §3!7§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§<o§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§0!N§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7!>§();
         this.§]!8§();
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      protected function §7!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(-this.§&!l§.x >= this.§0![§[_loc1_].x && -this.§"!d§ < this.§0![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%<§ = _loc1_;
               this.§<!^§[_loc1_].gotoAndStop("Selected");
               (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
               this.§4!k§(_loc1_);
            }
            if(-this.§&!l§.x <= this.§0![§[_loc1_].x && -this.§"!d§ > this.§0![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%<§ = _loc1_;
               this.§<!^§[_loc1_].gotoAndStop("Selected");
               (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
               this.§4!k§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§%<§ != this.§#!2§)
         {
            if(this.§#!2§ > this.§%<§)
            {
               this.§,!@§ = this.§%<§ + 1;
            }
            else if(this.§#!2§ < this.§%<§)
            {
               this.§,!@§ = this.§%<§ - 1;
            }
            else
            {
               this.§,!@§ = this.§%<§;
            }
            this.§7H§.§+8§(this.§>i§[this.§,!@§].red,this.§>i§[this.§,!@§].green,this.§>i§[this.§,!@§].blue);
         }
         this.§"!d§ = this.§&!l§.x;
      }
      
      protected function §]!8§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0![§.length)
         {
            _loc2_ = this.§&!l§.x + this.§0![§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§0![§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§0![§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§0![§[_loc1_].mClip.alpha < 1)
            {
               (this.§0![§[_loc1_] as §?j§).setEnabled(false);
            }
            else
            {
               (this.§0![§[_loc1_] as §?j§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§+!$§.stage)
         {
            §+!$§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§3!7§);
         }
         super.deActivate();
         this.§'![§();
         (§+!$§.getItemByName("Button_Back") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §1^§.§3W§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§7!Z§)
         {
            this.§7!Z§.stop();
            this.§7!Z§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         if(param2.length > 0 && param3 is § else§)
         {
            if((param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§<!v§)
               {
                  §1^§.loadLevel(§1^§.§=h§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §+!§.§4c§("Menu_Back");
               mNextState = §9!h§.STATE_NAME;
               break;
            case "NEXT":
               this.§0!N§();
               break;
            case "PREV":
               this.§<o§();
               break;
            case "FULLSCREEN_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      protected function §0!N§() : void
      {
         §+!§.§4c§("Menu_Confirm");
         if(!this.§<!v§)
         {
            ++this.§#!2§;
            this.§@!h§(this.§#!2§);
         }
      }
      
      protected function §<o§() : void
      {
         §+!§.§4c§("Menu_Confirm");
         if(!this.§<!v§)
         {
            --this.§#!2§;
            this.§@!h§(this.§#!2§);
         }
      }
      
      public function each() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§>i§ = [];
         this.§%U§ = [];
         this.§#!2§ = §1^§.§?!0§(§1^§.§<J§).§2!%§;
         this.§,!@§ = this.§#!2§;
         this.§%<§ = this.§#!2§;
         var _loc2_:§4!N§ = §1^§.§?!0§(§1^§.§<J§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§1S§(_loc2_.pageIndexes[_loc3_]);
            this.§>i§.push(_loc2_.§6!%§(_loc3_));
            this.§%U§.push(_loc2_.§,!X§(_loc3_));
            _loc1_ = this.§ ,§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§7H§ = new §%!Y§(this.§>i§[this.§#!2§].red,this.§>i§[this.§#!2§].green,this.§>i§[this.§#!2§].blue,1);
         §+!$§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§7H§);
         if(_loc2_.§!!6§)
         {
            _loc6_ = new (_loc5_ = §1F§.§"!_§(_loc2_.§!!6§))();
            §+!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §+!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§1!§)
         {
            _loc8_ = new (_loc7_ = §1F§.§"!_§(_loc2_.§1!§))();
            §+!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §+!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§"H§();
         if(§3d§ == StateCutScene.STATE_NAME)
         {
            §3d§ = "";
            this.§@!h§(this.§%<§);
         }
         else
         {
            this.§@!h§(this.§#!2§,true);
         }
      }
      
      protected function § ,§(param1:Array, param2:int, param3:Number, param4:§4!N§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §1F§.§"!_§(this.§%U§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§]!'§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§>!q§)
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
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§%U§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§?j§;
         (_loc9_ = new §?j§(_loc8_,this.§&!l§,null,null)).§<!u§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§&!l§.§9!k§(_loc9_);
         this.§0![§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §]!'§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§8!O§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§"!%§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §"H§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§0![§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§>!5§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§0![§.length)
         {
            _loc1_ = §1F§.§"!_§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§0![§.length * _loc2_.width / 2;
            _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
            if(_loc4_ == this.§#!2§)
            {
               _loc2_.gotoAndStop("Selected");
               (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = _loc2_.x;
               (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).y = _loc2_.y - _loc2_.height;
               this.§4!k§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§+Q§.mClip.addChild(_loc2_);
            this.§>!5§[_loc2_] = _loc4_;
            this.§<!^§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§0![§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
      }
      
      protected function §'![§() : void
      {
         if(this.§7H§)
         {
            this.§7H§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(this.§+Q§.mClip.contains(this.§<!^§[_loc1_]))
            {
               this.§<!^§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
               this.§+Q§.mClip.removeChild(this.§<!^§[_loc1_]);
            }
            _loc1_++;
         }
         this.§<!^§ = [];
         while(this.§&!l§.mClip.numChildren > 0)
         {
            this.§&!l§.mClip.removeChildAt(0);
         }
         this.§0![§ = [];
      }
      
      protected function §3!M§(param1:MouseEvent) : void
      {
         if(!this.§<!v§)
         {
            this.§@!h§(this.§>!5§[param1.target]);
         }
      }
      
      protected function §9!&§(param1:MouseEvent) : void
      {
         if(!this.§<!v§)
         {
            mNextState = §?&§.STATE_NAME;
         }
      }
      
      protected function §@!h§(param1:int, param2:Boolean = false) : void
      {
         this.§<!v§ = true;
         if(param1 > this.§0![§.length - 1)
         {
            param1 = this.§0![§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#!2§ = param1;
         if(this.§#!2§ > this.§%<§)
         {
            this.§,!@§ = this.§%<§ + 1;
         }
         else if(this.§#!2§ < this.§%<§)
         {
            this.§,!@§ = this.§%<§ - 1;
         }
         var _loc3_:Number = -this.§0![§[param1].x;
         var _loc4_:Number = this.§0![§[param1].x + this.§&!l§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §%!V§;
         if(this.§7!Z§ != null)
         {
            this.§7!Z§.stop();
         }
         if(param2)
         {
            this.§&!l§.x = _loc3_;
         }
         else
         {
            this.§7!Z§ = §@!T§.§`!t§.§8!"§(this.§&!l§,{"x":_loc3_},null,_loc5_,§@!T§.§2,§);
            this.§7!Z§.onComplete = this.§]!"§;
         }
         if(param2)
         {
            this.§]!"§();
         }
         else
         {
            this.§7!Z§.play();
         }
      }
      
      protected function §]!"§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(_loc1_ == this.§#!2§)
            {
               this.§<!^§[_loc1_].gotoAndStop("Selected");
               (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
               this.§4!k§(_loc1_);
            }
            else
            {
               this.§<!^§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<!v§ = false;
         §1^§.§?!0§(§1^§.§<J§).§2!%§ = this.§#!2§;
      }
      
      protected function §4!k§(param1:int) : void
      {
         (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).§!D§.text = §1^§.§?!0§(§1^§.§<J§).pageIndexes[param1];
      }
   }
}
