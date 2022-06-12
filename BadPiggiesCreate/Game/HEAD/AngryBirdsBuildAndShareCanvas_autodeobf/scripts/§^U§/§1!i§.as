package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!]§.§]!v§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§#!n§;
   import §=!7§.§3!b§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §1!i§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelSelectionState";
      
      protected static const §#!4§:Number = 0.5;
      
      public static var §&t§:String = "";
       
      
      protected var §%?§:Boolean = false;
      
      protected var §7"%§:§6W§;
      
      protected var §9z§:§6W§;
      
      protected var §`"$§:MovieClip;
      
      protected var §82§:Array;
      
      protected var §,!C§:Array;
      
      protected var §8!"§:int = 0;
      
      protected var §-!w§:int = 0;
      
      protected var §<!6§:int = 0;
      
      protected var §[">§:Boolean = false;
      
      protected var § ![§:§=!r§ = null;
      
      protected var §`Z§:Dictionary;
      
      protected var §'!^§:Array;
      
      protected var §<!L§:Array;
      
      protected var §<E§:§]!v§;
      
      protected var §,"9§:Number = 0;
      
      public function §1!i§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§2!Q§();
         while(this.§9z§.mClip.numChildren > 0)
         {
            this.§9z§.mClip.removeChildAt(0);
         }
         this.§,!C§ = [];
         this.§82§ = [];
      }
      
      protected function §2!Q§() : void
      {
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelSelection[0]);
         this.§9z§ = §`!v§.getItemByName("Container_LevelRepeaters") as §6W§;
         this.§7"%§ = §`!v§.getItemByName("Container_LevelSelection") as §6W§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'_§.§=M§.clearLevel();
         §'_§.§=M§.§'"@§(false);
         this.§2!m§();
         this.§do §();
         if(this.§,!C§.length == 1)
         {
            (§`!v§.getItemByName("Button_Prev") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_Next") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).setVisibility(false);
         }
         else
         {
            (§`!v§.getItemByName("Button_Prev") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_Next") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).setVisibility(true);
         }
         this.§,"9§ = this.§9z§.x;
         if(§`!v§.stage)
         {
            §`!v§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§#"#§);
         }
      }
      
      protected function §do §() : void
      {
         AngryBirdsFP11.§do §();
      }
      
      protected function §#"#§(param1:KeyboardEvent) : void
      {
         if(this.§,!C§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§,j§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§!!J§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1!d§();
         this.§^g§();
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      protected function §1!d§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            if(-this.§9z§.x >= this.§,!C§[_loc1_].x && -this.§,"9§ < this.§,!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§82§.length)
               {
                  this.§82§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!6§ = _loc1_;
               this.§82§[_loc1_].gotoAndStop("Selected");
               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
               this.§ "3§(_loc1_);
            }
            if(-this.§9z§.x <= this.§,!C§[_loc1_].x && -this.§,"9§ > this.§,!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§82§.length)
               {
                  this.§82§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!6§ = _loc1_;
               this.§82§[_loc1_].gotoAndStop("Selected");
               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
               this.§ "3§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§<!6§ != this.§8!"§)
         {
            if(this.§8!"§ > this.§<!6§)
            {
               this.§-!w§ = this.§<!6§ + 1;
            }
            else if(this.§8!"§ < this.§<!6§)
            {
               this.§-!w§ = this.§<!6§ - 1;
            }
            else
            {
               this.§-!w§ = this.§<!6§;
            }
            if(this.§'!^§[this.§-!w§])
            {
               this.§<E§.§8"8§(this.§'!^§[this.§-!w§].red,this.§'!^§[this.§-!w§].green,this.§'!^§[this.§-!w§].blue);
            }
         }
         this.§,"9§ = this.§9z§.x;
      }
      
      protected function §^g§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!C§.length)
         {
            _loc2_ = this.§9z§.x + this.§,!C§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§,!C§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§,!C§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§,!C§[_loc1_].mClip.alpha < 1)
            {
               (this.§,!C§[_loc1_] as §0"4§).setEnabled(false);
            }
            else
            {
               (this.§,!C§[_loc1_] as §0"4§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§`!v§.stage)
         {
            §`!v§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#"#§);
         }
         super.deActivate();
         this.§="7§();
         (§`!v§.getItemByName("Button_Back") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`!r§.§;!8§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§ ![§)
         {
            this.§ ![§.stop();
            this.§ ![§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         if(param2.length > 0 && param3 is §#!n§)
         {
            if((param3 as §#!n§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §#!n§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§[">§)
               {
                  §`!r§.loadLevel(§`!r§.§0&§(param2.toLowerCase()));
                  mNextState = StateCutScene.§%!Q§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §0"#§.§9"2§("Menu_Back");
               mNextState = §2u§.§%!Q§;
               break;
            case "NEXT":
               this.§!!J§();
               break;
            case "PREV":
               this.§,j§();
               break;
            case "FULLSCREEN_BUTTON":
               §0"#§.§9"2§("Menu_Confirm");
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      protected function §!!J§() : void
      {
         §0"#§.§9"2§("Menu_Confirm");
         if(!this.§[">§)
         {
            ++this.§8!"§;
            this.§-r§(this.§8!"§);
         }
      }
      
      protected function §,j§() : void
      {
         §0"#§.§9"2§("Menu_Confirm");
         if(!this.§[">§)
         {
            --this.§8!"§;
            this.§-r§(this.§8!"§);
         }
      }
      
      public function §2!m§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§'!^§ = [];
         this.§<!L§ = [];
         this.§8!"§ = §`!r§.§]-§(§`!r§.§^0§).§?"8§;
         this.§-!w§ = this.§8!"§;
         this.§<!6§ = this.§8!"§;
         var _loc2_:§3!l§ = §`!r§.§]-§(§`!r§.§^0§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§-!L§(_loc2_.pageIndexes[_loc3_]);
            this.§'!^§.push(_loc2_.§@G§(_loc3_));
            this.§<!L§.push(_loc2_.§^b§(_loc3_));
            _loc1_ = this.§=!a§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§<E§ = new §]!v§(this.§'!^§[this.§8!"§].red,this.§'!^§[this.§8!"§].green,this.§'!^§[this.§8!"§].blue,1);
         §`!v§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§<E§);
         if(_loc2_.§#! §)
         {
            _loc6_ = new (_loc5_ = §69§.§ 0§(_loc2_.§#! §))();
            §`!v§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §`!v§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§ "'§)
         {
            _loc8_ = new (_loc7_ = §69§.§ 0§(_loc2_.§ "'§))();
            §`!v§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §`!v§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§'C§();
         if(§&t§ == StateCutScene.§%!Q§)
         {
            §&t§ = "";
            this.§-r§(this.§<!6§);
         }
         else
         {
            this.§-r§(this.§8!"§,true);
         }
      }
      
      protected function §=!a§(param1:Array, param2:int, param3:Number, param4:§3!l§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §69§.§ 0§(this.§<!L§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§>!7§.§%!a§(_loc10_);
            _loc12_ = this.§4!"§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§^q§)
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
         _loc8_.@button = this.§<!L§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§3!b§;
         (_loc9_ = new §3!b§(_loc8_,this.§9z§,null,null)).§&!'§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§9z§.§#i§(_loc9_);
         this.§,!C§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§6j§);
      }
      
      protected function §4!"§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§>!7§.§6!G§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§>!7§.§6!I§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §'C§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§,!C§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§`Z§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§,!C§.length)
         {
            _loc1_ = §69§.§ 0§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§6j§ / 2 + _loc3_ - this.§,!C§.length * _loc2_.width / 2;
            _loc2_.y = (§`!v§.getItemByName("Button_Next") as §9"8§).y - _loc2_.height / 2;
            if(_loc4_ == this.§8!"§)
            {
               _loc2_.gotoAndStop("Selected");
               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = _loc2_.x;
               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).y = _loc2_.y - _loc2_.height;
               this.§ "3§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§7"%§.mClip.addChild(_loc2_);
            this.§`Z§[_loc2_] = _loc4_;
            this.§82§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!X§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§,!C§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`!v§.getItemByName("Button_Next") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
         (§`!v§.getItemByName("Button_Prev") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
         (§`!v§.getItemByName("Button_Next") as §9"8§).x = (§`!v§.getItemByName("Button_Next") as §9"8§).x + (_loc3_ + 10);
         (§`!v§.getItemByName("Button_Prev") as §9"8§).x = (§`!v§.getItemByName("Button_Prev") as §9"8§).x - (_loc3_ + 10);
      }
      
      protected function §="7§() : void
      {
         if(this.§<E§)
         {
            this.§<E§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            if(this.§7"%§.mClip.contains(this.§82§[_loc1_]))
            {
               this.§82§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!X§);
               this.§7"%§.mClip.removeChild(this.§82§[_loc1_]);
            }
            _loc1_++;
         }
         this.§82§ = [];
         while(this.§9z§.mClip.numChildren > 0)
         {
            this.§9z§.mClip.removeChildAt(0);
         }
         this.§,!C§ = [];
      }
      
      protected function §[!X§(param1:MouseEvent) : void
      {
         if(!this.§[">§)
         {
            this.§-r§(this.§`Z§[param1.target]);
         }
      }
      
      protected function §=!B§(param1:MouseEvent) : void
      {
         if(!this.§[">§)
         {
            mNextState = §1!i§.§%!Q§;
         }
      }
      
      protected function §-r§(param1:int, param2:Boolean = false) : void
      {
         this.§[">§ = true;
         if(param1 > this.§,!C§.length - 1)
         {
            param1 = this.§,!C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§8!"§ = param1;
         if(this.§8!"§ > this.§<!6§)
         {
            this.§-!w§ = this.§<!6§ + 1;
         }
         else if(this.§8!"§ < this.§<!6§)
         {
            this.§-!w§ = this.§<!6§ - 1;
         }
         var _loc3_:Number = -this.§,!C§[param1].x;
         var _loc4_:Number = this.§,!C§[param1].x + this.§9z§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#!4§;
         if(this.§ ![§ != null)
         {
            this.§ ![§.stop();
         }
         if(param2)
         {
            this.§9z§.x = _loc3_;
         }
         else
         {
            this.§ ![§ = §7I§.§[E§.§ ";§(this.§9z§,{"x":_loc3_},null,_loc5_,§7I§.§7L§);
            this.§ ![§.onComplete = this.§7K§;
         }
         if(param2)
         {
            this.§7K§();
         }
         else
         {
            this.§ ![§.play();
         }
      }
      
      protected function §7K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            if(_loc1_ == this.§8!"§)
            {
               this.§82§[_loc1_].gotoAndStop("Selected");
               (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).x = this.§82§[_loc1_].x;
               this.§ "3§(_loc1_);
            }
            else
            {
               this.§82§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§[">§ = false;
         §`!r§.§]-§(§`!r§.§^0§).§?"8§ = this.§8!"§;
      }
      
      protected function § "3§(param1:int) : void
      {
         (§`!v§.getItemByName("TextField_LevelNumberSmall") as §!!]§).§<!g§.text = §`!r§.§]-§(§`!r§.§^0§).pageIndexes[param1];
      }
   }
}
