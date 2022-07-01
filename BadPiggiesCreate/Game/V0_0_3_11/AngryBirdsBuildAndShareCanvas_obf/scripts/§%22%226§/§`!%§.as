package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+!d§.§8!=§;
   import §+%§.§+"%§;
   import §+%§.§=^§;
   import §2!O§.§,w§;
   import §;!A§.§ !F§;
   import §;!A§.§'!K§;
   import §;!A§.§2v§;
   import §;!A§.§8!N§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §`!%§ extends §,w§
   {
      
      public static const §^z§:String = "LevelSelectionState";
      
      protected static const §8!§:Number = 0.5;
      
      public static var §+!b§:String = "";
       
      
      protected var §?G§:Boolean = false;
      
      protected var §3"'§:§;!u§;
      
      protected var §`"4§:§;!u§;
      
      protected var §0!w§:MovieClip;
      
      protected var §2§:Array;
      
      protected var §;L§:Array;
      
      protected var §[!@§:int = 0;
      
      protected var §8!m§:int = 0;
      
      protected var §9E§:int = 0;
      
      protected var §,p§:Boolean = false;
      
      protected var §@!`§:§8!K§ = null;
      
      protected var §=!%§:Dictionary;
      
      protected var §<!w§:Array;
      
      protected var §+![§:Array;
      
      protected var §;v§:§!!g§;
      
      protected var § ?§:Number = 0;
      
      public function §`!%§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&!B§();
         while(this.§`"4§.mClip.numChildren > 0)
         {
            this.§`"4§.mClip.removeChildAt(0);
         }
         this.§;L§ = [];
         this.§2§ = [];
      }
      
      protected function §&!B§() : void
      {
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelSelection[0]);
         this.§`"4§ = §%""§.getItemByName("Container_LevelRepeaters") as §;!u§;
         this.§3"'§ = §%""§.getItemByName("Container_LevelSelection") as §;!u§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?z§.§=7§.clearLevel();
         §?z§.§=7§.§,L§(false);
         this.§6!J§();
         this.§5!q§();
         if(this.§;L§.length == 1)
         {
            (§%""§.getItemByName("Button_Prev") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_Next") as §2v§).setVisibility(false);
            (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).setVisibility(false);
         }
         else
         {
            (§%""§.getItemByName("Button_Prev") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_Next") as §2v§).setVisibility(true);
            (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).setVisibility(true);
         }
         this.§ ?§ = this.§`"4§.x;
         if(§%""§.stage)
         {
            §%""§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§"!m§);
         }
      }
      
      protected function §5!q§() : void
      {
         AngryBirdsFP11.§5!q§();
      }
      
      protected function §"!m§(param1:KeyboardEvent) : void
      {
         if(this.§;L§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§#!`§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§+t§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,O§();
         this.§+!j§();
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      protected function §,O§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2§.length)
         {
            if(-this.§`"4§.x >= this.§;L§[_loc1_].x && -this.§ ?§ < this.§;L§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2§.length)
               {
                  this.§2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9E§ = _loc1_;
               this.§2§[_loc1_].gotoAndStop("Selected");
               (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).x = this.§2§[_loc1_].x;
               this.§<v§(_loc1_);
            }
            if(-this.§`"4§.x <= this.§;L§[_loc1_].x && -this.§ ?§ > this.§;L§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2§.length)
               {
                  this.§2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9E§ = _loc1_;
               this.§2§[_loc1_].gotoAndStop("Selected");
               (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).x = this.§2§[_loc1_].x;
               this.§<v§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§9E§ != this.§[!@§)
         {
            if(this.§[!@§ > this.§9E§)
            {
               this.§8!m§ = this.§9E§ + 1;
            }
            else if(this.§[!@§ < this.§9E§)
            {
               this.§8!m§ = this.§9E§ - 1;
            }
            else
            {
               this.§8!m§ = this.§9E§;
            }
            if(this.§<!w§[this.§8!m§])
            {
               this.§;v§.§3!!§(this.§<!w§[this.§8!m§].red,this.§<!w§[this.§8!m§].green,this.§<!w§[this.§8!m§].blue);
            }
         }
         this.§ ?§ = this.§`"4§.x;
      }
      
      protected function §+!j§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;L§.length)
         {
            _loc2_ = this.§`"4§.x + this.§;L§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§;L§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§;L§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§;L§[_loc1_].mClip.alpha < 1)
            {
               (this.§;L§[_loc1_] as §8!=§).setEnabled(false);
            }
            else
            {
               (this.§;L§[_loc1_] as §8!=§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§%""§.stage)
         {
            §%""§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"!m§);
         }
         super.deActivate();
         this.§&'§();
         (§%""§.getItemByName("Button_Back") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+"%§.§%"'§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§@!`§)
         {
            this.§@!`§.stop();
            this.§@!`§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         if(param2.length > 0 && param3 is §8!N§)
         {
            if((param3 as §8!N§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §8!N§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§,p§)
               {
                  §+"%§.loadLevel(§+"%§.§'q§(param2.toLowerCase()));
                  mNextState = StateCutScene.§^z§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §0!t§.playSound("Menu_Back");
               mNextState = §+v§.§^z§;
               break;
            case "NEXT":
               this.§+t§();
               break;
            case "PREV":
               this.§#!`§();
               break;
            case "FULLSCREEN_BUTTON":
               §0!t§.playSound("Menu_Confirm");
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      protected function §+t§() : void
      {
         §0!t§.playSound("Menu_Confirm");
         if(!this.§,p§)
         {
            ++this.§[!@§;
            this.§4"6§(this.§[!@§);
         }
      }
      
      protected function §#!`§() : void
      {
         §0!t§.playSound("Menu_Confirm");
         if(!this.§,p§)
         {
            --this.§[!@§;
            this.§4"6§(this.§[!@§);
         }
      }
      
      public function §6!J§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§<!w§ = [];
         this.§+![§ = [];
         this.§[!@§ = §+"%§.§%!Y§(§+"%§.§-!F§).§@K§;
         this.§8!m§ = this.§[!@§;
         this.§9E§ = this.§[!@§;
         var _loc2_:§=^§ = §+"%§.§%!Y§(§+"%§.§-!F§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§#![§(_loc2_.pageIndexes[_loc3_]);
            this.§<!w§.push(_loc2_.§'"4§(_loc3_));
            this.§+![§.push(_loc2_.§@w§(_loc3_));
            _loc1_ = this.§'!b§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§;v§ = new §!!g§(this.§<!w§[this.§[!@§].red,this.§<!w§[this.§[!@§].green,this.§<!w§[this.§[!@§].blue,1);
         §%""§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§;v§);
         if(_loc2_.§'0§)
         {
            _loc6_ = new (_loc5_ = §]!S§.§?! §(_loc2_.§'0§))();
            §%""§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §%""§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§'!B§)
         {
            _loc8_ = new (_loc7_ = §]!S§.§?! §(_loc2_.§'!B§))();
            §%""§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §%""§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§?e§();
         if(§+!b§ == StateCutScene.§^z§)
         {
            §+!b§ = "";
            this.§4"6§(this.§9E§);
         }
         else
         {
            this.§4"6§(this.§[!@§,true);
         }
      }
      
      protected function §'!b§(param1:Array, param2:int, param3:Number, param4:§=^§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §]!S§.§?! §(this.§+![§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§8!I§.§-M§(_loc10_);
            _loc12_ = this.§<!S§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§8&§)
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
         _loc8_.@button = this.§+![§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§'!K§;
         (_loc9_ = new §'!K§(_loc8_,this.§`"4§,null,null)).§5![§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§`"4§.§&!W§(_loc9_);
         this.§;L§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§#k§);
      }
      
      protected function §<!S§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§8!I§.§>"&§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§8!I§.§]5§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §?e§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§;L§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=!%§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§;L§.length)
         {
            _loc1_ = §]!S§.§?! §("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§#k§ / 2 + _loc3_ - this.§;L§.length * _loc2_.width / 2;
            _loc2_.y = (§%""§.getItemByName("Button_Next") as §2v§).y - _loc2_.height / 2;
            if(_loc4_ == this.§[!@§)
            {
               _loc2_.gotoAndStop("Selected");
               (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).x = _loc2_.x;
               (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).y = _loc2_.y - _loc2_.height;
               this.§<v§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§3"'§.mClip.addChild(_loc2_);
            this.§=!%§[_loc2_] = _loc4_;
            this.§2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7y§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§;L§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§%""§.getItemByName("Button_Next") as §2v§).x = AngryBirdsFP11.§#k§ / 2;
         (§%""§.getItemByName("Button_Prev") as §2v§).x = AngryBirdsFP11.§#k§ / 2;
         (§%""§.getItemByName("Button_Next") as §2v§).x = (§%""§.getItemByName("Button_Next") as §2v§).x + (_loc3_ + 10);
         (§%""§.getItemByName("Button_Prev") as §2v§).x = (§%""§.getItemByName("Button_Prev") as §2v§).x - (_loc3_ + 10);
      }
      
      protected function §&'§() : void
      {
         if(this.§;v§)
         {
            this.§;v§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§2§.length)
         {
            if(this.§3"'§.mClip.contains(this.§2§[_loc1_]))
            {
               this.§2§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§7y§);
               this.§3"'§.mClip.removeChild(this.§2§[_loc1_]);
            }
            _loc1_++;
         }
         this.§2§ = [];
         while(this.§`"4§.mClip.numChildren > 0)
         {
            this.§`"4§.mClip.removeChildAt(0);
         }
         this.§;L§ = [];
      }
      
      protected function §7y§(param1:MouseEvent) : void
      {
         if(!this.§,p§)
         {
            this.§4"6§(this.§=!%§[param1.target]);
         }
      }
      
      protected function §9x§(param1:MouseEvent) : void
      {
         if(!this.§,p§)
         {
            mNextState = §`!%§.§^z§;
         }
      }
      
      protected function §4"6§(param1:int, param2:Boolean = false) : void
      {
         this.§,p§ = true;
         if(param1 > this.§;L§.length - 1)
         {
            param1 = this.§;L§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§[!@§ = param1;
         if(this.§[!@§ > this.§9E§)
         {
            this.§8!m§ = this.§9E§ + 1;
         }
         else if(this.§[!@§ < this.§9E§)
         {
            this.§8!m§ = this.§9E§ - 1;
         }
         var _loc3_:Number = -this.§;L§[param1].x;
         var _loc4_:Number = this.§;L§[param1].x + this.§`"4§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §8!§;
         if(this.§@!`§ != null)
         {
            this.§@!`§.stop();
         }
         if(param2)
         {
            this.§`"4§.x = _loc3_;
         }
         else
         {
            this.§@!`§ = §%!Z§.§if §.§"<§(this.§`"4§,{"x":_loc3_},null,_loc5_,§%!Z§.§&e§);
            this.§@!`§.onComplete = this.§2e§;
         }
         if(param2)
         {
            this.§2e§();
         }
         else
         {
            this.§@!`§.play();
         }
      }
      
      protected function §2e§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2§.length)
         {
            if(_loc1_ == this.§[!@§)
            {
               this.§2§[_loc1_].gotoAndStop("Selected");
               (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).x = this.§2§[_loc1_].x;
               this.§<v§(_loc1_);
            }
            else
            {
               this.§2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,p§ = false;
         §+"%§.§%!Y§(§+"%§.§-!F§).§@K§ = this.§[!@§;
      }
      
      protected function §<v§(param1:int) : void
      {
         (§%""§.getItemByName("TextField_LevelNumberSmall") as § !F§).§1!k§.text = §+"%§.§%!Y§(§+"%§.§-!F§).pageIndexes[param1];
      }
   }
}
