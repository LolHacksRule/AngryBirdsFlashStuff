package §!X§
{
   import §""d§.§+">§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§96§;
   import §""d§.§>"x§;
   import §#"_§.§,D§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5",§.§`#+§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §,"p§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelSelectionState";
      
      protected static const §'"d§:Number = 0.5;
      
      public static var §%"§:String = "";
       
      
      protected var §`Q§:Boolean = false;
      
      protected var §>"p§:§,m§;
      
      protected var §>"%§:§,m§;
      
      protected var §#"l§:MovieClip;
      
      protected var §5"o§:Array;
      
      protected var §^!&§:Array;
      
      protected var §1"m§:int = 0;
      
      protected var §1W§:int = 0;
      
      protected var §8"l§:int = 0;
      
      protected var §#L§:Boolean = false;
      
      protected var §`!'§:§4!Q§ = null;
      
      protected var §2K§:Dictionary;
      
      protected var §8!+§:Array;
      
      protected var §="W§:Array;
      
      protected var §0$§:§`#+§;
      
      protected var §9!-§:Number = 0;
      
      public function §,"p§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&§();
         while(this.§>"%§.mClip.numChildren > 0)
         {
            this.§>"%§.mClip.removeChildAt(0);
         }
         this.§^!&§ = [];
         this.§5"o§ = [];
      }
      
      protected function §&§() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelSelection[0]);
         this.§>"%§ = §>I§.getItemByName("Container_LevelRepeaters") as §,m§;
         this.§>"p§ = §>I§.getItemByName("Container_LevelSelection") as §,m§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.§<x§.clearLevel();
         §;!e§.§<x§.§5!y§(false);
         this.§?!7§();
         §;"@§.singleton.playThemeMusic();
         if(this.§^!&§.length == 1)
         {
            (§>I§.getItemByName("Button_Prev") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_Next") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).setVisibility(false);
         }
         else
         {
            (§>I§.getItemByName("Button_Prev") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_Next") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).setVisibility(true);
         }
         this.§9!-§ = this.§>"%§.x;
         if(§>I§.stage)
         {
            §>I§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0z§);
         }
      }
      
      protected function §0z§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§^"v§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§6"A§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.each();
         this.§#"!§();
      }
      
      protected function each() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5"o§.length)
         {
            if(-this.§>"%§.x >= this.§^!&§[_loc1_].x && -this.§9!-§ < this.§^!&§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5"o§.length)
               {
                  this.§5"o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8"l§ = _loc1_;
               this.§5"o§[_loc1_].gotoAndStop("Selected");
               (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).x = this.§5"o§[_loc1_].x;
               this.§"!e§(_loc1_);
            }
            if(-this.§>"%§.x <= this.§^!&§[_loc1_].x && -this.§9!-§ > this.§^!&§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5"o§.length)
               {
                  this.§5"o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8"l§ = _loc1_;
               this.§5"o§[_loc1_].gotoAndStop("Selected");
               (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).x = this.§5"o§[_loc1_].x;
               this.§"!e§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§8"l§ != this.§1"m§)
         {
            if(this.§1"m§ > this.§8"l§)
            {
               this.§1W§ = this.§8"l§ + 1;
            }
            else if(this.§1"m§ < this.§8"l§)
            {
               this.§1W§ = this.§8"l§ - 1;
            }
            else
            {
               this.§1W§ = this.§8"l§;
            }
            this.§0$§.§<#0§(this.§8!+§[this.§1W§].red,this.§8!+§[this.§1W§].green,this.§8!+§[this.§1W§].blue);
         }
         this.§9!-§ = this.§>"%§.x;
      }
      
      protected function §#"!§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!&§.length)
         {
            _loc2_ = this.§>"%§.x + this.§^!&§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§^!&§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§^!&§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§^!&§[_loc1_].mClip.alpha < 1)
            {
               (this.§^!&§[_loc1_] as §>"x§).setEnabled(false);
            }
            else
            {
               (this.§^!&§[_loc1_] as §>"x§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§>I§.stage)
         {
            §>I§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0z§);
         }
         super.deActivate();
         this.§]!&§();
         (§>I§.getItemByName("Button_Back") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § !p§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§`!'§)
         {
            this.§`!'§.stop();
            this.§`!'§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(param2.length > 0 && param3 is §96§)
         {
            if((param3 as §96§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §96§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§#L§)
               {
                  § !p§.loadLevel(§ !p§.getValidLevelId(param2.toLowerCase()));
                  §0"B§(StateCutScene.§'#2§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §@§.§=Y§("Menu_Back");
               §0"B§(§5+§.§'#2§);
               break;
            case "NEXT":
               this.§6"A§();
               break;
            case "PREV":
               this.§^"v§();
               break;
            case "FULLSCREEN_BUTTON":
               §@§.§=Y§("Menu_Confirm");
               §;"@§.singleton.§35§();
         }
      }
      
      protected function §6"A§() : void
      {
         §@§.§=Y§("Menu_Confirm");
         if(!this.§#L§)
         {
            ++this.§1"m§;
            this.§-!R§(this.§1"m§);
         }
      }
      
      protected function §^"v§() : void
      {
         §@§.§=Y§("Menu_Confirm");
         if(!this.§#L§)
         {
            --this.§1"m§;
            this.§-!R§(this.§1"m§);
         }
      }
      
      public function §?!7§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§8!+§ = [];
         this.§="W§ = [];
         var _loc2_:§ "0§ = § !p§.getEpisode(§ !p§.currentEpisode);
         this.§1"m§ = _loc2_.currentPage;
         this.§1W§ = this.§1"m§;
         this.§8"l§ = this.§1"m§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§=!v§)
         {
            _loc4_ = _loc2_.§>W§(_loc3_);
            this.§8!+§.push(_loc2_.§2!H§(_loc3_));
            this.§="W§.push(_loc2_.§6!a§(_loc3_));
            _loc1_ = this.§@!k§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§0$§ = new §`#+§(this.§8!+§[this.§1"m§].red,this.§8!+§[this.§1"m§].green,this.§8!+§[this.§1"m§].blue,1);
         §>I§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§0$§);
         if(_loc2_.§-!r§)
         {
            _loc6_ = new (_loc5_ = §5"]§.§4!K§(_loc2_.§-!r§))();
            §>I§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §>I§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§1#'§)
         {
            _loc8_ = new (_loc7_ = §5"]§.§4!K§(_loc2_.§1#'§))();
            §>I§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §>I§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§[!l§();
         if(§%"§ == StateCutScene.§'#2§)
         {
            §%"§ = "";
            this.§-!R§(this.§8"l§);
         }
         else
         {
            this.§-!R§(this.§1"m§,true);
         }
      }
      
      protected function §@!k§(param1:Array, param2:int, param3:Number, param4:§ "0§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §5"]§.§4!K§(this.§="W§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §;"@§.singleton.dataModel.userProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§5#§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §;"@§.§[!S§)
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
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§="W§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§>"x§;
         (_loc9_ = new §>"x§(_loc8_,this.§>"%§,null,null)).§+!1§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>"%§.§&!8§(_loc9_);
         this.§^!&§.push(_loc9_);
         return Number(param3 + §;"@§.screenWidth);
      }
      
      protected function §5#§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = §;"@§.singleton.dataModel.userProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §[!l§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§^!&§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§2K§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§^!&§.length)
         {
            _loc1_ = §5"]§.§4!K§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §;"@§.screenWidth / 2 + _loc3_ - this.§^!&§.length * _loc2_.width / 2;
            _loc2_.y = (§>I§.getItemByName("Button_Next") as §2"8§).y - _loc2_.height / 2;
            if(_loc4_ == this.§1"m§)
            {
               _loc2_.gotoAndStop("Selected");
               (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).x = _loc2_.x;
               (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).y = _loc2_.y - _loc2_.height;
               this.§"!e§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§>"p§.mClip.addChild(_loc2_);
            this.§2K§[_loc2_] = _loc4_;
            this.§5"o§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!0§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§^!&§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§>I§.getItemByName("Button_Next") as §2"8§).x = §;"@§.screenWidth / 2;
         (§>I§.getItemByName("Button_Prev") as §2"8§).x = §;"@§.screenWidth / 2;
         (§>I§.getItemByName("Button_Next") as §2"8§).x = (§>I§.getItemByName("Button_Next") as §2"8§).x + (_loc3_ + 10);
         (§>I§.getItemByName("Button_Prev") as §2"8§).x = (§>I§.getItemByName("Button_Prev") as §2"8§).x - (_loc3_ + 10);
      }
      
      protected function §]!&§() : void
      {
         if(this.§0$§)
         {
            this.§0$§.§;!k§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§5"o§.length)
         {
            if(this.§>"p§.mClip.contains(this.§5"o§[_loc1_]))
            {
               this.§5"o§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§!0§);
               this.§>"p§.mClip.removeChild(this.§5"o§[_loc1_]);
            }
            _loc1_++;
         }
         this.§5"o§ = [];
         while(this.§>"%§.mClip.numChildren > 0)
         {
            this.§>"%§.mClip.removeChildAt(0);
         }
         this.§^!&§ = [];
      }
      
      protected function §!0§(param1:MouseEvent) : void
      {
         if(!this.§#L§)
         {
            this.§-!R§(this.§2K§[param1.target]);
         }
      }
      
      protected function §@!Q§(param1:MouseEvent) : void
      {
         if(!this.§#L§)
         {
            §0"B§(§,"p§.§'#2§);
         }
      }
      
      protected function §-!R§(param1:int, param2:Boolean = false) : void
      {
         this.§#L§ = true;
         if(param1 > this.§^!&§.length - 1)
         {
            param1 = this.§^!&§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§1"m§ = param1;
         if(this.§1"m§ > this.§8"l§)
         {
            this.§1W§ = this.§8"l§ + 1;
         }
         else if(this.§1"m§ < this.§8"l§)
         {
            this.§1W§ = this.§8"l§ - 1;
         }
         var _loc3_:Number = -this.§^!&§[param1].x;
         var _loc4_:Number = this.§^!&§[param1].x + this.§>"%§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §'"d§;
         if(this.§`!'§ != null)
         {
            this.§`!'§.stop();
         }
         if(param2)
         {
            this.§>"%§.x = _loc3_;
         }
         else
         {
            this.§`!'§ = §41§.§-G§.§&#'§(this.§>"%§,{"x":_loc3_},null,_loc5_,§,D§.easeOut);
            this.§`!'§.onComplete = this.§6#§;
         }
         if(param2)
         {
            this.§6#§();
         }
         else
         {
            this.§`!'§.play();
         }
      }
      
      protected function §6#§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5"o§.length)
         {
            if(_loc1_ == this.§1"m§)
            {
               this.§5"o§[_loc1_].gotoAndStop("Selected");
               (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).x = this.§5"o§[_loc1_].x;
               this.§"!e§(_loc1_);
            }
            else
            {
               this.§5"o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§#L§ = false;
         § !p§.getEpisode(§ !p§.currentEpisode).currentPage = this.§1"m§;
      }
      
      protected function §"!e§(param1:int) : void
      {
         (§>I§.getItemByName("TextField_LevelNumberSmall") as §+">§).§?x§.text = § !p§.getEpisode(§ !p§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
