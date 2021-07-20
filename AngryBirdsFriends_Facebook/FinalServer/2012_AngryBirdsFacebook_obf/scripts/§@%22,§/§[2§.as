package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§#p§;
   import §-B§.§8"B§;
   import §-B§.§<"$§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§&G§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §@!4§.§^C§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §[2§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §^W§:Number = 0.5;
      
      public static var §89§:String = "";
       
      
      protected var §2h§:Boolean = false;
      
      protected var §]y§:§?!j§;
      
      protected var §1"6§:§?!j§;
      
      protected var §#o§:MovieClip;
      
      protected var §3!7§:Array;
      
      protected var §]"8§:Array;
      
      protected var §@"#§:int = 0;
      
      protected var § !1§:int = 0;
      
      protected var §2!l§:int = 0;
      
      protected var §1!e§:Boolean = false;
      
      protected var §'!i§:§!"&§ = null;
      
      protected var §]"6§:Dictionary;
      
      protected var §!j§:Array;
      
      protected var §6i§:Array;
      
      protected var §!F§:§^C§;
      
      protected var §1!=§:Number = 0;
      
      public function §[2§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§1"6§.mClip.numChildren > 0)
         {
            this.§1"6§.mClip.removeChildAt(0);
         }
         this.§]"8§ = [];
         this.§3!7§ = [];
      }
      
      protected function initView() : void
      {
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelSelection[0]);
         this.§1"6§ = §2!K§.getItemByName("Container_LevelRepeaters") as §?!j§;
         this.§]y§ = §2!K§.getItemByName("Container_LevelSelection") as §?!j§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §&2§.§],§.clearLevel();
         §&2§.§],§.§`!I§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§]"8§.length == 1)
         {
            (§2!K§.getItemByName("Button_Prev") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_Next") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).setVisibility(false);
         }
         else
         {
            (§2!K§.getItemByName("Button_Prev") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Next") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).setVisibility(true);
         }
         this.§1!=§ = this.§1"6§.x;
         if(§2!K§.stage)
         {
            §2!K§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§?s§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function §?s§(param1:KeyboardEvent) : void
      {
         if(this.§]"8§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§'",§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§^'§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]7§();
         this.§ "I§();
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      protected function §]7§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!7§.length)
         {
            if(-this.§1"6§.x >= this.§]"8§[_loc1_].x && -this.§1!=§ < this.§]"8§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3!7§.length)
               {
                  this.§3!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!l§ = _loc1_;
               this.§3!7§[_loc1_].gotoAndStop("Selected");
               (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).x = this.§3!7§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§1"6§.x <= this.§]"8§[_loc1_].x && -this.§1!=§ > this.§]"8§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3!7§.length)
               {
                  this.§3!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2!l§ = _loc1_;
               this.§3!7§[_loc1_].gotoAndStop("Selected");
               (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).x = this.§3!7§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§2!l§ != this.§@"#§)
         {
            if(this.§@"#§ > this.§2!l§)
            {
               this.§ !1§ = this.§2!l§ + 1;
            }
            else if(this.§@"#§ < this.§2!l§)
            {
               this.§ !1§ = this.§2!l§ - 1;
            }
            else
            {
               this.§ !1§ = this.§2!l§;
            }
            if(this.§!j§[this.§ !1§])
            {
               this.§!F§.§%!a§(this.§!j§[this.§ !1§].red,this.§!j§[this.§ !1§].green,this.§!j§[this.§ !1§].blue);
            }
         }
         this.§1!=§ = this.§1"6§.x;
      }
      
      protected function § "I§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]"8§.length)
         {
            _loc2_ = this.§1"6§.x + this.§]"8§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§]"8§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§]"8§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§]"8§[_loc1_].mClip.alpha < 1)
            {
               (this.§]"8§[_loc1_] as §&G§).setEnabled(false);
            }
            else
            {
               (this.§]"8§[_loc1_] as §&G§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§2!K§.stage)
         {
            §2!K§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§?s§);
         }
         super.deActivate();
         this.§9"%§();
         (§2!K§.getItemByName("Button_Back") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§]!5§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§'!i§)
         {
            this.§'!i§.stop();
            this.§'!i§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         if(param2.length > 0 && param3 is §8"B§)
         {
            if((param3 as §8"B§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §8"B§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§1!e§)
               {
                  LevelManager.§^p§(LevelManager.§&!1§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §+m§.§]!N§("Menu_Back");
               mNextState = §6!B§.STATE_NAME;
               break;
            case "NEXT":
               this.§^'§();
               break;
            case "PREV":
               this.§'",§();
               break;
            case "FULLSCREEN_BUTTON":
               §+m§.§]!N§("Menu_Confirm");
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      protected function §^'§() : void
      {
         §+m§.§]!N§("Menu_Confirm");
         if(!this.§1!e§)
         {
            ++this.§@"#§;
            this.§;"B§(this.§@"#§);
         }
      }
      
      protected function §'",§() : void
      {
         §+m§.§]!N§("Menu_Confirm");
         if(!this.§1!e§)
         {
            --this.§@"#§;
            this.§;"B§(this.§@"#§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§!j§ = [];
         this.§6i§ = [];
         this.§@"#§ = LevelManager.§9"&§(LevelManager.§5"G§).§]!q§;
         this.§ !1§ = this.§@"#§;
         this.§2!l§ = this.§@"#§;
         var _loc2_:§=!-§ = LevelManager.§9"&§(LevelManager.§5"G§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§88§(_loc2_.pageIndexes[_loc3_]);
            this.§!j§.push(_loc2_.§"?§(_loc3_));
            this.§6i§.push(_loc2_.§+'§(_loc3_));
            _loc1_ = this.§;"E§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§!F§ = new §^C§(this.§!j§[this.§@"#§].red,this.§!j§[this.§@"#§].green,this.§!j§[this.§@"#§].blue,1);
         §2!K§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§!F§);
         if(_loc2_.§["6§)
         {
            _loc6_ = new (_loc5_ = §>"5§.§6s§(_loc2_.§["6§))();
            §2!K§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §2!K§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§"q§)
         {
            _loc8_ = new (_loc7_ = §>"5§.§6s§(_loc2_.§"q§))();
            §2!K§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §2!K§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2!7§();
         if(§89§ == StateCutScene.STATE_NAME)
         {
            §89§ = "";
            this.§;"B§(this.§2!l§);
         }
         else
         {
            this.§;"B§(this.§@"#§,true);
         }
      }
      
      protected function §;"E§(param1:Array, param2:int, param3:Number, param4:§=!-§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>"5§.§6s§(this.§6i§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§&!M§)
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
         _loc8_.@button = this.§6i§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§<"$§;
         (_loc9_ = new §<"$§(_loc8_,this.§1"6§,null,null)).§^![§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§1"6§.§'!@§(_loc9_);
         this.§]"8§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§`",§);
      }
      
      protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §2!7§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§]"8§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§]"6§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"8§.length)
         {
            _loc1_ = §>"5§.§6s§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§`",§ / 2 + _loc3_ - this.§]"8§.length * _loc2_.width / 2;
            _loc2_.y = (§2!K§.getItemByName("Button_Next") as §]!<§).y - _loc2_.height / 2;
            if(_loc4_ == this.§@"#§)
            {
               _loc2_.gotoAndStop("Selected");
               (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).x = _loc2_.x;
               (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§]y§.mClip.addChild(_loc2_);
            this.§]"6§[_loc2_] = _loc4_;
            this.§3!7§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"K§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§]"8§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2!K§.getItemByName("Button_Next") as §]!<§).x = AngryBirdsFP11.§`",§ / 2;
         (§2!K§.getItemByName("Button_Prev") as §]!<§).x = AngryBirdsFP11.§`",§ / 2;
         (§2!K§.getItemByName("Button_Next") as §]!<§).x = (§2!K§.getItemByName("Button_Next") as §]!<§).x + (_loc3_ + 10);
         (§2!K§.getItemByName("Button_Prev") as §]!<§).x = (§2!K§.getItemByName("Button_Prev") as §]!<§).x - (_loc3_ + 10);
      }
      
      protected function §9"%§() : void
      {
         if(this.§!F§)
         {
            this.§!F§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!7§.length)
         {
            if(this.§]y§.mClip.contains(this.§3!7§[_loc1_]))
            {
               this.§3!7§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§7"K§);
               this.§]y§.mClip.removeChild(this.§3!7§[_loc1_]);
            }
            _loc1_++;
         }
         this.§3!7§ = [];
         while(this.§1"6§.mClip.numChildren > 0)
         {
            this.§1"6§.mClip.removeChildAt(0);
         }
         this.§]"8§ = [];
      }
      
      protected function §7"K§(param1:MouseEvent) : void
      {
         if(!this.§1!e§)
         {
            this.§;"B§(this.§]"6§[param1.target]);
         }
      }
      
      protected function §#g§(param1:MouseEvent) : void
      {
         if(!this.§1!e§)
         {
            mNextState = §[2§.STATE_NAME;
         }
      }
      
      protected function §;"B§(param1:int, param2:Boolean = false) : void
      {
         this.§1!e§ = true;
         if(param1 > this.§]"8§.length - 1)
         {
            param1 = this.§]"8§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§@"#§ = param1;
         if(this.§@"#§ > this.§2!l§)
         {
            this.§ !1§ = this.§2!l§ + 1;
         }
         else if(this.§@"#§ < this.§2!l§)
         {
            this.§ !1§ = this.§2!l§ - 1;
         }
         var _loc3_:Number = -this.§]"8§[param1].x;
         var _loc4_:Number = this.§]"8§[param1].x + this.§1"6§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §^W§;
         if(this.§'!i§ != null)
         {
            this.§'!i§.stop();
         }
         if(param2)
         {
            this.§1"6§.x = _loc3_;
         }
         else
         {
            this.§'!i§ = §&p§.§1[§.§7!3§(this.§1"6§,{"x":_loc3_},null,_loc5_,§&p§.§get §);
            this.§'!i§.onComplete = this.§>!K§;
         }
         if(param2)
         {
            this.§>!K§();
         }
         else
         {
            this.§'!i§.play();
         }
      }
      
      protected function §>!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!7§.length)
         {
            if(_loc1_ == this.§@"#§)
            {
               this.§3!7§[_loc1_].gotoAndStop("Selected");
               (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).x = this.§3!7§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§3!7§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§1!e§ = false;
         LevelManager.§9"&§(LevelManager.§5"G§).§]!q§ = this.§@"#§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).§`E§.text = LevelManager.§9"&§(LevelManager.§5"G§).pageIndexes[param1];
      }
   }
}
