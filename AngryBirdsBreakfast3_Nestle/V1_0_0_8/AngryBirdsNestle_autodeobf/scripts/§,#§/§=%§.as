package §,#§
{
   import §"!G§.§3!f§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§,!M§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§'L§;
   import §;"+§.§9!M§;
   import §;"+§.§?!P§;
   import §;"+§.§^!i§;
   import §=b§.§5!p§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §`!§.§>`§;
   import com.angrybirds.§4"6§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §=%§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelSelectionState";
      
      protected static const §9!n§:Number = 0.5;
      
      public static var §-!E§:String = "";
       
      
      protected var §#L§:Boolean = false;
      
      protected var §]!K§:§^!i§;
      
      protected var §5@§:§^!i§;
      
      protected var §6v§:MovieClip;
      
      protected var §8!>§:Array;
      
      protected var §5!_§:Array;
      
      protected var §]O§:int = 0;
      
      protected var §73§:int = 0;
      
      protected var §8P§:int = 0;
      
      protected var §2'§:Boolean = false;
      
      protected var §?!l§:§["$§ = null;
      
      protected var §`!q§:Dictionary;
      
      protected var §4L§:Array;
      
      protected var §[1§:Array;
      
      protected var § Y§:§5!p§;
      
      protected var §>"4§:Number = 0;
      
      public function §=%§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§<",§();
         while(this.§5@§.mClip.numChildren > 0)
         {
            this.§5@§.mClip.removeChildAt(0);
         }
         this.§5!_§ = [];
         this.§8!>§ = [];
      }
      
      protected function §<",§() : void
      {
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelSelection[0]);
         this.§5@§ = §^!6§.getItemByName("Container_LevelRepeaters") as §^!i§;
         this.§]!K§ = §^!6§.getItemByName("Container_LevelSelection") as §^!i§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.clearLevel();
         §4"6§.§;!k§.§7!X§(false);
         this.§?N§();
         §-O§.§5!1§.§"-§();
         if(this.§5!_§.length == 1)
         {
            (§^!6§.getItemByName("Button_Prev") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_Next") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).setVisibility(false);
         }
         else
         {
            (§^!6§.getItemByName("Button_Prev") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_Next") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).setVisibility(true);
         }
         this.§>"4§ = this.§5@§.x;
         if(§^!6§.stage)
         {
            §^!6§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
         }
      }
      
      protected function §&x§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§]8§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§ '§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§4P§();
         this.§#!"§();
      }
      
      protected function §4P§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!>§.length)
         {
            if(-this.§5@§.x >= this.§5!_§[_loc1_].x && -this.§>"4§ < this.§5!_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!>§.length)
               {
                  this.§8!>§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8P§ = _loc1_;
               this.§8!>§[_loc1_].gotoAndStop("Selected");
               (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).x = this.§8!>§[_loc1_].x;
               this.§6P§(_loc1_);
            }
            if(-this.§5@§.x <= this.§5!_§[_loc1_].x && -this.§>"4§ > this.§5!_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!>§.length)
               {
                  this.§8!>§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8P§ = _loc1_;
               this.§8!>§[_loc1_].gotoAndStop("Selected");
               (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).x = this.§8!>§[_loc1_].x;
               this.§6P§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§8P§ != this.§]O§)
         {
            if(this.§]O§ > this.§8P§)
            {
               this.§73§ = this.§8P§ + 1;
            }
            else if(this.§]O§ < this.§8P§)
            {
               this.§73§ = this.§8P§ - 1;
            }
            else
            {
               this.§73§ = this.§8P§;
            }
            this.§ Y§.§,!#§(this.§4L§[this.§73§].red,this.§4L§[this.§73§].green,this.§4L§[this.§73§].blue);
         }
         this.§>"4§ = this.§5@§.x;
      }
      
      protected function §#!"§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!_§.length)
         {
            _loc2_ = this.§5@§.x + this.§5!_§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§5!_§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§5!_§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§5!_§[_loc1_].mClip.alpha < 1)
            {
               (this.§5!_§[_loc1_] as §'L§).setEnabled(false);
            }
            else
            {
               (this.§5!_§[_loc1_] as §'L§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§^!6§.stage)
         {
            §^!6§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&x§);
         }
         super.deActivate();
         this.§&!?§();
         (§^!6§.getItemByName("Button_Back") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!3§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§?!l§)
         {
            this.§?!l§.stop();
            this.§?!l§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         if(param2.length > 0 && param3 is §?!P§)
         {
            if((param3 as §?!P§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §?!P§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§2'§)
               {
                  §!3§.loadLevel(§!3§.getValidLevelId(param2.toLowerCase()));
                  §'"6§(StateCutScene.§'u§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §]d§.§^!J§("Menu_Back");
               §'"6§(StateEpisodeSelection.§'u§);
               break;
            case "NEXT":
               this.§ '§();
               break;
            case "PREV":
               this.§]8§();
               break;
            case "FULLSCREEN_BUTTON":
               §]d§.§^!J§("Menu_Confirm");
               §-O§.§5!1§.§0`§();
         }
      }
      
      protected function § '§() : void
      {
         §]d§.§^!J§("Menu_Confirm");
         if(!this.§2'§)
         {
            ++this.§]O§;
            this.§5z§(this.§]O§);
         }
      }
      
      protected function §]8§() : void
      {
         §]d§.§^!J§("Menu_Confirm");
         if(!this.§2'§)
         {
            --this.§]O§;
            this.§5z§(this.§]O§);
         }
      }
      
      public function §?N§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§4L§ = [];
         this.§[1§ = [];
         var _loc2_:§,!M§ = §!3§.getEpisode(§!3§.currentEpisode);
         this.§]O§ = _loc2_.currentPage;
         this.§73§ = this.§]O§;
         this.§8P§ = this.§]O§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`!=§)
         {
            _loc4_ = _loc2_.§%!N§(_loc3_);
            this.§4L§.push(_loc2_.§-[§(_loc3_));
            this.§[1§.push(_loc2_.§?!0§(_loc3_));
            _loc1_ = this.§ !i§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§ Y§ = new §5!p§(this.§4L§[this.§]O§].red,this.§4L§[this.§]O§].green,this.§4L§[this.§]O§].blue,1);
         §^!6§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§ Y§);
         if(_loc2_.§2"-§)
         {
            _loc6_ = new (_loc5_ = §2"&§.§<$§(_loc2_.§2"-§))();
            §^!6§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §^!6§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§=!`§)
         {
            _loc8_ = new (_loc7_ = §2"&§.§<$§(_loc2_.§=!`§))();
            §^!6§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §^!6§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§%!%§();
         if(§-!E§ == StateCutScene.§'u§)
         {
            §-!E§ = "";
            this.§5z§(this.§8P§);
         }
         else
         {
            this.§5z§(this.§]O§,true);
         }
      }
      
      protected function § !i§(param1:Array, param2:int, param3:Number, param4:§,!M§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §2"&§.§<$§(this.§[1§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-O§.§5!1§.§]u§.userProgress.§4"%§(_loc10_);
            _loc12_ = this.§#!M§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §-O§.§5Y§)
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
         _loc8_.@button = this.§[1§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§'L§;
         (_loc9_ = new §'L§(_loc8_,this.§5@§,null,null)).§19§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§5@§.§7!g§(_loc9_);
         this.§5!_§.push(_loc9_);
         return Number(param3 + §-O§.§"!V§);
      }
      
      protected function §#!M§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§-O§.§5!1§.§]u§.userProgress.§8!w§(param1) == 100)
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
            _loc7_ = §-O§.§5!1§.§]u§.userProgress.§<!8§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §%!%§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§5!_§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§`!q§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§5!_§.length)
         {
            _loc1_ = §2"&§.§<$§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-O§.§"!V§ / 2 + _loc3_ - this.§5!_§.length * _loc2_.width / 2;
            _loc2_.y = (§^!6§.getItemByName("Button_Next") as §9!M§).y - _loc2_.height / 2;
            if(_loc4_ == this.§]O§)
            {
               _loc2_.gotoAndStop("Selected");
               (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).x = _loc2_.x;
               (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).y = _loc2_.y - _loc2_.height;
               this.§6P§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§]!K§.mClip.addChild(_loc2_);
            this.§`!q§[_loc2_] = _loc4_;
            this.§8!>§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!z§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§5!_§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§^!6§.getItemByName("Button_Next") as §9!M§).x = §-O§.§"!V§ / 2;
         (§^!6§.getItemByName("Button_Prev") as §9!M§).x = §-O§.§"!V§ / 2;
         (§^!6§.getItemByName("Button_Next") as §9!M§).x = (§^!6§.getItemByName("Button_Next") as §9!M§).x + (_loc3_ + 10);
         (§^!6§.getItemByName("Button_Prev") as §9!M§).x = (§^!6§.getItemByName("Button_Prev") as §9!M§).x - (_loc3_ + 10);
      }
      
      protected function §&!?§() : void
      {
         if(this.§ Y§)
         {
            this.§ Y§.§6T§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!>§.length)
         {
            if(this.§]!K§.mClip.contains(this.§8!>§[_loc1_]))
            {
               this.§8!>§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!z§);
               this.§]!K§.mClip.removeChild(this.§8!>§[_loc1_]);
            }
            _loc1_++;
         }
         this.§8!>§ = [];
         while(this.§5@§.mClip.numChildren > 0)
         {
            this.§5@§.mClip.removeChildAt(0);
         }
         this.§5!_§ = [];
      }
      
      protected function §^!z§(param1:MouseEvent) : void
      {
         if(!this.§2'§)
         {
            this.§5z§(this.§`!q§[param1.target]);
         }
      }
      
      protected function §#!R§(param1:MouseEvent) : void
      {
         if(!this.§2'§)
         {
            §'"6§(§=%§.§'u§);
         }
      }
      
      protected function §5z§(param1:int, param2:Boolean = false) : void
      {
         this.§2'§ = true;
         if(param1 > this.§5!_§.length - 1)
         {
            param1 = this.§5!_§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]O§ = param1;
         if(this.§]O§ > this.§8P§)
         {
            this.§73§ = this.§8P§ + 1;
         }
         else if(this.§]O§ < this.§8P§)
         {
            this.§73§ = this.§8P§ - 1;
         }
         var _loc3_:Number = -this.§5!_§[param1].x;
         var _loc4_:Number = this.§5!_§[param1].x + this.§5@§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §9!n§;
         if(this.§?!l§ != null)
         {
            this.§?!l§.stop();
         }
         if(param2)
         {
            this.§5@§.x = _loc3_;
         }
         else
         {
            this.§?!l§ = §6!u§.§"e§.§0!O§(this.§5@§,{"x":_loc3_},null,_loc5_,§>`§.easeOut);
            this.§?!l§.onComplete = this.§<=§;
         }
         if(param2)
         {
            this.§<=§();
         }
         else
         {
            this.§?!l§.play();
         }
      }
      
      protected function §<=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!>§.length)
         {
            if(_loc1_ == this.§]O§)
            {
               this.§8!>§[_loc1_].gotoAndStop("Selected");
               (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).x = this.§8!>§[_loc1_].x;
               this.§6P§(_loc1_);
            }
            else
            {
               this.§8!>§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§2'§ = false;
         §!3§.getEpisode(§!3§.currentEpisode).currentPage = this.§]O§;
      }
      
      protected function §6P§(param1:int) : void
      {
         (§^!6§.getItemByName("TextField_LevelNumberSmall") as §"!I§).§6s§.text = §!3§.getEpisode(§!3§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
