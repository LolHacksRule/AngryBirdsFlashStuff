package §=" §
{
   import § 3§.§@1§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§%]§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§]I§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §]!"§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §[8§:Number = 0.5;
      
      public static var §,"7§:String = "";
       
      
      protected var §`8§:Boolean = false;
      
      protected var §&!9§:§5!k§;
      
      protected var §'t§:§5!k§;
      
      protected var §?!"§:MovieClip;
      
      protected var §%"1§:Array;
      
      protected var §=!X§:Array;
      
      protected var §[2§:int = 0;
      
      protected var §>!W§:int = 0;
      
      protected var §2I§:int = 0;
      
      protected var §<X§:Boolean = false;
      
      protected var §4!0§:§15§ = null;
      
      protected var §<!'§:Dictionary;
      
      protected var §8!z§:Array;
      
      protected var §4!K§:Array;
      
      protected var §`!5§:§8u§;
      
      protected var §,d§:Number = 0;
      
      public function §]!"§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§]!=§();
         while(this.§'t§.mClip.numChildren > 0)
         {
            this.§'t§.mClip.removeChildAt(0);
         }
         this.§=!X§ = [];
         this.§%"1§ = [];
      }
      
      protected function §]!=§() : void
      {
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelSelection[0]);
         this.§'t§ = §6!J§.getItemByName("Container_LevelRepeaters") as §5!k§;
         this.§&!9§ = §6!J§.getItemByName("Container_LevelSelection") as §5!k§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!w§.§5!V§.clearLevel();
         §8!w§.§5!V§.§3r§(false);
         this.§8Z§();
         §&"<§.§<!7§.§>X§();
         if(this.§=!X§.length == 1)
         {
            (§6!J§.getItemByName("Button_Prev") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_Next") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).setVisibility(false);
         }
         else
         {
            (§6!J§.getItemByName("Button_Prev") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_Next") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).setVisibility(true);
         }
         this.§,d§ = this.§'t§.x;
         if(§6!J§.stage)
         {
            §6!J§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§'F§);
         }
      }
      
      protected function §'F§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§-"E§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§-"$§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.checkIfPagePassed();
         this.§ use§();
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"1§.length)
         {
            if(-this.§'t§.x >= this.§=!X§[_loc1_].x && -this.§,d§ < this.§=!X§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%"1§.length)
               {
                  this.§%"1§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2I§ = _loc1_;
               this.§%"1§[_loc1_].gotoAndStop("Selected");
               (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).x = this.§%"1§[_loc1_].x;
               this.§&!w§(_loc1_);
            }
            if(-this.§'t§.x <= this.§=!X§[_loc1_].x && -this.§,d§ > this.§=!X§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%"1§.length)
               {
                  this.§%"1§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2I§ = _loc1_;
               this.§%"1§[_loc1_].gotoAndStop("Selected");
               (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).x = this.§%"1§[_loc1_].x;
               this.§&!w§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§2I§ != this.§[2§)
         {
            if(this.§[2§ > this.§2I§)
            {
               this.§>!W§ = this.§2I§ + 1;
            }
            else if(this.§[2§ < this.§2I§)
            {
               this.§>!W§ = this.§2I§ - 1;
            }
            else
            {
               this.§>!W§ = this.§2I§;
            }
            this.§`!5§.§!!g§(this.§8!z§[this.§>!W§].red,this.§8!z§[this.§>!W§].green,this.§8!z§[this.§>!W§].blue);
         }
         this.§,d§ = this.§'t§.x;
      }
      
      protected function § use§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!X§.length)
         {
            _loc2_ = this.§'t§.x + this.§=!X§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§=!X§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§=!X§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§=!X§[_loc1_].mClip.alpha < 1)
            {
               (this.§=!X§[_loc1_] as §]I§).setEnabled(false);
            }
            else
            {
               (this.§=!X§[_loc1_] as §]I§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§6!J§.stage)
         {
            §6!J§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'F§);
         }
         super.deActivate();
         this.§9!h§();
         (§6!J§.getItemByName("Button_Back") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §]m§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§4!0§)
         {
            this.§4!0§.stop();
            this.§4!0§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         if(param2.length > 0 && param3 is §%]§)
         {
            if((param3 as §%]§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §%]§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§<X§)
               {
                  §]m§.loadLevel(§]m§.getValidLevelId(param2.toLowerCase()));
                  §'Q§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@!9§.playSound("Menu_Back");
               §'Q§(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.§-"$§();
               break;
            case "PREV":
               this.§-"E§();
               break;
            case "FULLSCREEN_BUTTON":
               §@!9§.playSound("Menu_Confirm");
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      protected function §-"$§() : void
      {
         §@!9§.playSound("Menu_Confirm");
         if(!this.§<X§)
         {
            ++this.§[2§;
            this.§^W§(this.§[2§);
         }
      }
      
      protected function §-"E§() : void
      {
         §@!9§.playSound("Menu_Confirm");
         if(!this.§<X§)
         {
            --this.§[2§;
            this.§^W§(this.§[2§);
         }
      }
      
      public function §8Z§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§8!z§ = [];
         this.§4!K§ = [];
         var _loc2_:§2!S§ = §]m§.getEpisode(§]m§.currentEpisode);
         this.§[2§ = _loc2_.currentPage;
         this.§>!W§ = this.§[2§;
         this.§2I§ = this.§[2§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§#!9§)
         {
            _loc4_ = _loc2_.§3P§(_loc3_);
            this.§8!z§.push(_loc2_.§-!"§(_loc3_));
            this.§4!K§.push(_loc2_.§,!A§(_loc3_));
            _loc1_ = this.§9d§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§`!5§ = new §8u§(this.§8!z§[this.§[2§].red,this.§8!z§[this.§[2§].green,this.§8!z§[this.§[2§].blue,1);
         §6!J§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§`!5§);
         if(_loc2_.§8c§)
         {
            _loc6_ = new (_loc5_ = §>!;§.§+!u§(_loc2_.§8c§))();
            §6!J§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §6!J§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§="§)
         {
            _loc8_ = new (_loc7_ = §>!;§.§+!u§(_loc2_.§="§))();
            §6!J§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §6!J§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§3!K§();
         if(§,"7§ == StateCutScene.STATE_NAME)
         {
            §,"7§ = "";
            this.§^W§(this.§2I§);
         }
         else
         {
            this.§^W§(this.§[2§,true);
         }
      }
      
      protected function §9d§(param1:Array, param2:int, param3:Number, param4:§2!S§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>!;§.§+!u§(this.§4!K§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §&"<§.§<!7§.§,!9§.userProgress.§!">§(_loc10_);
            _loc12_ = this.§0!l§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §&"<§.§;!§)
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
         _loc8_.@button = this.§4!K§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§]I§;
         (_loc9_ = new §]I§(_loc8_,this.§'t§,null,null)).§5n§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§'t§.§2t§(_loc9_);
         this.§=!X§.push(_loc9_);
         return Number(param3 + §&"<§.screenWidth);
      }
      
      protected function §0!l§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§&"<§.§<!7§.§,!9§.userProgress.§%!O§(param1) == 100)
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
            _loc7_ = §&"<§.§<!7§.§,!9§.userProgress.§7=§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §3!K§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§=!X§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§<!'§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§=!X§.length)
         {
            _loc1_ = §>!;§.§+!u§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §&"<§.screenWidth / 2 + _loc3_ - this.§=!X§.length * _loc2_.width / 2;
            _loc2_.y = (§6!J§.getItemByName("Button_Next") as §%!J§).y - _loc2_.height / 2;
            if(_loc4_ == this.§[2§)
            {
               _loc2_.gotoAndStop("Selected");
               (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).x = _loc2_.x;
               (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).y = _loc2_.y - _loc2_.height;
               this.§&!w§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§&!9§.mClip.addChild(_loc2_);
            this.§<!'§[_loc2_] = _loc4_;
            this.§%"1§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!_§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§=!X§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§6!J§.getItemByName("Button_Next") as §%!J§).x = §&"<§.screenWidth / 2;
         (§6!J§.getItemByName("Button_Prev") as §%!J§).x = §&"<§.screenWidth / 2;
         (§6!J§.getItemByName("Button_Next") as §%!J§).x = (§6!J§.getItemByName("Button_Next") as §%!J§).x + (_loc3_ + 10);
         (§6!J§.getItemByName("Button_Prev") as §%!J§).x = (§6!J§.getItemByName("Button_Prev") as §%!J§).x - (_loc3_ + 10);
      }
      
      protected function §9!h§() : void
      {
         if(this.§`!5§)
         {
            this.§`!5§.§&!§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"1§.length)
         {
            if(this.§&!9§.mClip.contains(this.§%"1§[_loc1_]))
            {
               this.§%"1§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!_§);
               this.§&!9§.mClip.removeChild(this.§%"1§[_loc1_]);
            }
            _loc1_++;
         }
         this.§%"1§ = [];
         while(this.§'t§.mClip.numChildren > 0)
         {
            this.§'t§.mClip.removeChildAt(0);
         }
         this.§=!X§ = [];
      }
      
      protected function §@!_§(param1:MouseEvent) : void
      {
         if(!this.§<X§)
         {
            this.§^W§(this.§<!'§[param1.target]);
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!this.§<X§)
         {
            §'Q§(§]!"§.STATE_NAME);
         }
      }
      
      protected function §^W§(param1:int, param2:Boolean = false) : void
      {
         this.§<X§ = true;
         if(param1 > this.§=!X§.length - 1)
         {
            param1 = this.§=!X§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§[2§ = param1;
         if(this.§[2§ > this.§2I§)
         {
            this.§>!W§ = this.§2I§ + 1;
         }
         else if(this.§[2§ < this.§2I§)
         {
            this.§>!W§ = this.§2I§ - 1;
         }
         var _loc3_:Number = -this.§=!X§[param1].x;
         var _loc4_:Number = this.§=!X§[param1].x + this.§'t§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §[8§;
         if(this.§4!0§ != null)
         {
            this.§4!0§.stop();
         }
         if(param2)
         {
            this.§'t§.x = _loc3_;
         }
         else
         {
            this.§4!0§ = §@F§.§8!J§.§&6§(this.§'t§,{"x":_loc3_},null,_loc5_,§@1§.easeOut);
            this.§4!0§.onComplete = this.§3S§;
         }
         if(param2)
         {
            this.§3S§();
         }
         else
         {
            this.§4!0§.play();
         }
      }
      
      protected function §3S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"1§.length)
         {
            if(_loc1_ == this.§[2§)
            {
               this.§%"1§[_loc1_].gotoAndStop("Selected");
               (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).x = this.§%"1§[_loc1_].x;
               this.§&!w§(_loc1_);
            }
            else
            {
               this.§%"1§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<X§ = false;
         §]m§.getEpisode(§]m§.currentEpisode).currentPage = this.§[2§;
      }
      
      protected function §&!w§(param1:int) : void
      {
         (§6!J§.getItemByName("TextField_LevelNumberSmall") as §2a§).§%!%§.text = §]m§.getEpisode(§]m§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
