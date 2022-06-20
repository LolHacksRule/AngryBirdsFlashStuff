package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §-"Y§.§"!1§;
   import §0r§.§3#G§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=]§;
   import §2$;§.§?$1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §;O§ extends §';§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §7&§:Number = 0.5;
      
      public static var §+#J§:String = "";
       
      
      protected var §1"9§:Boolean = false;
      
      protected var §<!_§:§!"e§;
      
      protected var §">§:§!"e§;
      
      protected var §&"%§:MovieClip;
      
      protected var §5!B§:Array;
      
      protected var §]"P§:Array;
      
      protected var §,!v§:int = 0;
      
      protected var §!#q§:int = 0;
      
      protected var §5F§:int = 0;
      
      protected var §="6§:Boolean = false;
      
      protected var §<!c§:§@#5§ = null;
      
      protected var §=^§:Dictionary;
      
      protected var §@f§:Array;
      
      protected var §@!g§:Array;
      
      protected var §#"?§:§"!1§;
      
      protected var §#"6§:Number = 0;
      
      public function §;O§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§">§.mClip.numChildren > 0)
         {
            this.§">§.mClip.removeChildAt(0);
         }
         this.§]"P§ = [];
         this.§5!B§ = [];
      }
      
      protected function initView() : void
      {
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelSelection[0]);
         this.§">§ = §@!D§.getItemByName("Container_LevelRepeaters") as §!"e§;
         this.§<!_§ = §@!D§.getItemByName("Container_LevelSelection") as §!"e§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.§`?§.clearLevel();
         §+!p§.§`?§.setVisible(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§]"P§.length == 1)
         {
            (§@!D§.getItemByName("Button_Prev") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_Next") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).setVisibility(false);
         }
         else
         {
            (§@!D§.getItemByName("Button_Prev") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Next") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).setVisibility(true);
         }
         this.§#"6§ = this.§">§.x;
         if(§@!D§.stage)
         {
            §@!D§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
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
         this.§8! §();
         this.§;#w§();
      }
      
      protected function §8! §() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!B§.length)
         {
            if(-this.§">§.x >= this.§]"P§[_loc1_].x && -this.§#"6§ < this.§]"P§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!B§.length)
               {
                  this.§5!B§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5F§ = _loc1_;
               this.§5!B§[_loc1_].gotoAndStop("Selected");
               (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).x = this.§5!B§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§">§.x <= this.§]"P§[_loc1_].x && -this.§#"6§ > this.§]"P§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!B§.length)
               {
                  this.§5!B§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5F§ = _loc1_;
               this.§5!B§[_loc1_].gotoAndStop("Selected");
               (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).x = this.§5!B§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§5F§ != this.§,!v§)
         {
            if(this.§,!v§ > this.§5F§)
            {
               this.§!#q§ = this.§5F§ + 1;
            }
            else if(this.§,!v§ < this.§5F§)
            {
               this.§!#q§ = this.§5F§ - 1;
            }
            else
            {
               this.§!#q§ = this.§5F§;
            }
            this.§#"?§.§-#-§(this.§@f§[this.§!#q§].red,this.§@f§[this.§!#q§].green,this.§@f§[this.§!#q§].blue);
         }
         this.§#"6§ = this.§">§.x;
      }
      
      protected function §;#w§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]"P§.length)
         {
            _loc2_ = this.§">§.x + this.§]"P§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§]"P§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§]"P§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§]"P§[_loc1_].mClip.alpha < 1)
            {
               (this.§]"P§[_loc1_] as §=]§).setEnabled(false);
            }
            else
            {
               (this.§]"P§[_loc1_] as §=]§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§@!D§.stage)
         {
            §@!D§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§-!§();
         (§@!D§.getItemByName("Button_Back") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§<!c§)
         {
            this.§<!c§.stop();
            this.§<!c§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         if(param2.length > 0 && param3 is §?$1§)
         {
            if((param3 as §?$1§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §?$1§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§="6§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §%!?§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§4#p§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         if(!this.§="6§)
         {
            ++this.§,!v§;
            this.moveToPage(this.§,!v§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         if(!this.§="6§)
         {
            --this.§,!v§;
            this.moveToPage(this.§,!v§);
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc6_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§@f§ = [];
         this.§@!g§ = [];
         var _loc2_:§79§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§,!v§ = _loc2_.currentPage;
         this.§!#q§ = this.§,!v§;
         this.§5F§ = this.§,!v§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§+!A§)
         {
            _loc4_ = _loc2_.§,!k§(_loc3_);
            this.§@f§.push(_loc2_.§@!S§(_loc3_));
            this.§@!g§.push(_loc2_.§[#u§(_loc3_));
            _loc1_ = this.§9i§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§#"?§ = new §"!1§(this.§@f§[this.§,!v§].red,this.§@f§[this.§,!v§].green,this.§@f§[this.§,!v§].blue,1);
         §@!D§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§#"?§);
         if(_loc2_.§3"=§)
         {
            _loc6_ = new §=@§.§9!x§(_loc2_.§3"=§)();
            §@!D§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §@!D§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§0!C§)
         {
            _loc8_ = new §=@§.§9!x§(_loc2_.§0!C§)();
            §@!D§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §@!D§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§?!N§();
         if(§+#J§ == StateCutScene.STATE_NAME)
         {
            §+#J§ = "";
            this.moveToPage(this.§5F§);
         }
         else
         {
            this.moveToPage(this.§,!v§,true);
         }
      }
      
      protected function §9i§(param1:Array, param2:int, param3:Number, param4:§79§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §=@§.§9!x§(this.§@!g§[param2]);
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
         _loc8_.@button = this.§@!g§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§=]§;
         (_loc9_ = new §=]§(_loc8_,this.§">§,null,null)).§8!x§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§">§.§'$9§(_loc9_);
         this.§]"P§.push(_loc9_);
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
      
      protected function §?!N§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§]"P§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=^§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"P§.length)
         {
            _loc1_ = §=@§.§9!x§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§]"P§.length * _loc2_.width / 2;
            _loc2_.y = (§@!D§.getItemByName("Button_Next") as §;!b§).y - _loc2_.height / 2;
            if(_loc4_ == this.§,!v§)
            {
               _loc2_.gotoAndStop("Selected");
               (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).x = _loc2_.x;
               (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§<!_§.mClip.addChild(_loc2_);
            this.§=^§[_loc2_] = _loc4_;
            this.§5!B§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!1§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§]"P§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§@!D§.getItemByName("Button_Next") as §;!b§).x = AngryBirdsBase.screenWidth / 2;
         (§@!D§.getItemByName("Button_Prev") as §;!b§).x = AngryBirdsBase.screenWidth / 2;
         (§@!D§.getItemByName("Button_Next") as §;!b§).x = (§@!D§.getItemByName("Button_Next") as §;!b§).x + (_loc3_ + 10);
         (§@!D§.getItemByName("Button_Prev") as §;!b§).x = (§@!D§.getItemByName("Button_Prev") as §;!b§).x - (_loc3_ + 10);
      }
      
      protected function §-!§() : void
      {
         if(this.§#"?§)
         {
            this.§#"?§.§ !1§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!B§.length)
         {
            if(this.§<!_§.mClip.contains(this.§5!B§[_loc1_]))
            {
               this.§5!B§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!1§);
               this.§<!_§.mClip.removeChild(this.§5!B§[_loc1_]);
            }
            _loc1_++;
         }
         this.§5!B§ = [];
         this.§">§.§4t§();
         this.§]"P§ = [];
      }
      
      protected function §[!1§(param1:MouseEvent) : void
      {
         if(!this.§="6§)
         {
            this.moveToPage(this.§=^§[param1.target]);
         }
      }
      
      protected function §?!l§(param1:MouseEvent) : void
      {
         if(!this.§="6§)
         {
            §%!?§(§;O§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§="6§ = true;
         if(param1 > this.§]"P§.length - 1)
         {
            param1 = this.§]"P§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§,!v§ = param1;
         if(this.§,!v§ > this.§5F§)
         {
            this.§!#q§ = this.§5F§ + 1;
         }
         else if(this.§,!v§ < this.§5F§)
         {
            this.§!#q§ = this.§5F§ - 1;
         }
         var _loc3_:Number = -this.§]"P§[param1].x;
         var _loc4_:Number = this.§]"P§[param1].x + this.§">§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §7&§;
         if(this.§<!c§ != null)
         {
            this.§<!c§.stop();
         }
         if(param2)
         {
            this.§">§.x = _loc3_;
         }
         else
         {
            this.§<!c§ = §5"<§.§3"1§.§3#§(this.§">§,{"x":_loc3_},null,_loc5_,§3#G§.easeOut);
            this.§<!c§.onComplete = this.§2!j§;
         }
         if(param2)
         {
            this.§2!j§();
         }
         else
         {
            this.§<!c§.play();
         }
      }
      
      protected function §2!j§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!B§.length)
         {
            if(_loc1_ == this.§,!v§)
            {
               this.§5!B§[_loc1_].gotoAndStop("Selected");
               (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).x = this.§5!B§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§5!B§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§="6§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§,!v§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).§>$D§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
