package §=!0§
{
   import §!t§.§%5§;
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§@R§;
   import §#@§.§,k§;
   import §,!1§.§]e§;
   import §5F§.§!!A§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §6!L§.§7n§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §?!G§ extends §-!,§
   {
      
      public static const §@§:String = "LevelSelectionState";
      
      protected static const §,i§:Number = 0.5;
      
      public static var §=0§:String = "";
       
      
      protected var §[!F§:Boolean = false;
      
      protected var §,d§:§;1§;
      
      protected var §7l§:§;1§;
      
      protected var §[!B§:MovieClip;
      
      protected var §0f§:Array;
      
      protected var §;!E§:Array;
      
      protected var §%a§:int = 0;
      
      protected var §9W§:int = 0;
      
      protected var §0J§:int = 0;
      
      protected var §,!A§:Boolean = false;
      
      protected var §-D§:§!l§ = null;
      
      protected var §=!H§:Dictionary;
      
      protected var §+!E§:Array;
      
      protected var §>1§:Array;
      
      protected var §9!L§:§,k§;
      
      protected var §,!-§:Number = 0;
      
      public function §?!G§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§6G§();
         while(this.§7l§.mClip.numChildren > 0)
         {
            this.§7l§.mClip.removeChildAt(0);
         }
         this.§;!E§ = [];
         this.§0f§ = [];
      }
      
      protected function §6G§() : void
      {
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelSelection[0]);
         this.§7l§ = §;I§.getItemByName("Container_LevelRepeaters") as §;1§;
         this.§,d§ = §;I§.getItemByName("Container_LevelSelection") as §;1§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0!E§.§9!B§.clearLevel();
         §0!E§.§9!B§.§5!3§(false);
         this.§#!!§();
         this.§!!!§();
         if(this.§;!E§.length == 1)
         {
            (§;I§.getItemByName("Button_Prev") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_Next") as §5b§).setVisibility(false);
            (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).setVisibility(false);
         }
         else
         {
            (§;I§.getItemByName("Button_Prev") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_Next") as §5b§).setVisibility(true);
            (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).setVisibility(true);
         }
         this.§,!-§ = this.§7l§.x;
         if(§;I§.stage)
         {
            §;I§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!7§);
         }
      }
      
      protected function §!!!§() : void
      {
         AngryBirdsFP11.§!!!§();
      }
      
      protected function §6!7§(param1:KeyboardEvent) : void
      {
         if(this.§;!E§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§?!%§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§59§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§54§();
         this.§ 0§();
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §54§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0f§.length)
         {
            if(-this.§7l§.x >= this.§;!E§[_loc1_].x && -this.§,!-§ < this.§;!E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0f§.length)
               {
                  this.§0f§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0J§ = _loc1_;
               this.§0f§[_loc1_].gotoAndStop("Selected");
               (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).x = this.§0f§[_loc1_].x;
               this.§'!1§(_loc1_);
            }
            if(-this.§7l§.x <= this.§;!E§[_loc1_].x && -this.§,!-§ > this.§;!E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0f§.length)
               {
                  this.§0f§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0J§ = _loc1_;
               this.§0f§[_loc1_].gotoAndStop("Selected");
               (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).x = this.§0f§[_loc1_].x;
               this.§'!1§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§0J§ != this.§%a§)
         {
            if(this.§%a§ > this.§0J§)
            {
               this.§9W§ = this.§0J§ + 1;
            }
            else if(this.§%a§ < this.§0J§)
            {
               this.§9W§ = this.§0J§ - 1;
            }
            else
            {
               this.§9W§ = this.§0J§;
            }
            if(this.§+!E§[this.§9W§])
            {
               this.§9!L§.§?=§(this.§+!E§[this.§9W§].red,this.§+!E§[this.§9W§].green,this.§+!E§[this.§9W§].blue);
            }
         }
         this.§,!-§ = this.§7l§.x;
      }
      
      protected function § 0§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!E§.length)
         {
            _loc2_ = this.§7l§.x + this.§;!E§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§;!E§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§;!E§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§;!E§[_loc1_].mClip.alpha < 1)
            {
               (this.§;!E§[_loc1_] as §!!A§).setEnabled(false);
            }
            else
            {
               (this.§;!E§[_loc1_] as §!!A§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§;I§.stage)
         {
            §;I§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6!7§);
         }
         super.deActivate();
         this.§68§();
         (§;I§.getItemByName("Button_Back") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&u§.§'<§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§-D§)
         {
            this.§-D§.stop();
            this.§-D§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         if(param2.length > 0 && param3 is §%5§)
         {
            if((param3 as §%5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §%5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§,!A§)
               {
                  §&u§.§8v§(§&u§.§"V§(param2.toLowerCase()));
                  mNextState = StateCutScene.§@§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §]e§.playSound("Menu_Back");
               mNextState = §&z§.§@§;
               break;
            case "NEXT":
               this.§59§();
               break;
            case "PREV":
               this.§?!%§();
               break;
            case "FULLSCREEN_BUTTON":
               §]e§.playSound("Menu_Confirm");
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      protected function §59§() : void
      {
         §]e§.playSound("Menu_Confirm");
         if(!this.§,!A§)
         {
            ++this.§%a§;
            this.§#!#§(this.§%a§);
         }
      }
      
      protected function §?!%§() : void
      {
         §]e§.playSound("Menu_Confirm");
         if(!this.§,!A§)
         {
            --this.§%a§;
            this.§#!#§(this.§%a§);
         }
      }
      
      public function §#!!§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§+!E§ = [];
         this.§>1§ = [];
         this.§%a§ = §&u§.§"!0§(§&u§.§@!#§).§&<§;
         this.§9W§ = this.§%a§;
         this.§0J§ = this.§%a§;
         var _loc2_:§7n§ = §&u§.§"!0§(§&u§.§@!#§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§!>§(_loc2_.pageIndexes[_loc3_]);
            this.§+!E§.push(_loc2_.§ do§(_loc3_));
            this.§>1§.push(_loc2_.§`!J§(_loc3_));
            _loc1_ = this.§2h§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§9!L§ = new §,k§(this.§+!E§[this.§%a§].red,this.§+!E§[this.§%a§].green,this.§+!E§[this.§%a§].blue,1);
         §;I§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§9!L§);
         if(_loc2_.§?!"§)
         {
            _loc6_ = new (_loc5_ = §[G§.§6u§(_loc2_.§?!"§))();
            §;I§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §;I§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§?]§)
         {
            _loc8_ = new (_loc7_ = §[G§.§6u§(_loc2_.§?]§))();
            §;I§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §;I§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§0!'§();
         if(§=0§ == StateCutScene.§@§)
         {
            §=0§ = "";
            this.§#!#§(this.§0J§);
         }
         else
         {
            this.§#!#§(this.§%a§,true);
         }
      }
      
      protected function §2h§(param1:Array, param2:int, param3:Number, param4:§7n§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §[G§.§6u§(this.§>1§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§5@§.isLevelOpen(_loc10_);
            _loc12_ = this.§-?§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§=o§)
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
         _loc8_.@button = this.§>1§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§@R§;
         (_loc9_ = new §@R§(_loc8_,this.§7l§,null,null)).§[8§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§7l§.addComponent(_loc9_);
         this.§;!E§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§1C§);
      }
      
      protected function §-?§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§5@§.§!W§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§5@§.§!T§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §0!'§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§;!E§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=!H§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§;!E§.length)
         {
            _loc1_ = §[G§.§6u§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§1C§ / 2 + _loc3_ - this.§;!E§.length * _loc2_.width / 2;
            _loc2_.y = (§;I§.getItemByName("Button_Next") as §5b§).y - _loc2_.height / 2;
            if(_loc4_ == this.§%a§)
            {
               _loc2_.gotoAndStop("Selected");
               (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).x = _loc2_.x;
               (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).y = _loc2_.y - _loc2_.height;
               this.§'!1§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§,d§.mClip.addChild(_loc2_);
            this.§=!H§[_loc2_] = _loc4_;
            this.§0f§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4e§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§;!E§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§;I§.getItemByName("Button_Next") as §5b§).x = AngryBirdsFP11.§1C§ / 2;
         (§;I§.getItemByName("Button_Prev") as §5b§).x = AngryBirdsFP11.§1C§ / 2;
         (§;I§.getItemByName("Button_Next") as §5b§).x = (§;I§.getItemByName("Button_Next") as §5b§).x + (_loc3_ + 10);
         (§;I§.getItemByName("Button_Prev") as §5b§).x = (§;I§.getItemByName("Button_Prev") as §5b§).x - (_loc3_ + 10);
      }
      
      protected function §68§() : void
      {
         if(this.§9!L§)
         {
            this.§9!L§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§0f§.length)
         {
            if(this.§,d§.mClip.contains(this.§0f§[_loc1_]))
            {
               this.§0f§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4e§);
               this.§,d§.mClip.removeChild(this.§0f§[_loc1_]);
            }
            _loc1_++;
         }
         this.§0f§ = [];
         while(this.§7l§.mClip.numChildren > 0)
         {
            this.§7l§.mClip.removeChildAt(0);
         }
         this.§;!E§ = [];
      }
      
      protected function §4e§(param1:MouseEvent) : void
      {
         if(!this.§,!A§)
         {
            this.§#!#§(this.§=!H§[param1.target]);
         }
      }
      
      protected function §-!§(param1:MouseEvent) : void
      {
         if(!this.§,!A§)
         {
            mNextState = §?!G§.§@§;
         }
      }
      
      protected function §#!#§(param1:int, param2:Boolean = false) : void
      {
         this.§,!A§ = true;
         if(param1 > this.§;!E§.length - 1)
         {
            param1 = this.§;!E§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%a§ = param1;
         if(this.§%a§ > this.§0J§)
         {
            this.§9W§ = this.§0J§ + 1;
         }
         else if(this.§%a§ < this.§0J§)
         {
            this.§9W§ = this.§0J§ - 1;
         }
         var _loc3_:Number = -this.§;!E§[param1].x;
         var _loc4_:Number = this.§;!E§[param1].x + this.§7l§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §,i§;
         if(this.§-D§ != null)
         {
            this.§-D§.stop();
         }
         if(param2)
         {
            this.§7l§.x = _loc3_;
         }
         else
         {
            this.§-D§ = §5!&§.§@!&§.§9!4§(this.§7l§,{"x":_loc3_},null,_loc5_,§5!&§.§-y§);
            this.§-D§.onComplete = this.§!!F§;
         }
         if(param2)
         {
            this.§!!F§();
         }
         else
         {
            this.§-D§.play();
         }
      }
      
      protected function §!!F§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0f§.length)
         {
            if(_loc1_ == this.§%a§)
            {
               this.§0f§[_loc1_].gotoAndStop("Selected");
               (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).x = this.§0f§[_loc1_].x;
               this.§'!1§(_loc1_);
            }
            else
            {
               this.§0f§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,!A§ = false;
         §&u§.§"!0§(§&u§.§@!#§).§&<§ = this.§%a§;
      }
      
      protected function §'!1§(param1:int) : void
      {
         (§;I§.getItemByName("TextField_LevelNumberSmall") as §>B§).§ !$§.text = §&u§.§"!0§(§&u§.§@!#§).pageIndexes[param1];
      }
   }
}
