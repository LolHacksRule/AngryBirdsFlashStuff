package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §,!L§.§7!9§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §="<§.§3p§;
   import §="<§.§5!;§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class § § extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §"![§:Number = 0.5;
      
      public static var §7"+§:String = "";
       
      
      protected var §=!C§:Boolean = false;
      
      protected var §"!G§:§,"$§;
      
      protected var §]X§:§,"$§;
      
      protected var §"!o§:MovieClip;
      
      protected var §#!N§:Array;
      
      protected var §8!q§:Array;
      
      protected var §`8§:int = 0;
      
      protected var §#"§:int = 0;
      
      protected var §=w§:int = 0;
      
      protected var §,z§:Boolean = false;
      
      protected var §5l§:§,4§ = null;
      
      protected var §#A§:Dictionary;
      
      protected var §&!X§:Array;
      
      protected var §%"0§:Array;
      
      protected var §'!<§:§2!^§;
      
      protected var §6" §:Number = 0;
      
      public function § §(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2-§();
         while(this.§]X§.mClip.numChildren > 0)
         {
            this.§]X§.mClip.removeChildAt(0);
         }
         this.§8!q§ = [];
         this.§#!N§ = [];
      }
      
      protected function §2-§() : void
      {
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelSelection[0]);
         this.§]X§ = §%!A§.getItemByName("Container_LevelRepeaters") as §,"$§;
         this.§"!G§ = §%!A§.getItemByName("Container_LevelSelection") as §,"$§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8k§.§;!]§.clearLevel();
         §8k§.§;!]§.§#5§(false);
         this.§6t§();
         §2&§.§6o§.§,k§();
         if(this.§8!q§.length == 1)
         {
            (§%!A§.getItemByName("Button_Prev") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_Next") as §87§).setVisibility(false);
            (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).setVisibility(false);
         }
         else
         {
            (§%!A§.getItemByName("Button_Prev") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_Next") as §87§).setVisibility(true);
            (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).setVisibility(true);
         }
         this.§6" § = this.§]X§.x;
         if(§%!A§.stage)
         {
            §%!A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§%%§);
         }
      }
      
      protected function §%%§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§5"§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§?"§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.checkIfPagePassed();
         this.§`,§();
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!N§.length)
         {
            if(-this.§]X§.x >= this.§8!q§[_loc1_].x && -this.§6" § < this.§8!q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#!N§.length)
               {
                  this.§#!N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=w§ = _loc1_;
               this.§#!N§[_loc1_].gotoAndStop("Selected");
               (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).x = this.§#!N§[_loc1_].x;
               this.§%0§(_loc1_);
            }
            if(-this.§]X§.x <= this.§8!q§[_loc1_].x && -this.§6" § > this.§8!q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#!N§.length)
               {
                  this.§#!N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=w§ = _loc1_;
               this.§#!N§[_loc1_].gotoAndStop("Selected");
               (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).x = this.§#!N§[_loc1_].x;
               this.§%0§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§=w§ != this.§`8§)
         {
            if(this.§`8§ > this.§=w§)
            {
               this.§#"§ = this.§=w§ + 1;
            }
            else if(this.§`8§ < this.§=w§)
            {
               this.§#"§ = this.§=w§ - 1;
            }
            else
            {
               this.§#"§ = this.§=w§;
            }
            this.§'!<§.§=n§(this.§&!X§[this.§#"§].red,this.§&!X§[this.§#"§].green,this.§&!X§[this.§#"§].blue);
         }
         this.§6" § = this.§]X§.x;
      }
      
      protected function §`,§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!q§.length)
         {
            _loc2_ = this.§]X§.x + this.§8!q§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§8!q§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§8!q§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§8!q§[_loc1_].mClip.alpha < 1)
            {
               (this.§8!q§[_loc1_] as §5!;§).setEnabled(false);
            }
            else
            {
               (this.§8!q§[_loc1_] as §5!;§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§%!A§.stage)
         {
            §%!A§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%%§);
         }
         super.deActivate();
         this.§<"7§();
         (§%!A§.getItemByName("Button_Back") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#"=§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§5l§)
         {
            this.§5l§.stop();
            this.§5l§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         if(param2.length > 0 && param3 is §3p§)
         {
            if((param3 as §3p§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §3p§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§,z§)
               {
                  §#"=§.loadLevel(§#"=§.getValidLevelId(param2.toLowerCase()));
                  § !I§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §<5§.playSound("Menu_Back");
               § !I§(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.§?"§();
               break;
            case "PREV":
               this.§5"§();
               break;
            case "FULLSCREEN_BUTTON":
               §<5§.playSound("Menu_Confirm");
               §2&§.§6o§.§>!9§();
         }
      }
      
      protected function §?"§() : void
      {
         §<5§.playSound("Menu_Confirm");
         if(!this.§,z§)
         {
            ++this.§`8§;
            this.§>i§(this.§`8§);
         }
      }
      
      protected function §5"§() : void
      {
         §<5§.playSound("Menu_Confirm");
         if(!this.§,z§)
         {
            --this.§`8§;
            this.§>i§(this.§`8§);
         }
      }
      
      public function §6t§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§&!X§ = [];
         this.§%"0§ = [];
         var _loc2_:§^"6§ = §#"=§.getEpisode(§#"=§.currentEpisode);
         this.§`8§ = _loc2_.currentPage;
         this.§#"§ = this.§`8§;
         this.§=w§ = this.§`8§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§[! §)
         {
            _loc4_ = _loc2_.§]"4§(_loc3_);
            this.§&!X§.push(_loc2_.§ !-§(_loc3_));
            this.§%"0§.push(_loc2_.§'!E§(_loc3_));
            _loc1_ = this.§%!h§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§'!<§ = new §2!^§(this.§&!X§[this.§`8§].red,this.§&!X§[this.§`8§].green,this.§&!X§[this.§`8§].blue,1);
         §%!A§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§'!<§);
         if(_loc2_.§8!E§)
         {
            _loc6_ = new (_loc5_ = §1!h§.§4!D§(_loc2_.§8!E§))();
            §%!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §%!A§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§`!R§)
         {
            _loc8_ = new (_loc7_ = §1!h§.§4!D§(_loc2_.§`!R§))();
            §%!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §%!A§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§!Q§();
         if(§7"+§ == StateCutScene.STATE_NAME)
         {
            §7"+§ = "";
            this.§>i§(this.§=w§);
         }
         else
         {
            this.§>i§(this.§`8§,true);
         }
      }
      
      protected function §%!h§(param1:Array, param2:int, param3:Number, param4:§^"6§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §1!h§.§4!D§(this.§%"0§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §2&§.§6o§.§2c§.userProgress.§7>§(_loc10_);
            _loc12_ = this.§[!d§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §2&§.§"",§)
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
         _loc8_.@button = this.§%"0§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§5!;§;
         (_loc9_ = new §5!;§(_loc8_,this.§]X§,null,null)).§`"A§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§]X§.§9u§(_loc9_);
         this.§8!q§.push(_loc9_);
         return Number(param3 + §2&§.screenWidth);
      }
      
      protected function §[!d§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§2&§.§6o§.§2c§.userProgress.§`!P§(param1) == 100)
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
            _loc7_ = §2&§.§6o§.§2c§.userProgress.§>"3§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §!Q§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§8!q§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§#A§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§8!q§.length)
         {
            _loc1_ = §1!h§.§4!D§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §2&§.screenWidth / 2 + _loc3_ - this.§8!q§.length * _loc2_.width / 2;
            _loc2_.y = (§%!A§.getItemByName("Button_Next") as §87§).y - _loc2_.height / 2;
            if(_loc4_ == this.§`8§)
            {
               _loc2_.gotoAndStop("Selected");
               (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).x = _loc2_.x;
               (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).y = _loc2_.y - _loc2_.height;
               this.§%0§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§"!G§.mClip.addChild(_loc2_);
            this.§#A§[_loc2_] = _loc4_;
            this.§#!N§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,U§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§8!q§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§%!A§.getItemByName("Button_Next") as §87§).x = §2&§.screenWidth / 2;
         (§%!A§.getItemByName("Button_Prev") as §87§).x = §2&§.screenWidth / 2;
         (§%!A§.getItemByName("Button_Next") as §87§).x = (§%!A§.getItemByName("Button_Next") as §87§).x + (_loc3_ + 10);
         (§%!A§.getItemByName("Button_Prev") as §87§).x = (§%!A§.getItemByName("Button_Prev") as §87§).x - (_loc3_ + 10);
      }
      
      protected function §<"7§() : void
      {
         if(this.§'!<§)
         {
            this.§'!<§.§&"#§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!N§.length)
         {
            if(this.§"!G§.mClip.contains(this.§#!N§[_loc1_]))
            {
               this.§#!N§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§,U§);
               this.§"!G§.mClip.removeChild(this.§#!N§[_loc1_]);
            }
            _loc1_++;
         }
         this.§#!N§ = [];
         while(this.§]X§.mClip.numChildren > 0)
         {
            this.§]X§.mClip.removeChildAt(0);
         }
         this.§8!q§ = [];
      }
      
      protected function §,U§(param1:MouseEvent) : void
      {
         if(!this.§,z§)
         {
            this.§>i§(this.§#A§[param1.target]);
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!this.§,z§)
         {
            § !I§(§ §.STATE_NAME);
         }
      }
      
      protected function §>i§(param1:int, param2:Boolean = false) : void
      {
         this.§,z§ = true;
         if(param1 > this.§8!q§.length - 1)
         {
            param1 = this.§8!q§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`8§ = param1;
         if(this.§`8§ > this.§=w§)
         {
            this.§#"§ = this.§=w§ + 1;
         }
         else if(this.§`8§ < this.§=w§)
         {
            this.§#"§ = this.§=w§ - 1;
         }
         var _loc3_:Number = -this.§8!q§[param1].x;
         var _loc4_:Number = this.§8!q§[param1].x + this.§]X§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §"![§;
         if(this.§5l§ != null)
         {
            this.§5l§.stop();
         }
         if(param2)
         {
            this.§]X§.x = _loc3_;
         }
         else
         {
            this.§5l§ = §"!t§.§3R§.§2m§(this.§]X§,{"x":_loc3_},null,_loc5_,§7!9§.easeOut);
            this.§5l§.onComplete = this.§&!K§;
         }
         if(param2)
         {
            this.§&!K§();
         }
         else
         {
            this.§5l§.play();
         }
      }
      
      protected function §&!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!N§.length)
         {
            if(_loc1_ == this.§`8§)
            {
               this.§#!N§[_loc1_].gotoAndStop("Selected");
               (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).x = this.§#!N§[_loc1_].x;
               this.§%0§(_loc1_);
            }
            else
            {
               this.§#!N§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,z§ = false;
         §#"=§.getEpisode(§#"=§.currentEpisode).currentPage = this.§`8§;
      }
      
      protected function §%0§(param1:int) : void
      {
         (§%!A§.getItemByName("TextField_LevelNumberSmall") as §#`§).§';§.text = §#"=§.getEpisode(§#"=§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
