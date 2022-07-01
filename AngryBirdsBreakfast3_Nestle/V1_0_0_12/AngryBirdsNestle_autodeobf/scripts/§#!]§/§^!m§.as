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
   
   public class §^!m§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelSelectionState";
      
      protected static const §2;§:Number = 0.5;
      
      public static var § z§:String = "";
       
      
      protected var §'l§:Boolean = false;
      
      protected var §#J§:§%n§;
      
      protected var §4K§:§%n§;
      
      protected var §7!H§:MovieClip;
      
      protected var §?!4§:Array;
      
      protected var § !Y§:Array;
      
      protected var §=S§:int = 0;
      
      protected var §?!U§:int = 0;
      
      protected var §'"5§:int = 0;
      
      protected var §;p§:Boolean = false;
      
      protected var §=!j§:§^!T§ = null;
      
      protected var §'!$§:Dictionary;
      
      protected var §07§:Array;
      
      protected var §[!n§:Array;
      
      protected var §4!?§:§1!7§;
      
      protected var §`!U§:Number = 0;
      
      public function §^!m§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!W§();
         while(this.§4K§.mClip.numChildren > 0)
         {
            this.§4K§.mClip.removeChildAt(0);
         }
         this.§ !Y§ = [];
         this.§?!4§ = [];
      }
      
      protected function §0!W§() : void
      {
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelSelection[0]);
         this.§4K§ = §4!q§.getItemByName("Container_LevelRepeaters") as §%n§;
         this.§#J§ = §4!q§.getItemByName("Container_LevelSelection") as §%n§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.clearLevel();
         §`i§.§&!L§.§2!J§(false);
         this.§]H§();
         §-!2§.§7O§.§>q§();
         if(this.§ !Y§.length == 1)
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
         this.§`!U§ = this.§4K§.x;
         if(§4!q§.stage)
         {
            §4!q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§9H§);
         }
      }
      
      protected function §9H§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§5!X§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§3!1§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§+A§();
         this.§8!o§();
      }
      
      protected function §+A§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!4§.length)
         {
            if(-this.§4K§.x >= this.§ !Y§[_loc1_].x && -this.§`!U§ < this.§ !Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?!4§.length)
               {
                  this.§?!4§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'"5§ = _loc1_;
               this.§?!4§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§?!4§[_loc1_].x;
               this.§%-§(_loc1_);
            }
            if(-this.§4K§.x <= this.§ !Y§[_loc1_].x && -this.§`!U§ > this.§ !Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?!4§.length)
               {
                  this.§?!4§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'"5§ = _loc1_;
               this.§?!4§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§?!4§[_loc1_].x;
               this.§%-§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§'"5§ != this.§=S§)
         {
            if(this.§=S§ > this.§'"5§)
            {
               this.§?!U§ = this.§'"5§ + 1;
            }
            else if(this.§=S§ < this.§'"5§)
            {
               this.§?!U§ = this.§'"5§ - 1;
            }
            else
            {
               this.§?!U§ = this.§'"5§;
            }
            this.§4!?§.§`!T§(this.§07§[this.§?!U§].red,this.§07§[this.§?!U§].green,this.§07§[this.§?!U§].blue);
         }
         this.§`!U§ = this.§4K§.x;
      }
      
      protected function §8!o§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !Y§.length)
         {
            _loc2_ = this.§4K§.x + this.§ !Y§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§ !Y§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§ !Y§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§ !Y§[_loc1_].mClip.alpha < 1)
            {
               (this.§ !Y§[_loc1_] as §["4§).setEnabled(false);
            }
            else
            {
               (this.§ !Y§[_loc1_] as §["4§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§4!q§.stage)
         {
            §4!q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§9H§);
         }
         super.deActivate();
         this.§3f§();
         (§4!q§.getItemByName("Button_Back") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#n§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§=!j§)
         {
            this.§=!j§.stop();
            this.§=!j§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         if(param2.length > 0 && param3 is §return§)
         {
            if((param3 as §return§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §return§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;p§)
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
               this.§3!1§();
               break;
            case "PREV":
               this.§5!X§();
               break;
            case "FULLSCREEN_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §3!1§() : void
      {
         §4!@§.§`!w§("Menu_Confirm");
         if(!this.§;p§)
         {
            ++this.§=S§;
            this.§3![§(this.§=S§);
         }
      }
      
      protected function §5!X§() : void
      {
         §4!@§.§`!w§("Menu_Confirm");
         if(!this.§;p§)
         {
            --this.§=S§;
            this.§3![§(this.§=S§);
         }
      }
      
      public function §]H§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§07§ = [];
         this.§[!n§ = [];
         var _loc2_:§4<§ = §#n§.getEpisode(§#n§.currentEpisode);
         this.§=S§ = _loc2_.currentPage;
         this.§?!U§ = this.§=S§;
         this.§'"5§ = this.§=S§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§3"5§)
         {
            _loc4_ = _loc2_.§>>§(_loc3_);
            this.§07§.push(_loc2_.§?!y§(_loc3_));
            this.§[!n§.push(_loc2_.§>!j§(_loc3_));
            _loc1_ = this.§;!l§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§4!?§ = new §1!7§(this.§07§[this.§=S§].red,this.§07§[this.§=S§].green,this.§07§[this.§=S§].blue,1);
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
         this.§!d§();
         if(§ z§ == StateCutScene.§]!y§)
         {
            § z§ = "";
            this.§3![§(this.§'"5§);
         }
         else
         {
            this.§3![§(this.§=S§,true);
         }
      }
      
      protected function §;!l§(param1:Array, param2:int, param3:Number, param4:§4<§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §1!C§.§"!&§(this.§[!n§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-!2§.§7O§.§ !n§.userProgress.§=!#§(_loc10_);
            _loc12_ = this.§+!D§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
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
         _loc8_.@button = this.§[!n§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§["4§;
         (_loc9_ = new §["4§(_loc8_,this.§4K§,null,null)).§`!x§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§4K§.§]K§(_loc9_);
         this.§ !Y§.push(_loc9_);
         return Number(param3 + §-!2§.§2d§);
      }
      
      protected function §+!D§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
      
      protected function §!d§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§ !Y§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§'!$§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ !Y§.length)
         {
            _loc1_ = §1!C§.§"!&§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-!2§.§2d§ / 2 + _loc3_ - this.§ !Y§.length * _loc2_.width / 2;
            _loc2_.y = (§4!q§.getItemByName("Button_Next") as § `§).y - _loc2_.height / 2;
            if(_loc4_ == this.§=S§)
            {
               _loc2_.gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = _loc2_.x;
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).y = _loc2_.y - _loc2_.height;
               this.§%-§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§#J§.mClip.addChild(_loc2_);
            this.§'!$§[_loc2_] = _loc4_;
            this.§?!4§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§8!]§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§ !Y§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§4!q§.getItemByName("Button_Next") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Prev") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Next") as § `§).x = (§4!q§.getItemByName("Button_Next") as § `§).x + (_loc3_ + 10);
         (§4!q§.getItemByName("Button_Prev") as § `§).x = (§4!q§.getItemByName("Button_Prev") as § `§).x - (_loc3_ + 10);
      }
      
      protected function §3f§() : void
      {
         if(this.§4!?§)
         {
            this.§4!?§.§6!h§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!4§.length)
         {
            if(this.§#J§.mClip.contains(this.§?!4§[_loc1_]))
            {
               this.§?!4§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§8!]§);
               this.§#J§.mClip.removeChild(this.§?!4§[_loc1_]);
            }
            _loc1_++;
         }
         this.§?!4§ = [];
         while(this.§4K§.mClip.numChildren > 0)
         {
            this.§4K§.mClip.removeChildAt(0);
         }
         this.§ !Y§ = [];
      }
      
      protected function §8!]§(param1:MouseEvent) : void
      {
         if(!this.§;p§)
         {
            this.§3![§(this.§'!$§[param1.target]);
         }
      }
      
      protected function §4T§(param1:MouseEvent) : void
      {
         if(!this.§;p§)
         {
            §]a§(§^!m§.§]!y§);
         }
      }
      
      protected function §3![§(param1:int, param2:Boolean = false) : void
      {
         this.§;p§ = true;
         if(param1 > this.§ !Y§.length - 1)
         {
            param1 = this.§ !Y§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=S§ = param1;
         if(this.§=S§ > this.§'"5§)
         {
            this.§?!U§ = this.§'"5§ + 1;
         }
         else if(this.§=S§ < this.§'"5§)
         {
            this.§?!U§ = this.§'"5§ - 1;
         }
         var _loc3_:Number = -this.§ !Y§[param1].x;
         var _loc4_:Number = this.§ !Y§[param1].x + this.§4K§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §2;§;
         if(this.§=!j§ != null)
         {
            this.§=!j§.stop();
         }
         if(param2)
         {
            this.§4K§.x = _loc3_;
         }
         else
         {
            this.§=!j§ = §%"!§.§&!;§.§"!]§(this.§4K§,{"x":_loc3_},null,_loc5_,§'H§.easeOut);
            this.§=!j§.onComplete = this.§,n§;
         }
         if(param2)
         {
            this.§,n§();
         }
         else
         {
            this.§=!j§.play();
         }
      }
      
      protected function §,n§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!4§.length)
         {
            if(_loc1_ == this.§=S§)
            {
               this.§?!4§[_loc1_].gotoAndStop("Selected");
               (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).x = this.§?!4§[_loc1_].x;
               this.§%-§(_loc1_);
            }
            else
            {
               this.§?!4§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;p§ = false;
         §#n§.getEpisode(§#n§.currentEpisode).currentPage = this.§=S§;
      }
      
      protected function §%-§(param1:int) : void
      {
         (§4!q§.getItemByName("TextField_LevelNumberSmall") as §&0§).§"S§.text = §#n§.getEpisode(§#n§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
