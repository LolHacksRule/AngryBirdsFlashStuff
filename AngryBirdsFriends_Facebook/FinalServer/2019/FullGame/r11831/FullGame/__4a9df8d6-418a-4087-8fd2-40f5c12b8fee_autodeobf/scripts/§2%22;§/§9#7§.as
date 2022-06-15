package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§&e§;
   import §#,§.§=!7§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §-#o§.§-!w§;
   import §5"t§.§<#r§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §9#7§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §3t§:Number = 0.5;
      
      public static var §>#y§:String = "";
       
      
      protected var §!"x§:Boolean = false;
      
      protected var §&!5§:§]$+§;
      
      protected var §']§:§]$+§;
      
      protected var §=#[§:MovieClip;
      
      protected var §">§:Array;
      
      protected var §=e§:Array;
      
      protected var §^!]§:int = 0;
      
      protected var §<[§:int = 0;
      
      protected var §9N§:int = 0;
      
      protected var §1#1§:Boolean = false;
      
      protected var §;@§:§7$C§ = null;
      
      protected var §[!7§:Dictionary;
      
      protected var §]#j§:Array;
      
      protected var §[!p§:Array;
      
      protected var §4!§:§<#r§;
      
      protected var §>!j§:Number = 0;
      
      public function §9#7§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initView();
         while(this.§']§.mClip.numChildren > 0)
         {
            this.§']§.mClip.removeChildAt(0);
         }
         this.§=e§ = [];
         this.§">§ = [];
      }
      
      protected function initView() : void
      {
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelSelection[0]);
         this.§']§ = §[$5§.getItemByName("Container_LevelRepeaters") as §]$+§;
         this.§&!5§ = §[$5§.getItemByName("Container_LevelSelection") as §]$+§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.§6#K§.clearLevel();
         §7n§.§6#K§.setVisible(false);
         this.initLevelsRepeater();
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§=e§.length == 1)
         {
            (§[$5§.getItemByName("Button_Prev") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_Next") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).setVisibility(false);
         }
         else
         {
            (§[$5§.getItemByName("Button_Prev") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Next") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).setVisibility(true);
         }
         this.§>!j§ = this.§']§.x;
         if(§[$5§.stage)
         {
            §[$5§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
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
         this.§%#%§();
         this.§6c§();
      }
      
      protected function §%#%§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§">§.length)
         {
            if(-this.§']§.x >= this.§=e§[_loc1_].x && -this.§>!j§ < this.§=e§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§">§.length)
               {
                  this.§">§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9N§ = _loc1_;
               this.§">§[_loc1_].gotoAndStop("Selected");
               (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).x = this.§">§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§']§.x <= this.§=e§[_loc1_].x && -this.§>!j§ > this.§=e§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§">§.length)
               {
                  this.§">§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9N§ = _loc1_;
               this.§">§[_loc1_].gotoAndStop("Selected");
               (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).x = this.§">§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§9N§ != this.§^!]§)
         {
            if(this.§^!]§ > this.§9N§)
            {
               this.§<[§ = this.§9N§ + 1;
            }
            else if(this.§^!]§ < this.§9N§)
            {
               this.§<[§ = this.§9N§ - 1;
            }
            else
            {
               this.§<[§ = this.§9N§;
            }
            this.§4!§.§3#w§(this.§]#j§[this.§<[§].red,this.§]#j§[this.§<[§].green,this.§]#j§[this.§<[§].blue);
         }
         this.§>!j§ = this.§']§.x;
      }
      
      protected function §6c§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=e§.length)
         {
            _loc2_ = this.§']§.x + this.§=e§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§=e§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§=e§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§=e§[_loc1_].mClip.alpha < 1)
            {
               (this.§=e§[_loc1_] as §&e§).setEnabled(false);
            }
            else
            {
               (this.§=e§[_loc1_] as §&e§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§[$5§.stage)
         {
            §[$5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyEvent);
         }
         super.deActivate();
         this.§9r§();
         (§[$5§.getItemByName("Button_Back") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mLevelManager.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§;@§)
         {
            this.§;@§.stop();
            this.§;@§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         if(param2.length > 0 && param3 is §=!7§)
         {
            if((param3 as §=!7§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §=!7§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!this.§1#1§)
               {
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §1!L§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§8$0§.STATE_NAME);
               break;
            case "NEXT":
               this.gotoNextPage();
               break;
            case "PREV":
               this.gotoPrevPage();
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function gotoNextPage() : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         if(!this.§1#1§)
         {
            ++this.§^!]§;
            this.moveToPage(this.§^!]§);
         }
      }
      
      protected function gotoPrevPage() : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         if(!this.§1#1§)
         {
            --this.§^!]§;
            this.moveToPage(this.§^!]§);
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
         this.§]#j§ = [];
         this.§[!p§ = [];
         var _loc2_:§ T§ = mLevelManager.getEpisode(mLevelManager.currentEpisode);
         this.§^!]§ = _loc2_.currentPage;
         this.§<[§ = this.§^!]§;
         this.§9N§ = this.§^!]§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ "&§)
         {
            _loc4_ = _loc2_.§3$0§(_loc3_);
            this.§]#j§.push(_loc2_.§,$?§(_loc3_));
            this.§[!p§.push(_loc2_.§%"4§(_loc3_));
            _loc1_ = this.§ !-§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§4!§ = new §<#r§(this.§]#j§[this.§^!]§].red,this.§]#j§[this.§^!]§].green,this.§]#j§[this.§^!]§].blue,1);
         §[$5§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§4!§);
         if(_loc2_.§,,§)
         {
            _loc6_ = new (_loc5_ = §6$A§.§1!m§(_loc2_.§,,§))();
            §[$5§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §[$5§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§;$;§)
         {
            _loc8_ = new (_loc7_ = §6$A§.§1!m§(_loc2_.§;$;§))();
            §[$5§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §[$5§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§-#@§();
         if(§>#y§ == StateCutScene.STATE_NAME)
         {
            §>#y§ = "";
            this.moveToPage(this.§9N§);
         }
         else
         {
            this.moveToPage(this.§^!]§,true);
         }
      }
      
      protected function § !-§(param1:Array, param2:int, param3:Number, param4:§ T§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §6$A§.§1!m§(this.§[!p§[param2]);
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
         _loc8_.@button = this.§[!p§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§&e§;
         (_loc9_ = new §&e§(_loc8_,this.§']§,null,null)).§<$5§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§']§.§'!S§(_loc9_);
         this.§=e§.push(_loc9_);
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
      
      protected function §-#@§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§=e§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§[!7§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§=e§.length)
         {
            _loc1_ = §6$A§.§1!m§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsBase.screenWidth / 2 + _loc3_ - this.§=e§.length * _loc2_.width / 2;
            _loc2_.y = (§[$5§.getItemByName("Button_Next") as § !>§).y - _loc2_.height / 2;
            if(_loc4_ == this.§^!]§)
            {
               _loc2_.gotoAndStop("Selected");
               (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).x = _loc2_.x;
               (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§&!5§.mClip.addChild(_loc2_);
            this.§[!7§[_loc2_] = _loc4_;
            this.§">§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§=e§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§[$5§.getItemByName("Button_Next") as § !>§).x = AngryBirdsBase.screenWidth / 2;
         (§[$5§.getItemByName("Button_Prev") as § !>§).x = AngryBirdsBase.screenWidth / 2;
         (§[$5§.getItemByName("Button_Next") as § !>§).x = (§[$5§.getItemByName("Button_Next") as § !>§).x + (_loc3_ + 10);
         (§[$5§.getItemByName("Button_Prev") as § !>§).x = (§[$5§.getItemByName("Button_Prev") as § !>§).x - (_loc3_ + 10);
      }
      
      protected function §9r§() : void
      {
         if(this.§4!§)
         {
            this.§4!§.§"#%§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§">§.length)
         {
            if(this.§&!5§.mClip.contains(this.§">§[_loc1_]))
            {
               this.§">§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
               this.§&!5§.mClip.removeChild(this.§">§[_loc1_]);
            }
            _loc1_++;
         }
         this.§">§ = [];
         this.§']§.§7!d§();
         this.§=e§ = [];
      }
      
      protected function §4;§(param1:MouseEvent) : void
      {
         if(!this.§1#1§)
         {
            this.moveToPage(this.§[!7§[param1.target]);
         }
      }
      
      protected function §>#m§(param1:MouseEvent) : void
      {
         if(!this.§1#1§)
         {
            §1!L§(§9#7§.STATE_NAME);
         }
      }
      
      protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
         this.§1#1§ = true;
         if(param1 > this.§=e§.length - 1)
         {
            param1 = this.§=e§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§^!]§ = param1;
         if(this.§^!]§ > this.§9N§)
         {
            this.§<[§ = this.§9N§ + 1;
         }
         else if(this.§^!]§ < this.§9N§)
         {
            this.§<[§ = this.§9N§ - 1;
         }
         var _loc3_:Number = -this.§=e§[param1].x;
         var _loc4_:Number = this.§=e§[param1].x + this.§']§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §3t§;
         if(this.§;@§ != null)
         {
            this.§;@§.stop();
         }
         if(param2)
         {
            this.§']§.x = _loc3_;
         }
         else
         {
            this.§;@§ = §"!&§.§`"H§.§1"W§(this.§']§,{"x":_loc3_},null,_loc5_,§-!w§.easeOut);
            this.§;@§.onComplete = this.§do §;
         }
         if(param2)
         {
            this.§do §();
         }
         else
         {
            this.§;@§.play();
         }
      }
      
      protected function §do §() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§">§.length)
         {
            if(_loc1_ == this.§^!]§)
            {
               this.§">§[_loc1_].gotoAndStop("Selected");
               (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).x = this.§">§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§">§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§1#1§ = false;
         mLevelManager.getEpisode(mLevelManager.currentEpisode).currentPage = this.§^!]§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).§2"<§.text = mLevelManager.getEpisode(mLevelManager.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
