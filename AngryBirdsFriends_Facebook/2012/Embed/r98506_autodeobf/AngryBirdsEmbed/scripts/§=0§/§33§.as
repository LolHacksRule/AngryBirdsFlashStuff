package §=0§
{
   import §+n§.§&+§;
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§#!$§;
   import §3'§.§5I§;
   import §3'§.§5f§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §74§.§1!C§;
   import §8!G§.§-Z§;
   import §8!G§.§>!C§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §33§ extends §`U§
   {
      
      public static const §?1§:String = "LevelSelectionState";
      
      protected static const §8m§:Number = 0.5;
      
      public static var §3d§:String = "";
       
      
      protected var §`!+§:Boolean = false;
      
      protected var §&_§:§8I§;
      
      protected var §;!4§:§8I§;
      
      protected var §0c§:MovieClip;
      
      protected var §'!2§:Array;
      
      protected var § g§:Array;
      
      protected var §1!1§:int = 0;
      
      protected var §`$§:int = 0;
      
      protected var §+"§:int = 0;
      
      protected var §!c§:Boolean = false;
      
      protected var §^v§:§7I§ = null;
      
      protected var §4H§:Dictionary;
      
      protected var §<8§:Array;
      
      protected var §-u§:Array;
      
      protected var §-t§:§1!C§;
      
      protected var §+!1§:Number = 0;
      
      public function §33§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§<9§();
         while(this.§;!4§.mClip.numChildren > 0)
         {
            this.§;!4§.mClip.removeChildAt(0);
         }
         this.§ g§ = [];
         this.§'!2§ = [];
      }
      
      protected function §<9§() : void
      {
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelSelection[0]);
         this.§;!4§ = §4G§.getItemByName("Container_LevelRepeaters") as §8I§;
         this.§&_§ = §4G§.getItemByName("Container_LevelSelection") as §8I§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^?§.§]!%§.clearLevel();
         §^?§.§]!%§.§ U§(false);
         this.§%!E§();
         this.§`!@§();
         if(this.§ g§.length == 1)
         {
            (§4G§.getItemByName("Button_Prev") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_Next") as §5I§).setVisibility(false);
            (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).setVisibility(false);
         }
         else
         {
            (§4G§.getItemByName("Button_Prev") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_Next") as §5I§).setVisibility(true);
            (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).setVisibility(true);
         }
         this.§+!1§ = this.§;!4§.x;
         if(§4G§.stage)
         {
            §4G§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§5Q§);
         }
      }
      
      protected function §`!@§() : void
      {
         AngryBirdsFP11.§`!@§();
      }
      
      protected function §5Q§(param1:KeyboardEvent) : void
      {
         if(this.§ g§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§7Q§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§]r§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!H§();
         this.§3p§();
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      protected function §^!H§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            if(-this.§;!4§.x >= this.§ g§[_loc1_].x && -this.§+!1§ < this.§ g§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'!2§.length)
               {
                  this.§'!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§+"§ = _loc1_;
               this.§'!2§[_loc1_].gotoAndStop("Selected");
               (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).x = this.§'!2§[_loc1_].x;
               this.§'G§(_loc1_);
            }
            if(-this.§;!4§.x <= this.§ g§[_loc1_].x && -this.§+!1§ > this.§ g§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'!2§.length)
               {
                  this.§'!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§+"§ = _loc1_;
               this.§'!2§[_loc1_].gotoAndStop("Selected");
               (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).x = this.§'!2§[_loc1_].x;
               this.§'G§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§+"§ != this.§1!1§)
         {
            if(this.§1!1§ > this.§+"§)
            {
               this.§`$§ = this.§+"§ + 1;
            }
            else if(this.§1!1§ < this.§+"§)
            {
               this.§`$§ = this.§+"§ - 1;
            }
            else
            {
               this.§`$§ = this.§+"§;
            }
            if(this.§<8§[this.§`$§])
            {
               this.§-t§.§2b§(this.§<8§[this.§`$§].red,this.§<8§[this.§`$§].green,this.§<8§[this.§`$§].blue);
            }
         }
         this.§+!1§ = this.§;!4§.x;
      }
      
      protected function §3p§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ g§.length)
         {
            _loc2_ = this.§;!4§.x + this.§ g§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§ g§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§ g§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§ g§[_loc1_].mClip.alpha < 1)
            {
               (this.§ g§[_loc1_] as §&+§).setEnabled(false);
            }
            else
            {
               (this.§ g§[_loc1_] as §&+§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§4G§.stage)
         {
            §4G§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§5Q§);
         }
         super.deActivate();
         this.§!!-§();
         (§4G§.getItemByName("Button_Back") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §-Z§.§,!#§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§^v§)
         {
            this.§^v§.stop();
            this.§^v§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         if(param2.length > 0 && param3 is §#!$§)
         {
            if((param3 as §#!$§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §#!$§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§!c§)
               {
                  §-Z§.§;k§(§-Z§.§"!@§(param2.toLowerCase()));
                  mNextState = StateCutScene.§?1§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §9!0§.§-! §("Menu_Back");
               mNextState = §20§.§?1§;
               break;
            case "NEXT":
               this.§]r§();
               break;
            case "PREV":
               this.§7Q§();
               break;
            case "FULLSCREEN_BUTTON":
               §9!0§.§-! §("Menu_Confirm");
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      protected function §]r§() : void
      {
         §9!0§.§-! §("Menu_Confirm");
         if(!this.§!c§)
         {
            ++this.§1!1§;
            this.§<c§(this.§1!1§);
         }
      }
      
      protected function §7Q§() : void
      {
         §9!0§.§-! §("Menu_Confirm");
         if(!this.§!c§)
         {
            --this.§1!1§;
            this.§<c§(this.§1!1§);
         }
      }
      
      public function §%!E§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§<8§ = [];
         this.§-u§ = [];
         this.§1!1§ = §-Z§.§=!<§(§-Z§.§@!$§).§function§;
         this.§`$§ = this.§1!1§;
         this.§+"§ = this.§1!1§;
         var _loc2_:§>!C§ = §-Z§.§=!<§(§-Z§.§@!$§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§5!#§(_loc2_.pageIndexes[_loc3_]);
            this.§<8§.push(_loc2_.§7!E§(_loc3_));
            this.§-u§.push(_loc2_.§'"§(_loc3_));
            _loc1_ = this.§=!I§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§-t§ = new §1!C§(this.§<8§[this.§1!1§].red,this.§<8§[this.§1!1§].green,this.§<8§[this.§1!1§].blue,1);
         §4G§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§-t§);
         if(_loc2_.§`!A§)
         {
            _loc6_ = new (_loc5_ = §53§.§[N§(_loc2_.§`!A§))();
            §4G§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §4G§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§2;§)
         {
            _loc8_ = new (_loc7_ = §53§.§[N§(_loc2_.§2;§))();
            §4G§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §4G§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§ r§();
         if(§3d§ == StateCutScene.§?1§)
         {
            §3d§ = "";
            this.§<c§(this.§+"§);
         }
         else
         {
            this.§<c§(this.§1!1§,true);
         }
      }
      
      protected function §=!I§(param1:Array, param2:int, param3:Number, param4:§>!C§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §53§.§[N§(this.§-u§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§3j§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§8!=§)
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
         _loc8_.@button = this.§-u§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§5f§;
         (_loc9_ = new §5f§(_loc8_,this.§;!4§,null,null)).§"]§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§;!4§.§<]§(_loc9_);
         this.§ g§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §3j§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§"w§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§=!=§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function § r§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§ g§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§4H§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ g§.length)
         {
            _loc1_ = §53§.§[N§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§ g§.length * _loc2_.width / 2;
            _loc2_.y = (§4G§.getItemByName("Button_Next") as §5I§).y - _loc2_.height / 2;
            if(_loc4_ == this.§1!1§)
            {
               _loc2_.gotoAndStop("Selected");
               (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).x = _loc2_.x;
               (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).y = _loc2_.y - _loc2_.height;
               this.§'G§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§&_§.mClip.addChild(_loc2_);
            this.§4H§[_loc2_] = _loc4_;
            this.§'!2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§&U§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§ g§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§4G§.getItemByName("Button_Next") as §5I§).x = AngryBirdsFP11.screenWidth / 2;
         (§4G§.getItemByName("Button_Prev") as §5I§).x = AngryBirdsFP11.screenWidth / 2;
         (§4G§.getItemByName("Button_Next") as §5I§).x = (§4G§.getItemByName("Button_Next") as §5I§).x + (_loc3_ + 10);
         (§4G§.getItemByName("Button_Prev") as §5I§).x = (§4G§.getItemByName("Button_Prev") as §5I§).x - (_loc3_ + 10);
      }
      
      protected function §!!-§() : void
      {
         if(this.§-t§)
         {
            this.§-t§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            if(this.§&_§.mClip.contains(this.§'!2§[_loc1_]))
            {
               this.§'!2§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§&U§);
               this.§&_§.mClip.removeChild(this.§'!2§[_loc1_]);
            }
            _loc1_++;
         }
         this.§'!2§ = [];
         while(this.§;!4§.mClip.numChildren > 0)
         {
            this.§;!4§.mClip.removeChildAt(0);
         }
         this.§ g§ = [];
      }
      
      protected function §&U§(param1:MouseEvent) : void
      {
         if(!this.§!c§)
         {
            this.§<c§(this.§4H§[param1.target]);
         }
      }
      
      protected function §5v§(param1:MouseEvent) : void
      {
         if(!this.§!c§)
         {
            mNextState = §33§.§?1§;
         }
      }
      
      protected function §<c§(param1:int, param2:Boolean = false) : void
      {
         this.§!c§ = true;
         if(param1 > this.§ g§.length - 1)
         {
            param1 = this.§ g§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§1!1§ = param1;
         if(this.§1!1§ > this.§+"§)
         {
            this.§`$§ = this.§+"§ + 1;
         }
         else if(this.§1!1§ < this.§+"§)
         {
            this.§`$§ = this.§+"§ - 1;
         }
         var _loc3_:Number = -this.§ g§[param1].x;
         var _loc4_:Number = this.§ g§[param1].x + this.§;!4§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §8m§;
         if(this.§^v§ != null)
         {
            this.§^v§.stop();
         }
         if(param2)
         {
            this.§;!4§.x = _loc3_;
         }
         else
         {
            this.§^v§ = §>!2§.§72§.§-z§(this.§;!4§,{"x":_loc3_},null,_loc5_,§>!2§.§ !%§);
            this.§^v§.onComplete = this.§#!C§;
         }
         if(param2)
         {
            this.§#!C§();
         }
         else
         {
            this.§^v§.play();
         }
      }
      
      protected function §#!C§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            if(_loc1_ == this.§1!1§)
            {
               this.§'!2§[_loc1_].gotoAndStop("Selected");
               (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).x = this.§'!2§[_loc1_].x;
               this.§'G§(_loc1_);
            }
            else
            {
               this.§'!2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§!c§ = false;
         §-Z§.§=!<§(§-Z§.§@!$§).§function§ = this.§1!1§;
      }
      
      protected function §'G§(param1:int) : void
      {
         (§4G§.getItemByName("TextField_LevelNumberSmall") as §6k§).§#Y§.text = §-Z§.§=!<§(§-Z§.§@!$§).pageIndexes[param1];
      }
   }
}
