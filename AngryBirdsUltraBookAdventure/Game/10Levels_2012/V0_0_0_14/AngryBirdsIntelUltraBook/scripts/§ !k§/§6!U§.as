package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import §`M§.§>g§;
   import §`M§.§[A§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!U§ extends §+_§
   {
      
      public static const §3F§:String = "LevelSelectionState";
      
      protected static const §-,§:Number = 0.5;
      
      public static var §2s§:String = "";
       
      
      protected var §>!0§:Boolean = false;
      
      protected var §;=§:§9!#§;
      
      protected var §>!2§:§9!#§;
      
      protected var §2!G§:MovieClip;
      
      protected var §]!o§:Array;
      
      protected var §7z§:Array;
      
      protected var §>!F§:int = 0;
      
      protected var §9!;§:int = 0;
      
      protected var §7O§:int = 0;
      
      protected var §%[§:Boolean = false;
      
      protected var §,P§:§4F§ = null;
      
      protected var §?!R§:Dictionary;
      
      protected var §'!,§:Array;
      
      protected var §;A§:Array;
      
      protected var §++§:§9!b§;
      
      protected var §3!E§:Number = 0;
      
      public function §6!U§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§>!2§.mClip.numChildren > 0)
         {
            this.§>!2§.mClip.removeChildAt(0);
         }
         this.§7z§ = [];
         this.§]!o§ = [];
      }
      
      protected function initView() : void
      {
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelSelection[0]);
         this.§>!2§ = §`-§.getItemByName("Container_LevelRepeaters") as §9!#§;
         this.§;=§ = §`-§.getItemByName("Container_LevelSelection") as §9!#§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §4!]§.§8C§.clearLevel();
         §4!]§.§8C§.§1B§(false);
         this.initLevelsRepeater();
         AngryBirdsFP11.playThemeMusic();
         if(this.§7z§.length == 1)
         {
            (§`-§.getItemByName("Button_Prev") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_Next") as §,c§).setVisibility(false);
            (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).setVisibility(false);
         }
         else
         {
            (§`-§.getItemByName("Button_Prev") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Next") as §,c§).setVisibility(true);
            (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).setVisibility(true);
         }
         this.§3!E§ = this.§>!2§.x;
         if(§`-§.stage)
         {
            §`-§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§4R§);
         }
      }
      
      protected function §4R§(param1:KeyboardEvent) : void
      {
         if(this.§7z§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§`!A§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§8!#§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?Y§();
         this.§=p§();
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      protected function §?Y§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!o§.length)
         {
            if(-this.§>!2§.x >= this.§7z§[_loc1_].x && -this.§3!E§ < this.§7z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!o§.length)
               {
                  this.§]!o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7O§ = _loc1_;
               this.§]!o§[_loc1_].gotoAndStop("Selected");
               (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§>!2§.x <= this.§7z§[_loc1_].x && -this.§3!E§ > this.§7z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!o§.length)
               {
                  this.§]!o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7O§ = _loc1_;
               this.§]!o§[_loc1_].gotoAndStop("Selected");
               (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§7O§ != this.§>!F§)
         {
            if(this.§>!F§ > this.§7O§)
            {
               this.§9!;§ = this.§7O§ + 1;
            }
            else if(this.§>!F§ < this.§7O§)
            {
               this.§9!;§ = this.§7O§ - 1;
            }
            else
            {
               this.§9!;§ = this.§7O§;
            }
            this.§++§.§?!u§(this.§'!,§[this.§9!;§].red,this.§'!,§[this.§9!;§].green,this.§'!,§[this.§9!;§].blue);
         }
         this.§3!E§ = this.§>!2§.x;
      }
      
      protected function §=p§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7z§.length)
         {
            _loc2_ = this.§>!2§.x + this.§7z§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§7z§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§7z§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§7z§[_loc1_].mClip.alpha < 1)
            {
               (this.§7z§[_loc1_] as §&W§).setEnabled(false);
            }
            else
            {
               (this.§7z§[_loc1_] as §&W§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§`-§.stage)
         {
            §`-§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§4R§);
         }
         super.deActivate();
         this.§1J§();
         (§`-§.getItemByName("Button_Back") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§<5§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§,P§)
         {
            this.§,P§.stop();
            this.§,P§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         if(param2.length > 0 && param3 is §>g§)
         {
            if((param3 as §>g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §>g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§%[§)
               {
                  LevelManager.§9!d§(LevelManager.§%e§(param2.toLowerCase()));
                  mNextState = StateCutScene.§3F§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §6!H§.playSound("Menu_Back");
               mNextState = §?U§.§3F§;
               break;
            case "NEXT":
               this.§8!#§();
               break;
            case "PREV":
               this.§`!A§();
               break;
            case "FULLSCREEN_BUTTON":
               §6!H§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      protected function §8!#§() : void
      {
         §6!H§.playSound("Menu_Confirm");
         if(!this.§%[§)
         {
            ++this.§>!F§;
            this.§try§(this.§>!F§);
         }
      }
      
      protected function §`!A§() : void
      {
         §6!H§.playSound("Menu_Confirm");
         if(!this.§%[§)
         {
            --this.§>!F§;
            this.§try§(this.§>!F§);
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
         this.§'!,§ = [];
         this.§;A§ = [];
         this.§>!F§ = LevelManager.§'v§(LevelManager.§;`§).§-+§;
         this.§9!;§ = this.§>!F§;
         this.§7O§ = this.§>!F§;
         var _loc2_:§@+§ = LevelManager.§'v§(LevelManager.§;`§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§=H§(_loc2_.pageIndexes[_loc3_]);
            this.§'!,§.push(_loc2_.§8=§(_loc3_));
            this.§;A§.push(_loc2_.§%c§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§++§ = new §9!b§(this.§'!,§[this.§>!F§].red,this.§'!,§[this.§>!F§].green,this.§'!,§[this.§>!F§].blue,1);
         §`-§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§++§);
         if(_loc2_.§0l§)
         {
            _loc6_ = new (_loc5_ = §9!N§.§0!k§(_loc2_.§0l§))();
            §`-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §`-§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§1!S§)
         {
            _loc8_ = new (_loc7_ = §9!N§.§0!k§(_loc2_.§1!S§))();
            §`-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §`-§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§!!!§();
         if(§2s§ == StateCutScene.§3F§)
         {
            §2s§ = "";
            this.§try§(this.§7O§);
         }
         else
         {
            this.§try§(this.§>!F§,true);
         }
      }
      
      protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§@+§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §9!N§.§0!k§(this.§;A§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§2!y§)
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
         _loc8_.@button = this.§;A§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§[A§;
         (_loc9_ = new §[A§(_loc8_,this.§>!2§,null,null)).§@!+§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>!2§.addComponent(_loc9_);
         this.§7z§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§;!Z§);
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
      
      protected function §!!!§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§7z§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§?!R§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§7z§.length)
         {
            _loc1_ = §9!N§.§0!k§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§;!Z§ / 2 + _loc3_ - this.§7z§.length * _loc2_.width / 2;
            _loc2_.y = (§`-§.getItemByName("Button_Next") as §,c§).y - _loc2_.height / 2;
            if(_loc4_ == this.§>!F§)
            {
               _loc2_.gotoAndStop("Selected");
               (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = _loc2_.x;
               (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§;=§.mClip.addChild(_loc2_);
            this.§?!R§[_loc2_] = _loc4_;
            this.§]!o§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§7z§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`-§.getItemByName("Button_Next") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
         (§`-§.getItemByName("Button_Prev") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
         (§`-§.getItemByName("Button_Next") as §,c§).x = (§`-§.getItemByName("Button_Next") as §,c§).x + (_loc3_ + 10);
         (§`-§.getItemByName("Button_Prev") as §,c§).x = (§`-§.getItemByName("Button_Prev") as §,c§).x - (_loc3_ + 10);
      }
      
      protected function §1J§() : void
      {
         if(this.§++§)
         {
            this.§++§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!o§.length)
         {
            if(this.§;=§.mClip.contains(this.§]!o§[_loc1_]))
            {
               this.§]!o§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
               this.§;=§.mClip.removeChild(this.§]!o§[_loc1_]);
            }
            _loc1_++;
         }
         this.§]!o§ = [];
         while(this.§>!2§.mClip.numChildren > 0)
         {
            this.§>!2§.mClip.removeChildAt(0);
         }
         this.§7z§ = [];
      }
      
      protected function §#p§(param1:MouseEvent) : void
      {
         if(!this.§%[§)
         {
            this.§try§(this.§?!R§[param1.target]);
         }
      }
      
      protected function §4!>§(param1:MouseEvent) : void
      {
         if(!this.§%[§)
         {
            mNextState = §6!U§.§3F§;
         }
      }
      
      protected function §try§(param1:int, param2:Boolean = false) : void
      {
         this.§%[§ = true;
         if(param1 > this.§7z§.length - 1)
         {
            param1 = this.§7z§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§>!F§ = param1;
         if(this.§>!F§ > this.§7O§)
         {
            this.§9!;§ = this.§7O§ + 1;
         }
         else if(this.§>!F§ < this.§7O§)
         {
            this.§9!;§ = this.§7O§ - 1;
         }
         var _loc3_:Number = -this.§7z§[param1].x;
         var _loc4_:Number = this.§7z§[param1].x + this.§>!2§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §-,§;
         if(this.§,P§ != null)
         {
            this.§,P§.stop();
         }
         if(param2)
         {
            this.§>!2§.x = _loc3_;
         }
         else
         {
            this.§,P§ = §5+§.§^Z§.§=!a§(this.§>!2§,{"x":_loc3_},null,_loc5_,§5+§.§^E§);
            this.§,P§.onComplete = this.§7g§;
         }
         if(param2)
         {
            this.§7g§();
         }
         else
         {
            this.§,P§.play();
         }
      }
      
      protected function §7g§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!o§.length)
         {
            if(_loc1_ == this.§>!F§)
            {
               this.§]!o§[_loc1_].gotoAndStop("Selected");
               (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).x = this.§]!o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§]!o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%[§ = false;
         LevelManager.§'v§(LevelManager.§;`§).§-+§ = this.§>!F§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).§!!2§.text = LevelManager.§'v§(LevelManager.§;`§).pageIndexes[param1];
      }
   }
}
