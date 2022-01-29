package § true§
{
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §"!B§.§]!1§;
   import §"!B§.§const§;
   import §+[§.§%G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§!E§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §]!=§.§]!"§;
   import §`! §.§!!K§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §&!F§ extends §,!?§
   {
      
      public static const §`W§:String = "LevelSelectionState";
      
      protected static const §6t§:Number = 0.5;
      
      public static var §;!C§:String = "";
       
      
      protected var §`H§:Boolean = false;
      
      protected var §,3§:§58§;
      
      protected var §7e§:§58§;
      
      protected var §5!L§:MovieClip;
      
      protected var §@L§:Array;
      
      protected var §&!,§:Array;
      
      protected var §@d§:int = 0;
      
      protected var §2!4§:int = 0;
      
      protected var §5J§:int = 0;
      
      protected var §'b§:Boolean = false;
      
      protected var §5!'§:§'a§ = null;
      
      protected var §`s§:Dictionary;
      
      protected var §6#§:Array;
      
      protected var §&F§:Array;
      
      protected var § 5§:§!!K§;
      
      protected var §'D§:Number = 0;
      
      public function §&!F§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?=§();
         while(this.§7e§.mClip.numChildren > 0)
         {
            this.§7e§.mClip.removeChildAt(0);
         }
         this.§&!,§ = [];
         this.§@L§ = [];
      }
      
      protected function §?=§() : void
      {
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelSelection[0]);
         this.§7e§ = §while§.getItemByName("Container_LevelRepeaters") as §58§;
         this.§,3§ = §while§.getItemByName("Container_LevelSelection") as §58§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[+§.§,!&§.clearLevel();
         §[+§.§,!&§.§`9§(false);
         this.§5Y§();
         this.§&n§();
         if(this.§&!,§.length == 1)
         {
            (§while§.getItemByName("Button_Prev") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_Next") as §+!9§).setVisibility(false);
            (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).setVisibility(false);
         }
         else
         {
            (§while§.getItemByName("Button_Prev") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_Next") as §+!9§).setVisibility(true);
            (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).setVisibility(true);
         }
         this.§'D§ = this.§7e§.x;
         if(§while§.stage)
         {
            §while§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§]s§);
         }
      }
      
      protected function §&n§() : void
      {
         AngryBirdsFP11.§&n§();
      }
      
      protected function §]s§(param1:KeyboardEvent) : void
      {
         if(this.§&!,§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§;7§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§;u§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]!4§();
         this.§3t§();
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      protected function §]!4§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            if(-this.§7e§.x >= this.§&!,§[_loc1_].x && -this.§'D§ < this.§&!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@L§.length)
               {
                  this.§@L§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5J§ = _loc1_;
               this.§@L§[_loc1_].gotoAndStop("Selected");
               (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).x = this.§@L§[_loc1_].x;
               this.§]2§(_loc1_);
            }
            if(-this.§7e§.x <= this.§&!,§[_loc1_].x && -this.§'D§ > this.§&!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@L§.length)
               {
                  this.§@L§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5J§ = _loc1_;
               this.§@L§[_loc1_].gotoAndStop("Selected");
               (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).x = this.§@L§[_loc1_].x;
               this.§]2§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§5J§ != this.§@d§)
         {
            if(this.§@d§ > this.§5J§)
            {
               this.§2!4§ = this.§5J§ + 1;
            }
            else if(this.§@d§ < this.§5J§)
            {
               this.§2!4§ = this.§5J§ - 1;
            }
            else
            {
               this.§2!4§ = this.§5J§;
            }
            if(this.§6#§[this.§2!4§])
            {
               this.§ 5§.§^O§(this.§6#§[this.§2!4§].red,this.§6#§[this.§2!4§].green,this.§6#§[this.§2!4§].blue);
            }
         }
         this.§'D§ = this.§7e§.x;
      }
      
      protected function §3t§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!,§.length)
         {
            _loc2_ = this.§7e§.x + this.§&!,§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§&!,§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§&!,§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§&!,§[_loc1_].mClip.alpha < 1)
            {
               (this.§&!,§[_loc1_] as §]!"§).setEnabled(false);
            }
            else
            {
               (this.§&!,§[_loc1_] as §]!"§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§while§.stage)
         {
            §while§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]s§);
         }
         super.deActivate();
         this.§1D§();
         (§while§.getItemByName("Button_Back") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`R§.§[D§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§5!'§)
         {
            this.§5!'§.stop();
            this.§5!'§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         if(param2.length > 0 && param3 is §]!1§)
         {
            if((param3 as §]!1§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §]!1§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§'b§)
               {
                  §`R§.§true §(§`R§.§&!2§(param2.toLowerCase()));
                  mNextState = StateCutScene.§`W§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §%G§.§48§("Menu_Back");
               mNextState = §&D§.§`W§;
               break;
            case "NEXT":
               this.§;u§();
               break;
            case "PREV":
               this.§;7§();
               break;
            case "FULLSCREEN_BUTTON":
               §%G§.§48§("Menu_Confirm");
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      protected function §;u§() : void
      {
         §%G§.§48§("Menu_Confirm");
         if(!this.§'b§)
         {
            ++this.§@d§;
            this.§2v§(this.§@d§);
         }
      }
      
      protected function §;7§() : void
      {
         §%G§.§48§("Menu_Confirm");
         if(!this.§'b§)
         {
            --this.§@d§;
            this.§2v§(this.§@d§);
         }
      }
      
      public function §5Y§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§6#§ = [];
         this.§&F§ = [];
         this.§@d§ = §`R§.§<!I§(§`R§.§=o§).§"!;§;
         this.§2!4§ = this.§@d§;
         this.§5J§ = this.§@d§;
         var _loc2_:§!E§ = §`R§.§<!I§(§`R§.§=o§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§?a§(_loc2_.pageIndexes[_loc3_]);
            this.§6#§.push(_loc2_.§-P§(_loc3_));
            this.§&F§.push(_loc2_.§3!L§(_loc3_));
            _loc1_ = this.§2<§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§ 5§ = new §!!K§(this.§6#§[this.§@d§].red,this.§6#§[this.§@d§].green,this.§6#§[this.§@d§].blue,1);
         §while§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§ 5§);
         if(_loc2_.§4w§)
         {
            _loc6_ = new (_loc5_ = §%!?§.§4"§(_loc2_.§4w§))();
            §while§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §while§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§^+§)
         {
            _loc8_ = new (_loc7_ = §%!?§.§4"§(_loc2_.§^+§))();
            §while§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §while§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§]e§();
         if(§;!C§ == StateCutScene.§`W§)
         {
            §;!C§ = "";
            this.§2v§(this.§5J§);
         }
         else
         {
            this.§2v§(this.§@d§,true);
         }
      }
      
      protected function §2<§(param1:Array, param2:int, param3:Number, param4:§!E§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!?§.§4"§(this.§&F§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§?-§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§^!I§)
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
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§&F§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§const§;
         (_loc9_ = new §const§(_loc8_,this.§7e§,null,null)).§"T§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§7e§.§"&§(_loc9_);
         this.§&!,§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §?-§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§!!#§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§3!3§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §]e§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§&!,§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§`s§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§&!,§.length)
         {
            _loc1_ = §%!?§.§4"§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§&!,§.length * _loc2_.width / 2;
            _loc2_.y = (§while§.getItemByName("Button_Next") as §+!9§).y - _loc2_.height / 2;
            if(_loc4_ == this.§@d§)
            {
               _loc2_.gotoAndStop("Selected");
               (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).x = _loc2_.x;
               (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).y = _loc2_.y - _loc2_.height;
               this.§]2§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§,3§.mClip.addChild(_loc2_);
            this.§`s§[_loc2_] = _loc4_;
            this.§@L§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!5§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§&!,§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§while§.getItemByName("Button_Next") as §+!9§).x = AngryBirdsFP11.screenWidth / 2;
         (§while§.getItemByName("Button_Prev") as §+!9§).x = AngryBirdsFP11.screenWidth / 2;
         (§while§.getItemByName("Button_Next") as §+!9§).x = (§while§.getItemByName("Button_Next") as §+!9§).x + (_loc3_ + 10);
         (§while§.getItemByName("Button_Prev") as §+!9§).x = (§while§.getItemByName("Button_Prev") as §+!9§).x - (_loc3_ + 10);
      }
      
      protected function §1D§() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            if(this.§,3§.mClip.contains(this.§@L§[_loc1_]))
            {
               this.§@L§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!5§);
               this.§,3§.mClip.removeChild(this.§@L§[_loc1_]);
            }
            _loc1_++;
         }
         this.§@L§ = [];
         while(this.§7e§.mClip.numChildren > 0)
         {
            this.§7e§.mClip.removeChildAt(0);
         }
         this.§&!,§ = [];
      }
      
      protected function §<!5§(param1:MouseEvent) : void
      {
         if(!this.§'b§)
         {
            this.§2v§(this.§`s§[param1.target]);
         }
      }
      
      protected function §?!G§(param1:MouseEvent) : void
      {
         if(!this.§'b§)
         {
            mNextState = §&!F§.§`W§;
         }
      }
      
      protected function §2v§(param1:int, param2:Boolean = false) : void
      {
         this.§'b§ = true;
         if(param1 > this.§&!,§.length - 1)
         {
            param1 = this.§&!,§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§@d§ = param1;
         if(this.§@d§ > this.§5J§)
         {
            this.§2!4§ = this.§5J§ + 1;
         }
         else if(this.§@d§ < this.§5J§)
         {
            this.§2!4§ = this.§5J§ - 1;
         }
         var _loc3_:Number = -this.§&!,§[param1].x;
         var _loc4_:Number = this.§&!,§[param1].x + this.§7e§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §6t§;
         if(this.§5!'§ != null)
         {
            this.§5!'§.stop();
         }
         if(param2)
         {
            this.§7e§.x = _loc3_;
         }
         else
         {
            this.§5!'§ = §-!&§.§;R§.§2w§(this.§7e§,{"x":_loc3_},null,_loc5_,§-!&§.§#! §);
            this.§5!'§.onComplete = this.§9-§;
         }
         if(param2)
         {
            this.§9-§();
         }
         else
         {
            this.§5!'§.play();
         }
      }
      
      protected function §9-§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            if(_loc1_ == this.§@d§)
            {
               this.§@L§[_loc1_].gotoAndStop("Selected");
               (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).x = this.§@L§[_loc1_].x;
               this.§]2§(_loc1_);
            }
            else
            {
               this.§@L§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§'b§ = false;
         §`R§.§<!I§(§`R§.§=o§).§"!;§ = this.§@d§;
      }
      
      protected function §]2§(param1:int) : void
      {
         (§while§.getItemByName("TextField_LevelNumberSmall") as §6!"§).§#!B§.text = §`R§.§<!I§(§`R§.§=o§).pageIndexes[param1];
      }
   }
}
