package §##§
{
   import §'!N§.§"f§;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §3p§.§4;§;
   import §5=§.§-+§;
   import §5=§.§^n§;
   import §=8§.§%y§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§8g§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §5!E§ extends §6!M§
   {
      
      public static const §=,§:String = "LevelSelectionState";
      
      protected static const §#!D§:Number = 0.5;
      
      public static var §[!1§:String = "";
       
      
      protected var §<!'§:Boolean = false;
      
      protected var §"g§:§'^§;
      
      protected var §9b§:§'^§;
      
      protected var §+!!§:MovieClip;
      
      protected var §[!O§:Array;
      
      protected var §2I§:Array;
      
      protected var §4!P§:int = 0;
      
      protected var §"s§:int = 0;
      
      protected var §@p§:int = 0;
      
      protected var §%t§:Boolean = false;
      
      protected var §implements§:§]H§ = null;
      
      protected var §[!I§:Dictionary;
      
      protected var §var §:Array;
      
      protected var §3y§:Array;
      
      protected var §3!6§:§4;§;
      
      protected var §6!O§:Number = 0;
      
      public function §5!E§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§'R§();
         while(this.§9b§.mClip.numChildren > 0)
         {
            this.§9b§.mClip.removeChildAt(0);
         }
         this.§2I§ = [];
         this.§[!O§ = [];
      }
      
      protected function §'R§() : void
      {
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelSelection[0]);
         this.§9b§ = § §.getItemByName("Container_LevelRepeaters") as §'^§;
         this.§"g§ = § §.getItemByName("Container_LevelSelection") as §'^§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2G§.§7!,§.clearLevel();
         §2G§.§7!,§.§`!>§(false);
         this.§^!F§();
         this.§+Q§();
         if(this.§2I§.length == 1)
         {
            (§ §.getItemByName("Button_Prev") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_Next") as dynamic).setVisibility(false);
            (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).setVisibility(false);
         }
         else
         {
            (§ §.getItemByName("Button_Prev") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_Next") as dynamic).setVisibility(true);
            (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).setVisibility(true);
         }
         this.§6!O§ = this.§9b§.x;
         if(§ §.stage)
         {
            § §.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6! §);
         }
      }
      
      protected function §+Q§() : void
      {
         AngryBirdsFP11.§+Q§();
      }
      
      protected function §6! §(param1:KeyboardEvent) : void
      {
         if(this.§2I§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§+s§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§+!#§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`r§();
         this.§'D§();
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      protected function §`r§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!O§.length)
         {
            if(-this.§9b§.x >= this.§2I§[_loc1_].x && -this.§6!O§ < this.§2I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!O§.length)
               {
                  this.§[!O§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@p§ = _loc1_;
               this.§[!O§[_loc1_].gotoAndStop("Selected");
               (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).x = this.§[!O§[_loc1_].x;
               this.§@!@§(_loc1_);
            }
            if(-this.§9b§.x <= this.§2I§[_loc1_].x && -this.§6!O§ > this.§2I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!O§.length)
               {
                  this.§[!O§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@p§ = _loc1_;
               this.§[!O§[_loc1_].gotoAndStop("Selected");
               (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).x = this.§[!O§[_loc1_].x;
               this.§@!@§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§@p§ != this.§4!P§)
         {
            if(this.§4!P§ > this.§@p§)
            {
               this.§"s§ = this.§@p§ + 1;
            }
            else if(this.§4!P§ < this.§@p§)
            {
               this.§"s§ = this.§@p§ - 1;
            }
            else
            {
               this.§"s§ = this.§@p§;
            }
            if(this.§var §[this.§"s§])
            {
               this.§3!6§.§6!@§(this.§var §[this.§"s§].red,this.§var §[this.§"s§].green,this.§var §[this.§"s§].blue);
            }
         }
         this.§6!O§ = this.§9b§.x;
      }
      
      protected function §'D§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2I§.length)
         {
            _loc2_ = this.§9b§.x + this.§2I§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§2I§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§2I§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§2I§[_loc1_].mClip.alpha < 1)
            {
               (this.§2I§[_loc1_] as §"f§).setEnabled(false);
            }
            else
            {
               (this.§2I§[_loc1_] as §"f§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§ §.stage)
         {
            § §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6! §);
         }
         super.deActivate();
         this.§4!%§();
         (§ §.getItemByName("Button_Back") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^n§.§8!1§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§implements§)
         {
            this.§implements§.stop();
            this.§implements§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         if(param2.length > 0 && param3 is §8g§)
         {
            if((param3 as §8g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §8g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§%t§)
               {
                  §^n§.§4S§(§^n§.§while§(param2.toLowerCase()));
                  mNextState = StateCutScene.§=,§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §9k§.playSound("Menu_Back");
               mNextState = §!S§.§=,§;
               break;
            case "NEXT":
               this.§+!#§();
               break;
            case "PREV":
               this.§+s§();
               break;
            case "FULLSCREEN_BUTTON":
               §9k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      protected function §+!#§() : void
      {
         §9k§.playSound("Menu_Confirm");
         if(!this.§%t§)
         {
            ++this.§4!P§;
            this.§7!K§(this.§4!P§);
         }
      }
      
      protected function §+s§() : void
      {
         §9k§.playSound("Menu_Confirm");
         if(!this.§%t§)
         {
            --this.§4!P§;
            this.§7!K§(this.§4!P§);
         }
      }
      
      public function §^!F§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§var § = [];
         this.§3y§ = [];
         this.§4!P§ = §^n§.§0!,§(§^n§.§@W§).§&b§;
         this.§"s§ = this.§4!P§;
         this.§@p§ = this.§4!P§;
         var _loc2_:§-+§ = §^n§.§0!,§(§^n§.§@W§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§ e§(_loc2_.pageIndexes[_loc3_]);
            this.§var §.push(_loc2_.§1k§(_loc3_));
            this.§3y§.push(_loc2_.§->§(_loc3_));
            _loc1_ = this.§+J§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§3!6§ = new §4;§(this.§var §[this.§4!P§].red,this.§var §[this.§4!P§].green,this.§var §[this.§4!P§].blue,1);
         § §.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§3!6§);
         if(_loc2_.§]k§)
         {
            _loc6_ = new (_loc5_ = §4D§.§,!O§(_loc2_.§]k§))();
            § §.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            § §.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§4t§)
         {
            _loc8_ = new (_loc7_ = §4D§.§,!O§(_loc2_.§4t§))();
            § §.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            § §.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§9j§();
         if(§[!1§ == StateCutScene.§=,§)
         {
            §[!1§ = "";
            this.§7!K§(this.§@p§);
         }
         else
         {
            this.§7!K§(this.§4!P§,true);
         }
      }
      
      protected function §+J§(param1:Array, param2:int, param3:Number, param4:§-+§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §4D§.§,!O§(this.§3y§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§ ;§.isLevelOpen(_loc10_);
            _loc12_ = this.§9!J§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§`T§)
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
         _loc8_.@button = this.§3y§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§%y§;
         (_loc9_ = new §%y§(_loc8_,this.§9b§,null,null)).§0i§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§9b§.addComponent(_loc9_);
         this.§2I§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§4!F§);
      }
      
      protected function §9!J§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§ ;§.§4m§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§ ;§.§1!;§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §9j§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§2I§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§[!I§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§2I§.length)
         {
            _loc1_ = §4D§.§,!O§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§4!F§ / 2 + _loc3_ - this.§2I§.length * _loc2_.width / 2;
            _loc2_.y = (§ §.getItemByName("Button_Next") as dynamic).y - _loc2_.height / 2;
            if(_loc4_ == this.§4!P§)
            {
               _loc2_.gotoAndStop("Selected");
               (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).x = _loc2_.x;
               (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).y = _loc2_.y - _loc2_.height;
               this.§@!@§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§"g§.mClip.addChild(_loc2_);
            this.§[!I§[_loc2_] = _loc4_;
            this.§[!O§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§2I§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§ §.getItemByName("Button_Next") as dynamic).x = AngryBirdsFP11.§4!F§ / 2;
         (§ §.getItemByName("Button_Prev") as dynamic).x = AngryBirdsFP11.§4!F§ / 2;
         (§ §.getItemByName("Button_Next") as dynamic).x = (§ §.getItemByName("Button_Next") as dynamic).x + (_loc3_ + 10);
         (§ §.getItemByName("Button_Prev") as dynamic).x = (§ §.getItemByName("Button_Prev") as dynamic).x - (_loc3_ + 10);
      }
      
      protected function §4!%§() : void
      {
         if(this.§3!6§)
         {
            this.§3!6§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!O§.length)
         {
            if(this.§"g§.mClip.contains(this.§[!O§[_loc1_]))
            {
               this.§[!O§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
               this.§"g§.mClip.removeChild(this.§[!O§[_loc1_]);
            }
            _loc1_++;
         }
         this.§[!O§ = [];
         while(this.§9b§.mClip.numChildren > 0)
         {
            this.§9b§.mClip.removeChildAt(0);
         }
         this.§2I§ = [];
      }
      
      protected function §4!E§(param1:MouseEvent) : void
      {
         if(!this.§%t§)
         {
            this.§7!K§(this.§[!I§[param1.target]);
         }
      }
      
      protected function § !?§(param1:MouseEvent) : void
      {
         if(!this.§%t§)
         {
            mNextState = §5!E§.§=,§;
         }
      }
      
      protected function §7!K§(param1:int, param2:Boolean = false) : void
      {
         this.§%t§ = true;
         if(param1 > this.§2I§.length - 1)
         {
            param1 = this.§2I§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§4!P§ = param1;
         if(this.§4!P§ > this.§@p§)
         {
            this.§"s§ = this.§@p§ + 1;
         }
         else if(this.§4!P§ < this.§@p§)
         {
            this.§"s§ = this.§@p§ - 1;
         }
         var _loc3_:Number = -this.§2I§[param1].x;
         var _loc4_:Number = this.§2I§[param1].x + this.§9b§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#!D§;
         if(this.§implements§ != null)
         {
            this.§implements§.stop();
         }
         if(param2)
         {
            this.§9b§.x = _loc3_;
         }
         else
         {
            this.§implements§ = §<t§.§4J§.§#q§(this.§9b§,{"x":_loc3_},null,_loc5_,§<t§.§=!&§);
            this.§implements§.onComplete = this.§;F§;
         }
         if(param2)
         {
            this.§;F§();
         }
         else
         {
            this.§implements§.play();
         }
      }
      
      protected function §;F§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!O§.length)
         {
            if(_loc1_ == this.§4!P§)
            {
               this.§[!O§[_loc1_].gotoAndStop("Selected");
               (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).x = this.§[!O§[_loc1_].x;
               this.§@!@§(_loc1_);
            }
            else
            {
               this.§[!O§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%t§ = false;
         §^n§.§0!,§(§^n§.§@W§).§&b§ = this.§4!P§;
      }
      
      protected function §@!@§(param1:int) : void
      {
         (§ §.getItemByName("TextField_LevelNumberSmall") as §&H§).§%!"§.text = §^n§.§0!,§(§^n§.§@W§).pageIndexes[param1];
      }
   }
}
