package §-P§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§2!b§;
   import §!D§.§3!6§;
   import §!D§.§>"5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §'!O§.§=!w§;
   import §'!O§.§[!m§;
   import §0!!§.§%!w§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§0!`§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §1f§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelSelectionState";
      
      protected static const §2p§:Number = 0.5;
      
      public static var §9-§:String = "";
       
      
      protected var §"!p§:Boolean = false;
      
      protected var §!!p§:§ use§;
      
      protected var §]O§:§ use§;
      
      protected var §+Q§:MovieClip;
      
      protected var §@Z§:Array;
      
      protected var §""4§:Array;
      
      protected var §]!N§:int = 0;
      
      protected var §04§:int = 0;
      
      protected var §2!`§:int = 0;
      
      protected var §<!-§:Boolean = false;
      
      protected var §2!A§:§;!5§ = null;
      
      protected var §,!2§:Dictionary;
      
      protected var §super§:Array;
      
      protected var § "1§:Array;
      
      protected var §;!z§:§%!w§;
      
      protected var §-!?§:Number = 0;
      
      public function §1f§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&!&§();
         while(this.§]O§.mClip.numChildren > 0)
         {
            this.§]O§.mClip.removeChildAt(0);
         }
         this.§""4§ = [];
         this.§@Z§ = [];
      }
      
      protected function §&!&§() : void
      {
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelSelection[0]);
         this.§]O§ = §1!j§.getItemByName("Container_LevelRepeaters") as § use§;
         this.§!!p§ = §1!j§.getItemByName("Container_LevelSelection") as § use§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!0§.§?2§.clearLevel();
         §8!0§.§?2§.§<;§(false);
         this.§,"3§();
         this.§]^§();
         if(this.§""4§.length == 1)
         {
            (§1!j§.getItemByName("Button_Prev") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_Next") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).setVisibility(false);
         }
         else
         {
            (§1!j§.getItemByName("Button_Prev") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_Next") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).setVisibility(true);
         }
         this.§-!?§ = this.§]O§.x;
         if(§1!j§.stage)
         {
            §1!j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ F§);
         }
      }
      
      protected function §]^§() : void
      {
         AngryBirdsFP11.§]^§();
      }
      
      protected function § F§(param1:KeyboardEvent) : void
      {
         if(this.§""4§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§`!j§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§'!K§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!3§();
         this.§]!f§();
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      protected function §@!3§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.length)
         {
            if(-this.§]O§.x >= this.§""4§[_loc1_].x && -this.§-!?§ < this.§""4§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@Z§.length)
               {
                  this.§@Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!`§ = _loc1_;
               this.§@Z§[_loc1_].gotoAndStop("Selected");
               (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).x = this.§@Z§[_loc1_].x;
               this.§;!&§(_loc1_);
            }
            if(-this.§]O§.x <= this.§""4§[_loc1_].x && -this.§-!?§ > this.§""4§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@Z§.length)
               {
                  this.§@Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!`§ = _loc1_;
               this.§@Z§[_loc1_].gotoAndStop("Selected");
               (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).x = this.§@Z§[_loc1_].x;
               this.§;!&§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§2!`§ != this.§]!N§)
         {
            if(this.§]!N§ > this.§2!`§)
            {
               this.§04§ = this.§2!`§ + 1;
            }
            else if(this.§]!N§ < this.§2!`§)
            {
               this.§04§ = this.§2!`§ - 1;
            }
            else
            {
               this.§04§ = this.§2!`§;
            }
            if(this.§super§[this.§04§])
            {
               this.§;!z§.§=8§(this.§super§[this.§04§].red,this.§super§[this.§04§].green,this.§super§[this.§04§].blue);
            }
         }
         this.§-!?§ = this.§]O§.x;
      }
      
      protected function §]!f§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§""4§.length)
         {
            _loc2_ = this.§]O§.x + this.§""4§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§""4§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§""4§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§""4§[_loc1_].mClip.alpha < 1)
            {
               (this.§""4§[_loc1_] as §0!`§).setEnabled(false);
            }
            else
            {
               (this.§""4§[_loc1_] as §0!`§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§1!j§.stage)
         {
            §1!j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ F§);
         }
         super.deActivate();
         this.§<U§();
         (§1!j§.getItemByName("Button_Back") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[!m§.§use§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§2!A§)
         {
            this.§2!A§.stop();
            this.§2!A§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         if(param2.length > 0 && param3 is §>"5§)
         {
            if((param3 as §>"5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §>"5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§<!-§)
               {
                  §[!m§.loadLevel(§[!m§.§2!I§(param2.toLowerCase()));
                  mNextState = StateCutScene.§#!w§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §?!7§.playSound("Menu_Back");
               mNextState = §<!4§.§#!w§;
               break;
            case "NEXT":
               this.§'!K§();
               break;
            case "PREV":
               this.§`!j§();
               break;
            case "FULLSCREEN_BUTTON":
               §?!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      protected function §'!K§() : void
      {
         §?!7§.playSound("Menu_Confirm");
         if(!this.§<!-§)
         {
            ++this.§]!N§;
            this.§9!0§(this.§]!N§);
         }
      }
      
      protected function §`!j§() : void
      {
         §?!7§.playSound("Menu_Confirm");
         if(!this.§<!-§)
         {
            --this.§]!N§;
            this.§9!0§(this.§]!N§);
         }
      }
      
      public function §,"3§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§super§ = [];
         this.§ "1§ = [];
         this.§]!N§ = §[!m§.§3!n§(§[!m§.§0`§).§ !w§;
         this.§04§ = this.§]!N§;
         this.§2!`§ = this.§]!N§;
         var _loc2_:§=!w§ = §[!m§.§3!n§(§[!m§.§0`§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§5!>§(_loc2_.pageIndexes[_loc3_]);
            this.§super§.push(_loc2_.§^O§(_loc3_));
            this.§ "1§.push(_loc2_.§]!§(_loc3_));
            _loc1_ = this.§]B§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§;!z§ = new §%!w§(this.§super§[this.§]!N§].red,this.§super§[this.§]!N§].green,this.§super§[this.§]!N§].blue,1);
         §1!j§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§;!z§);
         if(_loc2_.§7t§)
         {
            _loc6_ = new (_loc5_ = §%"4§.§>!v§(_loc2_.§7t§))();
            §1!j§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §1!j§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§<"%§)
         {
            _loc8_ = new (_loc7_ = §%"4§.§>!v§(_loc2_.§<"%§))();
            §1!j§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §1!j§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§`!e§();
         if(§9-§ == StateCutScene.§#!w§)
         {
            §9-§ = "";
            this.§9!0§(this.§2!`§);
         }
         else
         {
            this.§9!0§(this.§]!N§,true);
         }
      }
      
      protected function §]B§(param1:Array, param2:int, param3:Number, param4:§=!w§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%"4§.§>!v§(this.§ "1§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§8!v§.§8!&§(_loc10_);
            _loc12_ = this.§8"1§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§`"&§)
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
         _loc8_.@button = this.§ "1§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§2!b§;
         (_loc9_ = new §2!b§(_loc8_,this.§]O§,null,null)).§-W§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§]O§.§">§(_loc9_);
         this.§""4§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§'A§);
      }
      
      protected function §8"1§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§8!v§.§7!$§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§8!v§.§4!z§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §`!e§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§""4§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§,!2§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§""4§.length)
         {
            _loc1_ = §%"4§.§>!v§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§'A§ / 2 + _loc3_ - this.§""4§.length * _loc2_.width / 2;
            _loc2_.y = (§1!j§.getItemByName("Button_Next") as §3!6§).y - _loc2_.height / 2;
            if(_loc4_ == this.§]!N§)
            {
               _loc2_.gotoAndStop("Selected");
               (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).x = _loc2_.x;
               (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).y = _loc2_.y - _loc2_.height;
               this.§;!&§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§!!p§.mClip.addChild(_loc2_);
            this.§,!2§[_loc2_] = _loc4_;
            this.§@Z§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§=" §);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§""4§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§1!j§.getItemByName("Button_Next") as §3!6§).x = AngryBirdsFP11.§'A§ / 2;
         (§1!j§.getItemByName("Button_Prev") as §3!6§).x = AngryBirdsFP11.§'A§ / 2;
         (§1!j§.getItemByName("Button_Next") as §3!6§).x = (§1!j§.getItemByName("Button_Next") as §3!6§).x + (_loc3_ + 10);
         (§1!j§.getItemByName("Button_Prev") as §3!6§).x = (§1!j§.getItemByName("Button_Prev") as §3!6§).x - (_loc3_ + 10);
      }
      
      protected function §<U§() : void
      {
         if(this.§;!z§)
         {
            this.§;!z§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.length)
         {
            if(this.§!!p§.mClip.contains(this.§@Z§[_loc1_]))
            {
               this.§@Z§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§=" §);
               this.§!!p§.mClip.removeChild(this.§@Z§[_loc1_]);
            }
            _loc1_++;
         }
         this.§@Z§ = [];
         while(this.§]O§.mClip.numChildren > 0)
         {
            this.§]O§.mClip.removeChildAt(0);
         }
         this.§""4§ = [];
      }
      
      protected function §=" §(param1:MouseEvent) : void
      {
         if(!this.§<!-§)
         {
            this.§9!0§(this.§,!2§[param1.target]);
         }
      }
      
      protected function §0u§(param1:MouseEvent) : void
      {
         if(!this.§<!-§)
         {
            mNextState = §1f§.§#!w§;
         }
      }
      
      protected function §9!0§(param1:int, param2:Boolean = false) : void
      {
         this.§<!-§ = true;
         if(param1 > this.§""4§.length - 1)
         {
            param1 = this.§""4§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]!N§ = param1;
         if(this.§]!N§ > this.§2!`§)
         {
            this.§04§ = this.§2!`§ + 1;
         }
         else if(this.§]!N§ < this.§2!`§)
         {
            this.§04§ = this.§2!`§ - 1;
         }
         var _loc3_:Number = -this.§""4§[param1].x;
         var _loc4_:Number = this.§""4§[param1].x + this.§]O§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §2p§;
         if(this.§2!A§ != null)
         {
            this.§2!A§.stop();
         }
         if(param2)
         {
            this.§]O§.x = _loc3_;
         }
         else
         {
            this.§2!A§ = §"!5§.§9j§.§4!p§(this.§]O§,{"x":_loc3_},null,_loc5_,§"!5§.§+!F§);
            this.§2!A§.onComplete = this.§true §;
         }
         if(param2)
         {
            this.§true §();
         }
         else
         {
            this.§2!A§.play();
         }
      }
      
      protected function §true §() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.length)
         {
            if(_loc1_ == this.§]!N§)
            {
               this.§@Z§[_loc1_].gotoAndStop("Selected");
               (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).x = this.§@Z§[_loc1_].x;
               this.§;!&§(_loc1_);
            }
            else
            {
               this.§@Z§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<!-§ = false;
         §[!m§.§3!n§(§[!m§.§0`§).§ !w§ = this.§]!N§;
      }
      
      protected function §;!&§(param1:int) : void
      {
         (§1!j§.getItemByName("TextField_LevelNumberSmall") as §%c§).§3v§.text = §[!m§.§3!n§(§[!m§.§0`§).pageIndexes[param1];
      }
   }
}
