package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §!!0§.override;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§8P§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§2!N§;
   import §8]§.§<!7§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §>g§.§-!H§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!C§ extends §0H§
   {
      
      public static const §2`§:String = "LevelSelectionState";
      
      protected static const §;!D§:Number = 0.5;
      
      public static var §<!M§:String = "";
       
      
      protected var §4@§:Boolean = false;
      
      protected var §@Z§:§+a§;
      
      protected var §1y§:§+a§;
      
      protected var § !A§:MovieClip;
      
      protected var §8!D§:Array;
      
      protected var §<!,§:Array;
      
      protected var §each §:int = 0;
      
      protected var §6!0§:int = 0;
      
      protected var §"!E§:int = 0;
      
      protected var §`F§:Boolean = false;
      
      protected var §^i§:§<Q§ = null;
      
      protected var §<?§:Dictionary;
      
      protected var §;$§:Array;
      
      protected var §"U§:Array;
      
      protected var §26§:§-!H§;
      
      protected var §<!F§:Number = 0;
      
      public function §6!C§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§]D§();
         while(this.§1y§.mClip.numChildren > 0)
         {
            this.§1y§.mClip.removeChildAt(0);
         }
         this.§<!,§ = [];
         this.§8!D§ = [];
      }
      
      protected function §]D§() : void
      {
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelSelection[0]);
         this.§1y§ = §<A§.getItemByName("Container_LevelRepeaters") as §+a§;
         this.§@Z§ = §<A§.getItemByName("Container_LevelSelection") as §+a§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[F§.§9u§.clearLevel();
         §[F§.§9u§.§#Q§(false);
         this.§+!7§();
         this.§=0§();
         if(this.§<!,§.length == 1)
         {
            (§<A§.getItemByName("Button_Prev") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_Next") as §-u§).setVisibility(false);
            (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).setVisibility(false);
         }
         else
         {
            (§<A§.getItemByName("Button_Prev") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_Next") as §-u§).setVisibility(true);
            (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).setVisibility(true);
         }
         this.§<!F§ = this.§1y§.x;
         if(§<A§.stage)
         {
            §<A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0y§);
         }
      }
      
      protected function §=0§() : void
      {
         AngryBirdsFP11.§=0§();
      }
      
      protected function §0y§(param1:KeyboardEvent) : void
      {
         if(this.§<!,§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§,g§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§@o§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@X§();
         this.§"Z§();
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      protected function §@X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!D§.length)
         {
            if(-this.§1y§.x >= this.§<!,§[_loc1_].x && -this.§<!F§ < this.§<!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!D§.length)
               {
                  this.§8!D§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§"!E§ = _loc1_;
               this.§8!D§[_loc1_].gotoAndStop("Selected");
               (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).x = this.§8!D§[_loc1_].x;
               this.§=M§(_loc1_);
            }
            if(-this.§1y§.x <= this.§<!,§[_loc1_].x && -this.§<!F§ > this.§<!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!D§.length)
               {
                  this.§8!D§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§"!E§ = _loc1_;
               this.§8!D§[_loc1_].gotoAndStop("Selected");
               (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).x = this.§8!D§[_loc1_].x;
               this.§=M§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§"!E§ != this.§each §)
         {
            if(this.§each § > this.§"!E§)
            {
               this.§6!0§ = this.§"!E§ + 1;
            }
            else if(this.§each § < this.§"!E§)
            {
               this.§6!0§ = this.§"!E§ - 1;
            }
            else
            {
               this.§6!0§ = this.§"!E§;
            }
            if(this.§;$§[this.§6!0§])
            {
               this.§26§.§0!A§(this.§;$§[this.§6!0§].red,this.§;$§[this.§6!0§].green,this.§;$§[this.§6!0§].blue);
            }
         }
         this.§<!F§ = this.§1y§.x;
      }
      
      protected function §"Z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!,§.length)
         {
            _loc2_ = this.§1y§.x + this.§<!,§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§<!,§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§<!,§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§<!,§[_loc1_].mClip.alpha < 1)
            {
               (this.§<!,§[_loc1_] as override).setEnabled(false);
            }
            else
            {
               (this.§<!,§[_loc1_] as override).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§<A§.stage)
         {
            §<A§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0y§);
         }
         super.deActivate();
         this.§;!#§();
         (§<A§.getItemByName("Button_Back") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2h§.§^B§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§^i§)
         {
            this.§^i§.stop();
            this.§^i§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         if(param2.length > 0 && param3 is §<!7§)
         {
            if((param3 as §<!7§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §<!7§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§`F§)
               {
                  §2h§.§2!I§(§2h§.§>w§(param2.toLowerCase()));
                  mNextState = StateCutScene.§2`§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §#-§.playSound("Menu_Back");
               mNextState = § !6§.§2`§;
               break;
            case "NEXT":
               this.§@o§();
               break;
            case "PREV":
               this.§,g§();
               break;
            case "FULLSCREEN_BUTTON":
               §#-§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      protected function §@o§() : void
      {
         §#-§.playSound("Menu_Confirm");
         if(!this.§`F§)
         {
            ++this.§each §;
            this.§<H§(this.§each §);
         }
      }
      
      protected function §,g§() : void
      {
         §#-§.playSound("Menu_Confirm");
         if(!this.§`F§)
         {
            --this.§each §;
            this.§<H§(this.§each §);
         }
      }
      
      public function §+!7§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§;$§ = [];
         this.§"U§ = [];
         this.§each § = §2h§.§&I§(§2h§.§1V§).§`!C§;
         this.§6!0§ = this.§each §;
         this.§"!E§ = this.§each §;
         var _loc2_:§8P§ = §2h§.§&I§(§2h§.§1V§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§case§(_loc2_.pageIndexes[_loc3_]);
            this.§;$§.push(_loc2_.§>K§(_loc3_));
            this.§"U§.push(_loc2_.§6B§(_loc3_));
            _loc1_ = this.§5!8§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§26§ = new §-!H§(this.§;$§[this.§each §].red,this.§;$§[this.§each §].green,this.§;$§[this.§each §].blue,1);
         §<A§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§26§);
         if(_loc2_.§6!>§)
         {
            _loc6_ = new (_loc5_ = §^3§.§+_§(_loc2_.§6!>§))();
            §<A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §<A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§;!K§)
         {
            _loc8_ = new (_loc7_ = §^3§.§+_§(_loc2_.§;!K§))();
            §<A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §<A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2!9§();
         if(§<!M§ == StateCutScene.§2`§)
         {
            §<!M§ = "";
            this.§<H§(this.§"!E§);
         }
         else
         {
            this.§<H§(this.§each §,true);
         }
      }
      
      protected function §5!8§(param1:Array, param2:int, param3:Number, param4:§8P§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §^3§.§+_§(this.§"U§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§ !-§.isLevelOpen(_loc10_);
            _loc12_ = this.§implements§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§9!-§)
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
         _loc8_.@button = this.§"U§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§2!N§;
         (_loc9_ = new §2!N§(_loc8_,this.§1y§,null,null)).§0M§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§1y§.addComponent(_loc9_);
         this.§<!,§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§^@§);
      }
      
      protected function §implements§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§ !-§.§,h§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§ !-§.§^!3§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §2!9§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§<!,§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§<?§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§<!,§.length)
         {
            _loc1_ = §^3§.§+_§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§^@§ / 2 + _loc3_ - this.§<!,§.length * _loc2_.width / 2;
            _loc2_.y = (§<A§.getItemByName("Button_Next") as §-u§).y - _loc2_.height / 2;
            if(_loc4_ == this.§each §)
            {
               _loc2_.gotoAndStop("Selected");
               (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).x = _loc2_.x;
               (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).y = _loc2_.y - _loc2_.height;
               this.§=M§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§@Z§.mClip.addChild(_loc2_);
            this.§<?§[_loc2_] = _loc4_;
            this.§8!D§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!$§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§<!,§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§<A§.getItemByName("Button_Next") as §-u§).x = AngryBirdsFP11.§^@§ / 2;
         (§<A§.getItemByName("Button_Prev") as §-u§).x = AngryBirdsFP11.§^@§ / 2;
         (§<A§.getItemByName("Button_Next") as §-u§).x = (§<A§.getItemByName("Button_Next") as §-u§).x + (_loc3_ + 10);
         (§<A§.getItemByName("Button_Prev") as §-u§).x = (§<A§.getItemByName("Button_Prev") as §-u§).x - (_loc3_ + 10);
      }
      
      protected function §;!#§() : void
      {
         if(this.§26§)
         {
            this.§26§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!D§.length)
         {
            if(this.§@Z§.mClip.contains(this.§8!D§[_loc1_]))
            {
               this.§8!D§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!$§);
               this.§@Z§.mClip.removeChild(this.§8!D§[_loc1_]);
            }
            _loc1_++;
         }
         this.§8!D§ = [];
         while(this.§1y§.mClip.numChildren > 0)
         {
            this.§1y§.mClip.removeChildAt(0);
         }
         this.§<!,§ = [];
      }
      
      protected function §-!$§(param1:MouseEvent) : void
      {
         if(!this.§`F§)
         {
            this.§<H§(this.§<?§[param1.target]);
         }
      }
      
      protected function §2!>§(param1:MouseEvent) : void
      {
         if(!this.§`F§)
         {
            mNextState = §6!C§.§2`§;
         }
      }
      
      protected function §<H§(param1:int, param2:Boolean = false) : void
      {
         this.§`F§ = true;
         if(param1 > this.§<!,§.length - 1)
         {
            param1 = this.§<!,§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§each § = param1;
         if(this.§each § > this.§"!E§)
         {
            this.§6!0§ = this.§"!E§ + 1;
         }
         else if(this.§each § < this.§"!E§)
         {
            this.§6!0§ = this.§"!E§ - 1;
         }
         var _loc3_:Number = -this.§<!,§[param1].x;
         var _loc4_:Number = this.§<!,§[param1].x + this.§1y§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §;!D§;
         if(this.§^i§ != null)
         {
            this.§^i§.stop();
         }
         if(param2)
         {
            this.§1y§.x = _loc3_;
         }
         else
         {
            this.§^i§ = §5^§.§<"§.§^g§(this.§1y§,{"x":_loc3_},null,_loc5_,§5^§.§,3§);
            this.§^i§.onComplete = this.§7!+§;
         }
         if(param2)
         {
            this.§7!+§();
         }
         else
         {
            this.§^i§.play();
         }
      }
      
      protected function §7!+§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!D§.length)
         {
            if(_loc1_ == this.§each §)
            {
               this.§8!D§[_loc1_].gotoAndStop("Selected");
               (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).x = this.§8!D§[_loc1_].x;
               this.§=M§(_loc1_);
            }
            else
            {
               this.§8!D§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§`F§ = false;
         §2h§.§&I§(§2h§.§1V§).§`!C§ = this.§each §;
      }
      
      protected function §=M§(param1:int) : void
      {
         (§<A§.getItemByName("TextField_LevelNumberSmall") as §?N§).§2W§.text = §2h§.§&I§(§2h§.§1V§).pageIndexes[param1];
      }
   }
}
