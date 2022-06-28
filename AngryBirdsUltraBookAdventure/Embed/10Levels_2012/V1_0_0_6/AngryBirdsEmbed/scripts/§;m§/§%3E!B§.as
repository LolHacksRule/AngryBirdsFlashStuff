package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§";§;
   import §4C§.§->§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import §`!0§.§[4§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §>!B§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelSelectionState";
      
      protected static const §<!@§:Number = 0.5;
      
      public static var §@!D§:String = "";
       
      
      protected var §4=§:Boolean = false;
      
      protected var §>6§:§1!=§;
      
      protected var §`p§:§1!=§;
      
      protected var §,g§:MovieClip;
      
      protected var §!V§:Array;
      
      protected var §4!;§:Array;
      
      protected var §1Q§:int = 0;
      
      protected var §3$§:int = 0;
      
      protected var §<,§:int = 0;
      
      protected var §,'§:Boolean = false;
      
      protected var §]!0§:§3_§ = null;
      
      protected var § "§:Dictionary;
      
      protected var §>u§:Array;
      
      protected var § M§:Array;
      
      protected var §=@§:§`K§;
      
      protected var §^!B§:Number = 0;
      
      public function §>!B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§'?§();
         while(this.§`p§.mClip.numChildren > 0)
         {
            this.§`p§.mClip.removeChildAt(0);
         }
         this.§4!;§ = [];
         this.§!V§ = [];
      }
      
      protected function §'?§() : void
      {
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelSelection[0]);
         this.§`p§ = §-f§.getItemByName("Container_LevelRepeaters") as §1!=§;
         this.§>6§ = §-f§.getItemByName("Container_LevelSelection") as §1!=§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"h§.§1C§.clearLevel();
         §"h§.§1C§.§]!!§(false);
         this.§@<§();
         this.§'!!§();
         if(this.§4!;§.length == 1)
         {
            (§-f§.getItemByName("Button_Prev") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_Next") as §6<§).setVisibility(false);
            (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).setVisibility(false);
         }
         else
         {
            (§-f§.getItemByName("Button_Prev") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Next") as §6<§).setVisibility(true);
            (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).setVisibility(true);
         }
         this.§^!B§ = this.§`p§.x;
         if(§-f§.stage)
         {
            §-f§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!3§);
         }
      }
      
      protected function §'!!§() : void
      {
         AngryBirdsFP11.§'!!§();
      }
      
      protected function §!!3§(param1:KeyboardEvent) : void
      {
         if(this.§4!;§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§>!3§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§,I§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#v§();
         this.§-9§();
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      protected function §#v§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!V§.length)
         {
            if(-this.§`p§.x >= this.§4!;§[_loc1_].x && -this.§^!B§ < this.§4!;§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!V§.length)
               {
                  this.§!V§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<,§ = _loc1_;
               this.§!V§[_loc1_].gotoAndStop("Selected");
               (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
               this.§^!=§(_loc1_);
            }
            if(-this.§`p§.x <= this.§4!;§[_loc1_].x && -this.§^!B§ > this.§4!;§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!V§.length)
               {
                  this.§!V§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<,§ = _loc1_;
               this.§!V§[_loc1_].gotoAndStop("Selected");
               (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
               this.§^!=§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§<,§ != this.§1Q§)
         {
            if(this.§1Q§ > this.§<,§)
            {
               this.§3$§ = this.§<,§ + 1;
            }
            else if(this.§1Q§ < this.§<,§)
            {
               this.§3$§ = this.§<,§ - 1;
            }
            else
            {
               this.§3$§ = this.§<,§;
            }
            if(this.§>u§[this.§3$§])
            {
               this.§=@§.§69§(this.§>u§[this.§3$§].red,this.§>u§[this.§3$§].green,this.§>u§[this.§3$§].blue);
            }
         }
         this.§^!B§ = this.§`p§.x;
      }
      
      protected function §-9§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!;§.length)
         {
            _loc2_ = this.§`p§.x + this.§4!;§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§4!;§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§4!;§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§4!;§[_loc1_].mClip.alpha < 1)
            {
               (this.§4!;§[_loc1_] as §4Y§).setEnabled(false);
            }
            else
            {
               (this.§4!;§[_loc1_] as §4Y§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§-f§.stage)
         {
            §-f§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!3§);
         }
         super.deActivate();
         this.§0!!§();
         (§-f§.getItemByName("Button_Back") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §59§.§72§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§]!0§)
         {
            this.§]!0§.stop();
            this.§]!0§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         if(param2.length > 0 && param3 is §";§)
         {
            if((param3 as §";§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §";§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§,'§)
               {
                  §59§.§6!9§(§59§.§7?§(param2.toLowerCase()));
                  mNextState = StateCutScene.§-!A§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               § !H§.§ !%§("Menu_Back");
               mNextState = §8R§.§-!A§;
               break;
            case "NEXT":
               this.§,I§();
               break;
            case "PREV":
               this.§>!3§();
               break;
            case "FULLSCREEN_BUTTON":
               § !H§.§ !%§("Menu_Confirm");
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      protected function §,I§() : void
      {
         § !H§.§ !%§("Menu_Confirm");
         if(!this.§,'§)
         {
            ++this.§1Q§;
            this.§0e§(this.§1Q§);
         }
      }
      
      protected function §>!3§() : void
      {
         § !H§.§ !%§("Menu_Confirm");
         if(!this.§,'§)
         {
            --this.§1Q§;
            this.§0e§(this.§1Q§);
         }
      }
      
      public function §@<§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§>u§ = [];
         this.§ M§ = [];
         this.§1Q§ = §59§.§+!!§(§59§.§2>§).§6!%§;
         this.§3$§ = this.§1Q§;
         this.§<,§ = this.§1Q§;
         var _loc2_:§=e§ = §59§.§+!!§(§59§.§2>§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§3p§(_loc2_.pageIndexes[_loc3_]);
            this.§>u§.push(_loc2_.§&!;§(_loc3_));
            this.§ M§.push(_loc2_.§;!;§(_loc3_));
            _loc1_ = this.§00§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§=@§ = new §`K§(this.§>u§[this.§1Q§].red,this.§>u§[this.§1Q§].green,this.§>u§[this.§1Q§].blue,1);
         §-f§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§=@§);
         if(_loc2_.§2L§)
         {
            _loc6_ = new (_loc5_ = §!Q§.§^!H§(_loc2_.§2L§))();
            §-f§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §-f§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§%!%§)
         {
            _loc8_ = new (_loc7_ = §!Q§.§^!H§(_loc2_.§%!%§))();
            §-f§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §-f§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§-z§();
         if(§@!D§ == StateCutScene.§-!A§)
         {
            §@!D§ = "";
            this.§0e§(this.§<,§);
         }
         else
         {
            this.§0e§(this.§1Q§,true);
         }
      }
      
      protected function §00§(param1:Array, param2:int, param3:Number, param4:§=e§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §!Q§.§^!H§(this.§ M§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§[j§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§0b§)
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
         _loc8_.@button = this.§ M§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§->§;
         (_loc9_ = new §->§(_loc8_,this.§`p§,null,null)).§7N§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§`p§.§^!I§(_loc9_);
         this.§4!;§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §[j§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§4a§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§1!,§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §-z§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§4!;§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§ "§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§4!;§.length)
         {
            _loc1_ = §!Q§.§^!H§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§4!;§.length * _loc2_.width / 2;
            _loc2_.y = (§-f§.getItemByName("Button_Next") as §6<§).y - _loc2_.height / 2;
            if(_loc4_ == this.§1Q§)
            {
               _loc2_.gotoAndStop("Selected");
               (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = _loc2_.x;
               (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).y = _loc2_.y - _loc2_.height;
               this.§^!=§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§>6§.mClip.addChild(_loc2_);
            this.§ "§[_loc2_] = _loc4_;
            this.§!V§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%1§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§4!;§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§-f§.getItemByName("Button_Next") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
         (§-f§.getItemByName("Button_Prev") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
         (§-f§.getItemByName("Button_Next") as §6<§).x = (§-f§.getItemByName("Button_Next") as §6<§).x + (_loc3_ + 10);
         (§-f§.getItemByName("Button_Prev") as §6<§).x = (§-f§.getItemByName("Button_Prev") as §6<§).x - (_loc3_ + 10);
      }
      
      protected function §0!!§() : void
      {
         if(this.§=@§)
         {
            this.§=@§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§!V§.length)
         {
            if(this.§>6§.mClip.contains(this.§!V§[_loc1_]))
            {
               this.§!V§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§%1§);
               this.§>6§.mClip.removeChild(this.§!V§[_loc1_]);
            }
            _loc1_++;
         }
         this.§!V§ = [];
         while(this.§`p§.mClip.numChildren > 0)
         {
            this.§`p§.mClip.removeChildAt(0);
         }
         this.§4!;§ = [];
      }
      
      protected function §%1§(param1:MouseEvent) : void
      {
         if(!this.§,'§)
         {
            this.§0e§(this.§ "§[param1.target]);
         }
      }
      
      protected function §0B§(param1:MouseEvent) : void
      {
         if(!this.§,'§)
         {
            mNextState = §>!B§.§-!A§;
         }
      }
      
      protected function §0e§(param1:int, param2:Boolean = false) : void
      {
         this.§,'§ = true;
         if(param1 > this.§4!;§.length - 1)
         {
            param1 = this.§4!;§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§1Q§ = param1;
         if(this.§1Q§ > this.§<,§)
         {
            this.§3$§ = this.§<,§ + 1;
         }
         else if(this.§1Q§ < this.§<,§)
         {
            this.§3$§ = this.§<,§ - 1;
         }
         var _loc3_:Number = -this.§4!;§[param1].x;
         var _loc4_:Number = this.§4!;§[param1].x + this.§`p§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §<!@§;
         if(this.§]!0§ != null)
         {
            this.§]!0§.stop();
         }
         if(param2)
         {
            this.§`p§.x = _loc3_;
         }
         else
         {
            this.§]!0§ = §,!G§.§@j§.§47§(this.§`p§,{"x":_loc3_},null,_loc5_,§,!G§.§,&§);
            this.§]!0§.onComplete = this.§9Y§;
         }
         if(param2)
         {
            this.§9Y§();
         }
         else
         {
            this.§]!0§.play();
         }
      }
      
      protected function §9Y§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!V§.length)
         {
            if(_loc1_ == this.§1Q§)
            {
               this.§!V§[_loc1_].gotoAndStop("Selected");
               (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
               this.§^!=§(_loc1_);
            }
            else
            {
               this.§!V§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,'§ = false;
         §59§.§+!!§(§59§.§2>§).§6!%§ = this.§1Q§;
      }
      
      protected function §^!=§(param1:int) : void
      {
         (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).§5+§.text = §59§.§+!!§(§59§.§2>§).pageIndexes[param1];
      }
   }
}
