package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§#"D§;
   import §77§.§%]§;
   import §77§.§&!>§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §]!K§.§,!H§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §]J§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §?0§:Number = 0.5;
      
      public static var §6"?§:String = "";
       
      
      protected var §8!i§:Boolean = false;
      
      protected var §5!B§:§ ",§;
      
      protected var §@§:§ ",§;
      
      protected var § "-§:MovieClip;
      
      protected var §03§:Array;
      
      protected var §5!%§:Array;
      
      protected var § "7§:int = 0;
      
      protected var §^j§:int = 0;
      
      protected var §@!-§:int = 0;
      
      protected var §'"&§:Boolean = false;
      
      protected var §8!t§:§5!9§ = null;
      
      protected var §3!L§:Dictionary;
      
      protected var §;!§:Array;
      
      protected var §]!F§:Array;
      
      protected var §&!=§:§&"$§;
      
      protected var § "H§:Number = 0;
      
      public function §]J§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9!<§();
         while(this.§@§.mClip.numChildren > 0)
         {
            this.§@§.mClip.removeChildAt(0);
         }
         this.§5!%§ = [];
         this.§03§ = [];
      }
      
      protected function §9!<§() : void
      {
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelSelection[0]);
         this.§@§ = §8!A§.getItemByName("Container_LevelRepeaters") as § ",§;
         this.§5!B§ = §8!A§.getItemByName("Container_LevelSelection") as § ",§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9q§.§>!L§.clearLevel();
         §9q§.§>!L§.§0!M§(false);
         this.§1"9§();
         § !g§.§;!'§.§2!M§();
         if(this.§5!%§.length == 1)
         {
            (§8!A§.getItemByName("Button_Prev") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_Next") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).setVisibility(false);
         }
         else
         {
            (§8!A§.getItemByName("Button_Prev") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_Next") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).setVisibility(true);
         }
         this.§ "H§ = this.§@§.x;
         if(§8!A§.stage)
         {
            §8!A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§""'§);
         }
      }
      
      protected function §""'§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§6!w§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§]!n§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.checkIfPagePassed();
         this.§0""§();
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§03§.length)
         {
            if(-this.§@§.x >= this.§5!%§[_loc1_].x && -this.§ "H§ < this.§5!%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§03§.length)
               {
                  this.§03§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@!-§ = _loc1_;
               this.§03§[_loc1_].gotoAndStop("Selected");
               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
               this.§7!^§(_loc1_);
            }
            if(-this.§@§.x <= this.§5!%§[_loc1_].x && -this.§ "H§ > this.§5!%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§03§.length)
               {
                  this.§03§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@!-§ = _loc1_;
               this.§03§[_loc1_].gotoAndStop("Selected");
               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
               this.§7!^§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§@!-§ != this.§ "7§)
         {
            if(this.§ "7§ > this.§@!-§)
            {
               this.§^j§ = this.§@!-§ + 1;
            }
            else if(this.§ "7§ < this.§@!-§)
            {
               this.§^j§ = this.§@!-§ - 1;
            }
            else
            {
               this.§^j§ = this.§@!-§;
            }
            this.§&!=§.§>"9§(this.§;!§[this.§^j§].red,this.§;!§[this.§^j§].green,this.§;!§[this.§^j§].blue);
         }
         this.§ "H§ = this.§@§.x;
      }
      
      protected function §0""§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!%§.length)
         {
            _loc2_ = this.§@§.x + this.§5!%§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§5!%§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§5!%§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§5!%§[_loc1_].mClip.alpha < 1)
            {
               (this.§5!%§[_loc1_] as §%]§).setEnabled(false);
            }
            else
            {
               (this.§5!%§[_loc1_] as §%]§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§8!A§.stage)
         {
            §8!A§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§""'§);
         }
         super.deActivate();
         this.§"u§();
         (§8!A§.getItemByName("Button_Back") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6u§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§8!t§)
         {
            this.§8!t§.stop();
            this.§8!t§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         if(param2.length > 0 && param3 is §#"D§)
         {
            if((param3 as §#"D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §#"D§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§'"&§)
               {
                  §6u§.loadLevel(§6u§.getValidLevelId(param2.toLowerCase()));
                  §8!^§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §<!O§.playSound("Menu_Back");
               §8!^§(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.§]!n§();
               break;
            case "PREV":
               this.§6!w§();
               break;
            case "FULLSCREEN_BUTTON":
               §<!O§.playSound("Menu_Confirm");
               § !g§.§;!'§.§%!N§();
         }
      }
      
      protected function §]!n§() : void
      {
         §<!O§.playSound("Menu_Confirm");
         if(!this.§'"&§)
         {
            ++this.§ "7§;
            this.§1"&§(this.§ "7§);
         }
      }
      
      protected function §6!w§() : void
      {
         §<!O§.playSound("Menu_Confirm");
         if(!this.§'"&§)
         {
            --this.§ "7§;
            this.§1"&§(this.§ "7§);
         }
      }
      
      public function §1"9§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§;!§ = [];
         this.§]!F§ = [];
         var _loc2_:§3,§ = §6u§.getEpisode(§6u§.currentEpisode);
         this.§ "7§ = _loc2_.currentPage;
         this.§^j§ = this.§ "7§;
         this.§@!-§ = this.§ "7§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`;§)
         {
            _loc4_ = _loc2_.§`!x§(_loc3_);
            this.§;!§.push(_loc2_.§<!n§(_loc3_));
            this.§]!F§.push(_loc2_.§,"2§(_loc3_));
            _loc1_ = this.§?!V§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§&!=§ = new §&"$§(this.§;!§[this.§ "7§].red,this.§;!§[this.§ "7§].green,this.§;!§[this.§ "7§].blue,1);
         §8!A§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§&!=§);
         if(_loc2_.§[! §)
         {
            _loc6_ = new (_loc5_ = § !h§.§["3§(_loc2_.§[! §))();
            §8!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §8!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§`!]§)
         {
            _loc8_ = new (_loc7_ = § !h§.§["3§(_loc2_.§`!]§))();
            §8!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §8!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§2Z§();
         if(§6"?§ == StateCutScene.STATE_NAME)
         {
            §6"?§ = "";
            this.§1"&§(this.§@!-§);
         }
         else
         {
            this.§1"&§(this.§ "7§,true);
         }
      }
      
      protected function §?!V§(param1:Array, param2:int, param3:Number, param4:§3,§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = § !h§.§["3§(this.§]!F§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = § !g§.§;!'§.§&!`§.userProgress.§]!B§(_loc10_);
            _loc12_ = this.§%#§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || § !g§.§-"<§)
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
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§]!F§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§%]§;
         (_loc9_ = new §%]§(_loc8_,this.§@§,null,null)).§9<§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§@§.§;!h§(_loc9_);
         this.§5!%§.push(_loc9_);
         return Number(param3 + § !g§.screenWidth);
      }
      
      protected function §%#§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§ !g§.§;!'§.§&!`§.userProgress.§#!K§(param1) == 100)
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
            _loc7_ = § !g§.§;!'§.§&!`§.userProgress.§,R§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §2Z§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§5!%§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§3!L§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§5!%§.length)
         {
            _loc1_ = § !h§.§["3§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = § !g§.screenWidth / 2 + _loc3_ - this.§5!%§.length * _loc2_.width / 2;
            _loc2_.y = (§8!A§.getItemByName("Button_Next") as §@_§).y - _loc2_.height / 2;
            if(_loc4_ == this.§ "7§)
            {
               _loc2_.gotoAndStop("Selected");
               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = _loc2_.x;
               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).y = _loc2_.y - _loc2_.height;
               this.§7!^§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§5!B§.mClip.addChild(_loc2_);
            this.§3!L§[_loc2_] = _loc4_;
            this.§03§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§5!%§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§8!A§.getItemByName("Button_Next") as §@_§).x = § !g§.screenWidth / 2;
         (§8!A§.getItemByName("Button_Prev") as §@_§).x = § !g§.screenWidth / 2;
         (§8!A§.getItemByName("Button_Next") as §@_§).x = (§8!A§.getItemByName("Button_Next") as §@_§).x + (_loc3_ + 10);
         (§8!A§.getItemByName("Button_Prev") as §@_§).x = (§8!A§.getItemByName("Button_Prev") as §@_§).x - (_loc3_ + 10);
      }
      
      protected function §"u§() : void
      {
         if(this.§&!=§)
         {
            this.§&!=§.§;"F§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§03§.length)
         {
            if(this.§5!B§.mClip.contains(this.§03§[_loc1_]))
            {
               this.§03§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
               this.§5!B§.mClip.removeChild(this.§03§[_loc1_]);
            }
            _loc1_++;
         }
         this.§03§ = [];
         while(this.§@§.mClip.numChildren > 0)
         {
            this.§@§.mClip.removeChildAt(0);
         }
         this.§5!%§ = [];
      }
      
      protected function §-!j§(param1:MouseEvent) : void
      {
         if(!this.§'"&§)
         {
            this.§1"&§(this.§3!L§[param1.target]);
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!this.§'"&§)
         {
            §8!^§(§]J§.STATE_NAME);
         }
      }
      
      protected function §1"&§(param1:int, param2:Boolean = false) : void
      {
         this.§'"&§ = true;
         if(param1 > this.§5!%§.length - 1)
         {
            param1 = this.§5!%§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§ "7§ = param1;
         if(this.§ "7§ > this.§@!-§)
         {
            this.§^j§ = this.§@!-§ + 1;
         }
         else if(this.§ "7§ < this.§@!-§)
         {
            this.§^j§ = this.§@!-§ - 1;
         }
         var _loc3_:Number = -this.§5!%§[param1].x;
         var _loc4_:Number = this.§5!%§[param1].x + this.§@§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §?0§;
         if(this.§8!t§ != null)
         {
            this.§8!t§.stop();
         }
         if(param2)
         {
            this.§@§.x = _loc3_;
         }
         else
         {
            this.§8!t§ = §!D§.§[!1§.§1"<§(this.§@§,{"x":_loc3_},null,_loc5_,§,!H§.easeOut);
            this.§8!t§.onComplete = this.§!!5§;
         }
         if(param2)
         {
            this.§!!5§();
         }
         else
         {
            this.§8!t§.play();
         }
      }
      
      protected function §!!5§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§03§.length)
         {
            if(_loc1_ == this.§ "7§)
            {
               this.§03§[_loc1_].gotoAndStop("Selected");
               (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).x = this.§03§[_loc1_].x;
               this.§7!^§(_loc1_);
            }
            else
            {
               this.§03§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§'"&§ = false;
         §6u§.getEpisode(§6u§.currentEpisode).currentPage = this.§ "7§;
      }
      
      protected function §7!^§(param1:int) : void
      {
         (§8!A§.getItemByName("TextField_LevelNumberSmall") as §&!>§).§ !'§.text = §6u§.getEpisode(§6u§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
