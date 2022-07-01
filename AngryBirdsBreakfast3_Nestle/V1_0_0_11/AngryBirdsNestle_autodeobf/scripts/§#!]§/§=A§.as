package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §#!s§.§'H§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§1!7§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §4Y§.§["4§;
   import §4Y§.§return§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §=A§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelSelectionState";
      
      protected static const §3f§:Number = 0.5;
      
      public static var §8!]§:String = "";
       
      
      protected var §'l§:Boolean = false;
      
      protected var §const§:§%n§;
      
      protected var §2H§:§%n§;
      
      protected var §1!b§:MovieClip;
      
      protected var §<r§:Array;
      
      protected var §]d§:Array;
      
      protected var §^!m§:int = 0;
      
      protected var §#J§:int = 0;
      
      protected var §4K§:int = 0;
      
      protected var §7!H§:Boolean = false;
      
      protected var §?!4§:§^!T§ = null;
      
      protected var § !Y§:Dictionary;
      
      protected var §=S§:Array;
      
      protected var §?!U§:Array;
      
      protected var §4!?§:§1!7§;
      
      protected var §'"5§:Number = 0;
      
      public function §=A§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§;p§();
         while(this.§2H§.mClip.numChildren > 0)
         {
            this.§2H§.mClip.removeChildAt(0);
         }
         this.§]d§ = [];
         this.§<r§ = [];
      }
      
      protected function §;p§() : void
      {
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelSelection[0]);
         this.§2H§ = §4!q§.getItemByName("Container_LevelRepeaters") as §%n§;
         this.§const§ = §4!q§.getItemByName("Container_LevelSelection") as §%n§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.clearLevel();
         §`i§.§&!L§.§2!J§(false);
         this.§0!W§();
         §-!2§.§7O§.§>q§();
         if(this.§]d§.length == 1)
         {
            (§4!q§.getItemByName("Button_Prev") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_Next") as § `§).setVisibility(false);
            (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).setVisibility(false);
         }
         else
         {
            (§4!q§.getItemByName("Button_Prev") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_Next") as § `§).setVisibility(true);
            (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).setVisibility(true);
         }
         this.§'"5§ = this.§2H§.x;
         if(§4!q§.stage)
         {
            §4!q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§=!j§);
         }
      }
      
      protected function §=!j§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§`!U§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§[!n§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'!$§();
         this.§07§();
      }
      
      protected function §'!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<r§.length)
         {
            if(-this.§2H§.x >= this.§]d§[_loc1_].x && -this.§'"5§ < this.§]d§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<r§.length)
               {
                  this.§<r§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4K§ = _loc1_;
               this.§<r§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§<r§[_loc1_].x;
               this.§!d§(_loc1_);
            }
            if(-this.§2H§.x <= this.§]d§[_loc1_].x && -this.§'"5§ > this.§]d§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<r§.length)
               {
                  this.§<r§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4K§ = _loc1_;
               this.§<r§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§<r§[_loc1_].x;
               this.§!d§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§4K§ != this.§^!m§)
         {
            if(this.§^!m§ > this.§4K§)
            {
               this.§#J§ = this.§4K§ + 1;
            }
            else if(this.§^!m§ < this.§4K§)
            {
               this.§#J§ = this.§4K§ - 1;
            }
            else
            {
               this.§#J§ = this.§4K§;
            }
            this.§4!?§.§`!T§(this.§=S§[this.§#J§].red,this.§=S§[this.§#J§].green,this.§=S§[this.§#J§].blue);
         }
         this.§'"5§ = this.§2H§.x;
      }
      
      protected function §07§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]d§.length)
         {
            _loc2_ = this.§2H§.x + this.§]d§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§]d§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§]d§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§]d§[_loc1_].mClip.alpha < 1)
            {
               (this.§]d§[_loc1_] as §["4§).setEnabled(false);
            }
            else
            {
               (this.§]d§[_loc1_] as §["4§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§4!q§.stage)
         {
            §4!q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=!j§);
         }
         super.deActivate();
         this.§3!1§();
         (§4!q§.getItemByName("Button_Back") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#n§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§?!4§)
         {
            this.§?!4§.stop();
            this.§?!4§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         if(param2.length > 0 && param3 is §return§)
         {
            if((param3 as §return§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §return§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§7!H§)
               {
                  §#n§.loadLevel(§#n§.getValidLevelId(param2.toLowerCase()));
                  §]a§(StateCutScene.§]!y§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §4!@§.§`!w§("Menu_Back");
               §]a§(StateEpisodeSelection.§]!y§);
               break;
            case "NEXT":
               this.§[!n§();
               break;
            case "PREV":
               this.§`!U§();
               break;
            case "FULLSCREEN_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §[!n§() : void
      {
         §4!@§.§`!w§("Menu_Confirm");
         if(!this.§7!H§)
         {
            ++this.§^!m§;
            this.§;!l§(this.§^!m§);
         }
      }
      
      protected function §`!U§() : void
      {
         §4!@§.§`!w§("Menu_Confirm");
         if(!this.§7!H§)
         {
            --this.§^!m§;
            this.§;!l§(this.§^!m§);
         }
      }
      
      public function §0!W§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§=S§ = [];
         this.§?!U§ = [];
         var _loc2_:§4<§ = §#n§.getEpisode(§#n§.currentEpisode);
         this.§^!m§ = _loc2_.currentPage;
         this.§#J§ = this.§^!m§;
         this.§4K§ = this.§^!m§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§3"5§)
         {
            _loc4_ = _loc2_.§>>§(_loc3_);
            this.§=S§.push(_loc2_.§?!y§(_loc3_));
            this.§?!U§.push(_loc2_.§>!j§(_loc3_));
            _loc1_ = this.§9H§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§4!?§ = new §1!7§(this.§=S§[this.§^!m§].red,this.§=S§[this.§^!m§].green,this.§=S§[this.§^!m§].blue,1);
         §4!q§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§4!?§);
         if(_loc2_.§-!1§)
         {
            _loc6_ = new (_loc5_ = §1!C§.§"!&§(_loc2_.§-!1§))();
            §4!q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §4!q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§7N§)
         {
            _loc8_ = new (_loc7_ = §1!C§.§"!&§(_loc2_.§7N§))();
            §4!q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §4!q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§8!o§();
         if(§8!]§ == StateCutScene.§]!y§)
         {
            §8!]§ = "";
            this.§;!l§(this.§4K§);
         }
         else
         {
            this.§;!l§(this.§^!m§,true);
         }
      }
      
      protected function §9H§(param1:Array, param2:int, param3:Number, param4:§4<§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §1!C§.§"!&§(this.§?!U§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-!2§.§7O§.§ !n§.userProgress.§=!#§(_loc10_);
            _loc12_ = this.§+A§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §-!2§.§#!a§)
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
         _loc8_.@button = this.§?!U§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§["4§;
         (_loc9_ = new §["4§(_loc8_,this.§2H§,null,null)).§`!x§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§2H§.§]K§(_loc9_);
         this.§]d§.push(_loc9_);
         return Number(param3 + §-!2§.§2d§);
      }
      
      protected function §+A§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§-!2§.§7O§.§ !n§.userProgress.§4F§(param1) == 100)
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
            _loc7_ = §-!2§.§7O§.§ !n§.userProgress.§-t§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §8!o§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§]d§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§ !Y§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§]d§.length)
         {
            _loc1_ = §1!C§.§"!&§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-!2§.§2d§ / 2 + _loc3_ - this.§]d§.length * _loc2_.width / 2;
            _loc2_.y = (§4!q§.getItemByName("Button_Next") as § `§).y - _loc2_.height / 2;
            if(_loc4_ == this.§^!m§)
            {
               _loc2_.gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = _loc2_.x;
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).y = _loc2_.y - _loc2_.height;
               this.§!d§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§const§.mClip.addChild(_loc2_);
            this.§ !Y§[_loc2_] = _loc4_;
            this.§<r§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!X§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§]d§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§4!q§.getItemByName("Button_Next") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Prev") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Next") as § `§).x = (§4!q§.getItemByName("Button_Next") as § `§).x + (_loc3_ + 10);
         (§4!q§.getItemByName("Button_Prev") as § `§).x = (§4!q§.getItemByName("Button_Prev") as § `§).x - (_loc3_ + 10);
      }
      
      protected function §3!1§() : void
      {
         if(this.§4!?§)
         {
            this.§4!?§.§6!h§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§<r§.length)
         {
            if(this.§const§.mClip.contains(this.§<r§[_loc1_]))
            {
               this.§<r§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!X§);
               this.§const§.mClip.removeChild(this.§<r§[_loc1_]);
            }
            _loc1_++;
         }
         this.§<r§ = [];
         while(this.§2H§.mClip.numChildren > 0)
         {
            this.§2H§.mClip.removeChildAt(0);
         }
         this.§]d§ = [];
      }
      
      protected function §5!X§(param1:MouseEvent) : void
      {
         if(!this.§7!H§)
         {
            this.§;!l§(this.§ !Y§[param1.target]);
         }
      }
      
      protected function §]H§(param1:MouseEvent) : void
      {
         if(!this.§7!H§)
         {
            §]a§(§=A§.§]!y§);
         }
      }
      
      protected function §;!l§(param1:int, param2:Boolean = false) : void
      {
         this.§7!H§ = true;
         if(param1 > this.§]d§.length - 1)
         {
            param1 = this.§]d§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§^!m§ = param1;
         if(this.§^!m§ > this.§4K§)
         {
            this.§#J§ = this.§4K§ + 1;
         }
         else if(this.§^!m§ < this.§4K§)
         {
            this.§#J§ = this.§4K§ - 1;
         }
         var _loc3_:Number = -this.§]d§[param1].x;
         var _loc4_:Number = this.§]d§[param1].x + this.§2H§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §3f§;
         if(this.§?!4§ != null)
         {
            this.§?!4§.stop();
         }
         if(param2)
         {
            this.§2H§.x = _loc3_;
         }
         else
         {
            this.§?!4§ = §%"!§.§&!;§.§"!]§(this.§2H§,{"x":_loc3_},null,_loc5_,§'H§.easeOut);
            this.§?!4§.onComplete = this.§+!D§;
         }
         if(param2)
         {
            this.§+!D§();
         }
         else
         {
            this.§?!4§.play();
         }
      }
      
      protected function §+!D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<r§.length)
         {
            if(_loc1_ == this.§^!m§)
            {
               this.§<r§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§<r§[_loc1_].x;
               this.§!d§(_loc1_);
            }
            else
            {
               this.§<r§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§7!H§ = false;
         §#n§.getEpisode(§#n§.currentEpisode).currentPage = this.§^!m§;
      }
      
      protected function §!d§(param1:int) : void
      {
         (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).§"S§.text = §#n§.getEpisode(§#n§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
