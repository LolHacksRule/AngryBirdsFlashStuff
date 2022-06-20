package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§+w§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§5!a§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §8"D§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §-!9§:Number = 0.5;
      
      public static var §5;§:String = "";
       
      
      protected var §>"&§:Boolean = false;
      
      protected var §]!d§:§08§;
      
      protected var §4!5§:§08§;
      
      protected var §71§:MovieClip;
      
      protected var §#o§:Array;
      
      protected var §>]§:Array;
      
      protected var §#!L§:int = 0;
      
      protected var §1m§:int = 0;
      
      protected var §`&§:int = 0;
      
      protected var §6!H§:Boolean = false;
      
      protected var §@"0§:§"m§ = null;
      
      protected var §-",§:Dictionary;
      
      protected var §!"E§:Array;
      
      protected var §@H§:Array;
      
      protected var §-9§:§%1§;
      
      protected var final:Number = 0;
      
      public function §8"D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initView();
         while(this.§4!5§.mClip.numChildren > 0)
         {
            this.§4!5§.mClip.removeChildAt(0);
         }
         this.§>]§ = [];
         this.§#o§ = [];
      }
      
      protected function initView() : void
      {
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelSelection[0]);
         this.§4!5§ = §6w§.getItemByName("Container_LevelRepeaters") as §08§;
         this.§]!d§ = §6w§.getItemByName("Container_LevelSelection") as §08§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#6§.§6!z§.clearLevel();
         §#6§.§6!z§.§3H§(false);
         this.initLevelsRepeater();
         this.playThemeMusic();
         if(this.§>]§.length == 1)
         {
            (§6w§.getItemByName("Button_Prev") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_Next") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).setVisibility(false);
         }
         else
         {
            (§6w§.getItemByName("Button_Prev") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Next") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).setVisibility(true);
         }
         this.final = this.§4!5§.x;
         if(§6w§.stage)
         {
            §6w§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2!N§);
         }
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      protected function §2!N§(param1:KeyboardEvent) : void
      {
         if(this.§>]§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§3Z§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§'!S§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-"7§();
         this.§>!p§();
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      protected function §-"7§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#o§.length)
         {
            if(-this.§4!5§.x >= this.§>]§[_loc1_].x && -this.final < this.§>]§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#o§.length)
               {
                  this.§#o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`&§ = _loc1_;
               this.§#o§[_loc1_].gotoAndStop("Selected");
               (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            if(-this.§4!5§.x <= this.§>]§[_loc1_].x && -this.final > this.§>]§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#o§.length)
               {
                  this.§#o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§`&§ = _loc1_;
               this.§#o§[_loc1_].gotoAndStop("Selected");
               (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            _loc1_++;
         }
         if(this.§`&§ != this.§#!L§)
         {
            if(this.§#!L§ > this.§`&§)
            {
               this.§1m§ = this.§`&§ + 1;
            }
            else if(this.§#!L§ < this.§`&§)
            {
               this.§1m§ = this.§`&§ - 1;
            }
            else
            {
               this.§1m§ = this.§`&§;
            }
            if(this.§!"E§[this.§1m§])
            {
               this.§-9§.§[!A§(this.§!"E§[this.§1m§].red,this.§!"E§[this.§1m§].green,this.§!"E§[this.§1m§].blue);
            }
         }
         this.final = this.§4!5§.x;
      }
      
      protected function §>!p§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>]§.length)
         {
            _loc2_ = this.§4!5§.x + this.§>]§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§>]§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§>]§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§>]§[_loc1_].mClip.alpha < 1)
            {
               (this.§>]§[_loc1_] as §7'§).setEnabled(false);
            }
            else
            {
               (this.§>]§[_loc1_] as §7'§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§6w§.stage)
         {
            §6w§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!N§);
         }
         super.deActivate();
         this.§3!y§();
         (§6w§.getItemByName("Button_Back") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         LevelManager.§+!;§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§@"0§)
         {
            this.§@"0§.stop();
            this.§@"0§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         if(param2.length > 0 && param3 is §+w§)
         {
            if((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§6!H§)
               {
                  LevelManager.§-!4§(LevelManager.§;!f§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §>!E§.§7N§("Menu_Back");
               mNextState = §?'§.STATE_NAME;
               break;
            case "NEXT":
               this.§'!S§();
               break;
            case "PREV":
               this.§3Z§();
               break;
            case "FULLSCREEN_BUTTON":
               §>!E§.§7N§("Menu_Confirm");
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      protected function §'!S§() : void
      {
         §>!E§.§7N§("Menu_Confirm");
         if(!this.§6!H§)
         {
            ++this.§#!L§;
            this.§`6§(this.§#!L§);
         }
      }
      
      protected function §3Z§() : void
      {
         §>!E§.§7N§("Menu_Confirm");
         if(!this.§6!H§)
         {
            --this.§#!L§;
            this.§`6§(this.§#!L§);
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
         this.§!"E§ = [];
         this.§@H§ = [];
         this.§#!L§ = LevelManager.§;X§(LevelManager.§2?§).§9!f§;
         this.§1m§ = this.§#!L§;
         this.§`&§ = this.§#!L§;
         var _loc2_:§>x§ = LevelManager.§;X§(LevelManager.§2?§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§<6§(_loc2_.pageIndexes[_loc3_]);
            this.§!"E§.push(_loc2_.§^" §(_loc3_));
            this.§@H§.push(_loc2_.§?T§(_loc3_));
            _loc1_ = this.§[k§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§-9§ = new §%1§(this.§!"E§[this.§#!L§].red,this.§!"E§[this.§#!L§].green,this.§!"E§[this.§#!L§].blue,1);
         §6w§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§-9§);
         if(_loc2_.§return§)
         {
            _loc6_ = new (_loc5_ = §8B§.§6"C§(_loc2_.§return§))();
            §6w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §6w§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§!!u§)
         {
            _loc8_ = new (_loc7_ = §8B§.§6"C§(_loc2_.§!!u§))();
            §6w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §6w§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§3!j§();
         if(§5;§ == StateCutScene.STATE_NAME)
         {
            §5;§ = "";
            this.§`6§(this.§`&§);
         }
         else
         {
            this.§`6§(this.§#!L§,true);
         }
      }
      
      protected function §[k§(param1:Array, param2:int, param3:Number, param4:§>x§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §8B§.§6"C§(this.§@H§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.makeButtonForLevel(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§4x§)
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
         _loc8_.@button = this.§@H§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§5!a§;
         (_loc9_ = new §5!a§(_loc8_,this.§4!5§,null,null)).§^,§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§4!5§.addComponent(_loc9_);
         this.§>]§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§=!u§);
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
      
      protected function §3!j§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§>]§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§-",§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§>]§.length)
         {
            _loc1_ = §8B§.§6"C§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§=!u§ / 2 + _loc3_ - this.§>]§.length * _loc2_.width / 2;
            _loc2_.y = (§6w§.getItemByName("Button_Next") as §^!D§).y - _loc2_.height / 2;
            if(_loc4_ == this.§#!L§)
            {
               _loc2_.gotoAndStop("Selected");
               (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = _loc2_.x;
               (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).y = _loc2_.y - _loc2_.height;
               this.updatePageNumber(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§]!d§.mClip.addChild(_loc2_);
            this.§-",§[_loc2_] = _loc4_;
            this.§#o§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§>]§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§6w§.getItemByName("Button_Next") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
         (§6w§.getItemByName("Button_Prev") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
         (§6w§.getItemByName("Button_Next") as §^!D§).x = (§6w§.getItemByName("Button_Next") as §^!D§).x + (_loc3_ + 10);
         (§6w§.getItemByName("Button_Prev") as §^!D§).x = (§6w§.getItemByName("Button_Prev") as §^!D§).x - (_loc3_ + 10);
      }
      
      protected function §3!y§() : void
      {
         if(this.§-9§)
         {
            this.§-9§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§#o§.length)
         {
            if(this.§]!d§.mClip.contains(this.§#o§[_loc1_]))
            {
               this.§#o§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
               this.§]!d§.mClip.removeChild(this.§#o§[_loc1_]);
            }
            _loc1_++;
         }
         this.§#o§ = [];
         while(this.§4!5§.mClip.numChildren > 0)
         {
            this.§4!5§.mClip.removeChildAt(0);
         }
         this.§>]§ = [];
      }
      
      protected function §null §(param1:MouseEvent) : void
      {
         if(!this.§6!H§)
         {
            this.§`6§(this.§-",§[param1.target]);
         }
      }
      
      protected function §"6§(param1:MouseEvent) : void
      {
         if(!this.§6!H§)
         {
            mNextState = §8"D§.STATE_NAME;
         }
      }
      
      protected function §`6§(param1:int, param2:Boolean = false) : void
      {
         this.§6!H§ = true;
         if(param1 > this.§>]§.length - 1)
         {
            param1 = this.§>]§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#!L§ = param1;
         if(this.§#!L§ > this.§`&§)
         {
            this.§1m§ = this.§`&§ + 1;
         }
         else if(this.§#!L§ < this.§`&§)
         {
            this.§1m§ = this.§`&§ - 1;
         }
         var _loc3_:Number = -this.§>]§[param1].x;
         var _loc4_:Number = this.§>]§[param1].x + this.§4!5§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §-!9§;
         if(this.§@"0§ != null)
         {
            this.§@"0§.stop();
         }
         if(param2)
         {
            this.§4!5§.x = _loc3_;
         }
         else
         {
            this.§@"0§ = §>!+§.§;"§.§^!K§(this.§4!5§,{"x":_loc3_},null,_loc5_,§>!+§.§;U§);
            this.§@"0§.onComplete = this.§[5§;
         }
         if(param2)
         {
            this.§[5§();
         }
         else
         {
            this.§@"0§.play();
         }
      }
      
      protected function §[5§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#o§.length)
         {
            if(_loc1_ == this.§#!L§)
            {
               this.§#o§[_loc1_].gotoAndStop("Selected");
               (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).x = this.§#o§[_loc1_].x;
               this.updatePageNumber(_loc1_);
            }
            else
            {
               this.§#o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§6!H§ = false;
         LevelManager.§;X§(LevelManager.§2?§).§9!f§ = this.§#!L§;
      }
      
      protected function updatePageNumber(param1:int) : void
      {
         (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).§5!=§.text = LevelManager.§;X§(LevelManager.§2?§).pageIndexes[param1];
      }
   }
}
