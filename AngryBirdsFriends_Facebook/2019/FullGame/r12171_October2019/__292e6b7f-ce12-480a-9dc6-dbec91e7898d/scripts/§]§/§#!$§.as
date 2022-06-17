package §]§
{
   import § "L§.§!U§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import § "L§.§[" §;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §-#;§.§5#J§;
   import §3"V§.§ b§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §=J§.§4#"§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §#!$§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const § "D§:Number = 0.5;
      
      public static var §!"Q§:String = "";
       
      
      protected var §2#6§:Boolean = false;
      
      protected var §`"s§:§23§;
      
      protected var §9!R§:§23§;
      
      protected var §0"m§:MovieClip;
      
      protected var §0"!§:Array;
      
      protected var §@!$§:Array;
      
      protected var §4=§:int = 0;
      
      protected var §4!'§:int = 0;
      
      protected var §1#!§:int = 0;
      
      protected var §4,§:Boolean = false;
      
      protected var § !+§:§@$-§ = null;
      
      protected var §1<§:Dictionary;
      
      protected var § H§:Array;
      
      protected var §,#&§:Array;
      
      protected var §##h§:§5#J§;
      
      protected var §^$A§:Number = 0;
      
      public function §#!$§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§9!R§.mClip.numChildren > 0)
         {
            this.§9!R§.mClip.removeChildAt(0);
         }
         this.§@!$§ = [];
         this.§0"!§ = [];
      }
      
      protected function initView() : void
      {
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelSelection[0]);
         this.§9!R§ = §;!w§.getItemByName("Container_LevelRepeaters") as §23§;
         this.§`"s§ = §;!w§.getItemByName("Container_LevelSelection") as §23§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.§2#§.clearLevel();
         §]$?§.§2#§.setVisible(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§@!$§.length == 1)
         {
            (§;!w§.getItemByName("Button_Prev") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_Next") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).setVisibility(false);
         }
         else
         {
            (§;!w§.getItemByName("Button_Prev") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Next") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).setVisibility(true);
         }
         this.§^$A§ = this.§9!R§.x;
         if(§;!w§.stage)
         {
            §;!w§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
      }
      
      protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.gotoPrevPage();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.gotoNextPage();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§7!a§();
         this.§6t§();
      }
      
      protected function §7!a§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0"!§.length)
         {
            if(-this.§9!R§.x >= this.§@!$§[_loc1_].x && -this.§^$A§ < this.§@!$§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0"!§.length)
               {
                  this.§0"!§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1#!§ = _loc1_;
               this.§0"!§[_loc1_].gotoAndStop("Selected");
               (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).x = this.§0"!§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§9!R§.x <= this.§@!$§[_loc1_].x && -this.§^$A§ > this.§@!$§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0"!§.length)
               {
                  this.§0"!§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1#!§ = _loc1_;
               this.§0"!§[_loc1_].gotoAndStop("Selected");
               (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).x = this.§0"!§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§1#!§ != this.§4=§)
         {
            if(this.§4=§ > this.§1#!§)
            {
               this.§4!'§ = this.§1#!§ + 1;
            }
            else if(this.§4=§ < this.§1#!§)
            {
               this.§4!'§ = this.§1#!§ - 1;
            }
            else
            {
               this.§4!'§ = this.§1#!§;
            }
            this.§##h§.§-#-§(this.§ H§[this.§4!'§].red,this.§ H§[this.§4!'§].green,this.§ H§[this.§4!'§].blue);
         }
         this.§^$A§ = this.§9!R§.x;
      }
      
      protected function §6t§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!$§.length)
         {
            _loc2_ = this.§9!R§.x + this.§@!$§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§@!$§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§@!$§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§@!$§[_loc1_].mClip.alpha < 1)
            {
               (this.§@!$§[_loc1_] as §!U§).setEnabled(false);
            }
            else
            {
               (this.§@!$§[_loc1_] as §!U§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§;!w§.stage)
         {
            §;!w§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§6!@§();
         (§;!w§.getItemByName("Button_Back") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§ !+§)
         {
            this.§ !+§.stop();
            this.§ !+§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         if(param2.length > 0 && param3 is §[" §)
         {
            if((param3 as §[" §).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §[" §).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§4,§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §3#§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§9#Q§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         if(!this.§4,§)
         {
            ++this.§4=§;
            this.moveToPage(this.§4=§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         if(!this.§4,§)
         {
            --this.§4=§;
            this.moveToPage(this.§4=§);
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
         this.§ H§ = [];
         this.§,#&§ = [];
         var _loc2_:§3!,§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§4=§ = _loc2_.currentPage;
         this.§4!'§ = this.§4=§;
         this.§1#!§ = this.§4=§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§7E§)
         {
            _loc4_ = _loc2_.§;!N§(_loc3_);
            this.§ H§.push(_loc2_.§^"H§(_loc3_));
            this.§,#&§.push(_loc2_.§<P§(_loc3_));
            _loc1_ = this.§7!e§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§##h§ = new §5#J§(this.§ H§[this.§4=§].red,this.§ H§[this.§4=§].green,this.§ H§[this.§4=§].blue,1);
         §;!w§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§##h§);
         if(_loc2_.§,"T§)
         {
            _loc6_ = new (_loc5_ = §[a§.§8#k§(_loc2_.§,"T§))();
            §;!w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §;!w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§;#e§)
         {
            _loc8_ = new (_loc7_ = §[a§.§8#k§(_loc2_.§;#e§))();
            §;!w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §;!w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§#=§();
         if(§!"Q§ == StateCutScene.STATE_NAME)
         {
            §!"Q§ = "";
            this.moveToPage(this.§1#!§);
         }
         else
         {
            this.moveToPage(this.§4=§,true);
         }
      }
      
      protected function §7!e§(param1:Array, param2:int, param3:Number, param4:§3!,§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §[a§.§8#k§(this.§,#&§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsBase.DEBUG_MODE_ENABLED)
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
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§,#&§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§!U§;
         (_loc9_ = new §!U§(_loc8_,this.§9!R§,null,null)).§ #`§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§9!R§.§+#;§(_loc9_);
         this.§@!$§.push(_loc9_);
         return Number(param3 + AngryBirdsBase.screenWidth);
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
            if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §#=§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§@!$§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§1<§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§@!$§.length)
         {
            _loc1_ = §[a§.§8#k§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§@!$§.length * _loc2_.width / 2;
            _loc2_.y = (§;!w§.getItemByName("Button_Next") as §1"r§).y - _loc2_.height / 2;
            if(_loc4_ == this.§4=§)
            {
               _loc2_.gotoAndStop("Selected");
               (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).x = _loc2_.x;
               (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§`"s§.mClip.addChild(_loc2_);
            this.§1<§[_loc2_] = _loc4_;
            this.§0"!§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§=[§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§@!$§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§;!w§.getItemByName("Button_Next") as §1"r§).x = AngryBirdsBase.screenWidth / 2;
         (§;!w§.getItemByName("Button_Prev") as §1"r§).x = AngryBirdsBase.screenWidth / 2;
         (§;!w§.getItemByName("Button_Next") as §1"r§).x = (§;!w§.getItemByName("Button_Next") as §1"r§).x + (_loc3_ + 10);
         (§;!w§.getItemByName("Button_Prev") as §1"r§).x = (§;!w§.getItemByName("Button_Prev") as §1"r§).x - (_loc3_ + 10);
      }
      
      protected function §6!@§() : void
      {
         if(this.§##h§)
         {
            this.§##h§.§<![§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§0"!§.length)
         {
            if(this.§`"s§.mClip.contains(this.§0"!§[_loc1_]))
            {
               this.§0"!§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§=[§);
               this.§`"s§.mClip.removeChild(this.§0"!§[_loc1_]);
            }
            _loc1_++;
         }
         this.§0"!§ = [];
         this.§9!R§.§&"_§();
         this.§@!$§ = [];
      }
      
      protected function §=[§(param1:MouseEvent) : void
      {
         if(!this.§4,§)
         {
            this.moveToPage(this.§1<§[param1.target]);
         }
      }
      
      protected function §5#V§(param1:MouseEvent) : void
      {
         if(!this.§4,§)
         {
            §3#§(§#!$§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§4,§ = true;
         if(param1 > this.§@!$§.length - 1)
         {
            param1 = this.§@!$§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§4=§ = param1;
         if(this.§4=§ > this.§1#!§)
         {
            this.§4!'§ = this.§1#!§ + 1;
         }
         else if(this.§4=§ < this.§1#!§)
         {
            this.§4!'§ = this.§1#!§ - 1;
         }
         var _loc3_:Number = -this.§@!$§[param1].x;
         var _loc4_:Number = this.§@!$§[param1].x + this.§9!R§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * § "D§;
         if(this.§ !+§ != null)
         {
            this.§ !+§.stop();
         }
         if(param2)
         {
            this.§9!R§.x = _loc3_;
         }
         else
         {
            this.§ !+§ = §6"W§.§+!,§.§9!n§(this.§9!R§,{"x":_loc3_},null,_loc5_,§4#"§.easeOut);
            this.§ !+§.onComplete = this.§-#w§;
         }
         if(param2)
         {
            this.§-#w§();
         }
         else
         {
            this.§ !+§.play();
         }
      }
      
      protected function §-#w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0"!§.length)
         {
            if(_loc1_ == this.§4=§)
            {
               this.§0"!§[_loc1_].gotoAndStop("Selected");
               (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).x = this.§0"!§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§0"!§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§4,§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§4=§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).§%!8§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
