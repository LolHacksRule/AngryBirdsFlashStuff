package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'!W§.§=!'§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§!!j§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]!>§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §^j§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelSelectionState";
      
      protected static const §+"0§:Number = 0.5;
      
      public static var §4H§:String = "";
       
      
      protected var §%?§:Boolean = false;
      
      protected var §@#§:§,6§;
      
      protected var §6!1§:§,6§;
      
      protected var §5[§:MovieClip;
      
      protected var §^"%§:Array;
      
      protected var §;#§:Array;
      
      protected var §6!R§:int = 0;
      
      protected var §3!"§:int = 0;
      
      protected var §'!6§:int = 0;
      
      protected var §'2§:Boolean = false;
      
      protected var §,!i§:§]W§ = null;
      
      protected var §9""§:Dictionary;
      
      protected var §<!u§:Array;
      
      protected var §,!u§:Array;
      
      protected var §]!b§:§?>§;
      
      protected var §;!"§:Number = 0;
      
      public function §^j§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§=!g§();
         while(this.§6!1§.mClip.numChildren > 0)
         {
            this.§6!1§.mClip.removeChildAt(0);
         }
         this.§;#§ = [];
         this.§^"%§ = [];
      }
      
      protected function §=!g§() : void
      {
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelSelection[0]);
         this.§6!1§ = §^!T§.getItemByName("Container_LevelRepeaters") as §,6§;
         this.§@#§ = §^!T§.getItemByName("Container_LevelSelection") as §,6§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.clearLevel();
         §@!S§.§2A§.§`!V§(false);
         this.§[A§();
         § !4§.§%"7§.§get §();
         if(this.§;#§.length == 1)
         {
            (§^!T§.getItemByName("Button_Prev") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_Next") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).setVisibility(false);
         }
         else
         {
            (§^!T§.getItemByName("Button_Prev") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_Next") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).setVisibility(true);
         }
         this.§;!"§ = this.§6!1§.x;
         if(§^!T§.stage)
         {
            §^!T§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§^!L§);
         }
      }
      
      protected function §^!L§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§18§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§"b§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§8+§();
         this.§+!$§();
      }
      
      protected function §8+§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"%§.length)
         {
            if(-this.§6!1§.x >= this.§;#§[_loc1_].x && -this.§;!"§ < this.§;#§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^"%§.length)
               {
                  this.§^"%§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'!6§ = _loc1_;
               this.§^"%§[_loc1_].gotoAndStop("Selected");
               (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
               this.§ !n§(_loc1_);
            }
            if(-this.§6!1§.x <= this.§;#§[_loc1_].x && -this.§;!"§ > this.§;#§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^"%§.length)
               {
                  this.§^"%§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'!6§ = _loc1_;
               this.§^"%§[_loc1_].gotoAndStop("Selected");
               (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
               this.§ !n§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§'!6§ != this.§6!R§)
         {
            if(this.§6!R§ > this.§'!6§)
            {
               this.§3!"§ = this.§'!6§ + 1;
            }
            else if(this.§6!R§ < this.§'!6§)
            {
               this.§3!"§ = this.§'!6§ - 1;
            }
            else
            {
               this.§3!"§ = this.§'!6§;
            }
            this.§]!b§.§5c§(this.§<!u§[this.§3!"§].red,this.§<!u§[this.§3!"§].green,this.§<!u§[this.§3!"§].blue);
         }
         this.§;!"§ = this.§6!1§.x;
      }
      
      protected function §+!$§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;#§.length)
         {
            _loc2_ = this.§6!1§.x + this.§;#§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§;#§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§;#§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§;#§[_loc1_].mClip.alpha < 1)
            {
               (this.§;#§[_loc1_] as §]!>§).setEnabled(false);
            }
            else
            {
               (this.§;#§[_loc1_] as §]!>§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§^!T§.stage)
         {
            §^!T§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§^!L§);
         }
         super.deActivate();
         this.§[>§();
         (§^!T§.getItemByName("Button_Back") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §4a§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§,!i§)
         {
            this.§,!i§.stop();
            this.§,!i§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         if(param2.length > 0 && param3 is §!!j§)
         {
            if((param3 as §!!j§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §!!j§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§'2§)
               {
                  §4a§.loadLevel(§4a§.getValidLevelId(param2.toLowerCase()));
                  §7"6§(StateCutScene.§8"%§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §>D§.§9!q§("Menu_Back");
               §7"6§(StateEpisodeSelection.§8"%§);
               break;
            case "NEXT":
               this.§"b§();
               break;
            case "PREV":
               this.§18§();
               break;
            case "FULLSCREEN_BUTTON":
               §>D§.§9!q§("Menu_Confirm");
               § !4§.§%"7§.§]!;§();
         }
      }
      
      protected function §"b§() : void
      {
         §>D§.§9!q§("Menu_Confirm");
         if(!this.§'2§)
         {
            ++this.§6!R§;
            this.§[D§(this.§6!R§);
         }
      }
      
      protected function §18§() : void
      {
         §>D§.§9!q§("Menu_Confirm");
         if(!this.§'2§)
         {
            --this.§6!R§;
            this.§[D§(this.§6!R§);
         }
      }
      
      public function §[A§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§<!u§ = [];
         this.§,!u§ = [];
         var _loc2_:§7C§ = §4a§.getEpisode(§4a§.currentEpisode);
         this.§6!R§ = _loc2_.currentPage;
         this.§3!"§ = this.§6!R§;
         this.§'!6§ = this.§6!R§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§4!%§)
         {
            _loc4_ = _loc2_.§&d§(_loc3_);
            this.§<!u§.push(_loc2_.§""%§(_loc3_));
            this.§,!u§.push(_loc2_.§@",§(_loc3_));
            _loc1_ = this.§@!b§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§]!b§ = new §?>§(this.§<!u§[this.§6!R§].red,this.§<!u§[this.§6!R§].green,this.§<!u§[this.§6!R§].blue,1);
         §^!T§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§]!b§);
         if(_loc2_.§#T§)
         {
            _loc6_ = new (_loc5_ = §=!V§.§?!O§(_loc2_.§#T§))();
            §^!T§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §^!T§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§@"2§)
         {
            _loc8_ = new (_loc7_ = §=!V§.§?!O§(_loc2_.§@"2§))();
            §^!T§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §^!T§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§6!`§();
         if(§4H§ == StateCutScene.§8"%§)
         {
            §4H§ = "";
            this.§[D§(this.§'!6§);
         }
         else
         {
            this.§[D§(this.§6!R§,true);
         }
      }
      
      protected function §@!b§(param1:Array, param2:int, param3:Number, param4:§7C§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §=!V§.§?!O§(this.§,!u§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = § !4§.§%"7§.§@D§.userProgress.§2"+§(_loc10_);
            _loc12_ = this.§[!]§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || § !4§.§!L§)
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
         _loc8_.@button = this.§,!u§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§]!>§;
         (_loc9_ = new §]!>§(_loc8_,this.§6!1§,null,null)).§,!z§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§6!1§.§!!1§(_loc9_);
         this.§;#§.push(_loc9_);
         return Number(param3 + § !4§.§&v§);
      }
      
      protected function §[!]§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§ !4§.§%"7§.§@D§.userProgress.§+!]§(param1) == 100)
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
            _loc7_ = § !4§.§%"7§.§@D§.userProgress.§1]§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §6!`§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§;#§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§9""§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§;#§.length)
         {
            _loc1_ = §=!V§.§?!O§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = § !4§.§&v§ / 2 + _loc3_ - this.§;#§.length * _loc2_.width / 2;
            _loc2_.y = (§^!T§.getItemByName("Button_Next") as §]"%§).y - _loc2_.height / 2;
            if(_loc4_ == this.§6!R§)
            {
               _loc2_.gotoAndStop("Selected");
               (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = _loc2_.x;
               (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).y = _loc2_.y - _loc2_.height;
               this.§ !n§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§@#§.mClip.addChild(_loc2_);
            this.§9""§[_loc2_] = _loc4_;
            this.§^"%§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§9j§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§;#§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§^!T§.getItemByName("Button_Next") as §]"%§).x = § !4§.§&v§ / 2;
         (§^!T§.getItemByName("Button_Prev") as §]"%§).x = § !4§.§&v§ / 2;
         (§^!T§.getItemByName("Button_Next") as §]"%§).x = (§^!T§.getItemByName("Button_Next") as §]"%§).x + (_loc3_ + 10);
         (§^!T§.getItemByName("Button_Prev") as §]"%§).x = (§^!T§.getItemByName("Button_Prev") as §]"%§).x - (_loc3_ + 10);
      }
      
      protected function §[>§() : void
      {
         if(this.§]!b§)
         {
            this.§]!b§.§,!#§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"%§.length)
         {
            if(this.§@#§.mClip.contains(this.§^"%§[_loc1_]))
            {
               this.§^"%§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§9j§);
               this.§@#§.mClip.removeChild(this.§^"%§[_loc1_]);
            }
            _loc1_++;
         }
         this.§^"%§ = [];
         while(this.§6!1§.mClip.numChildren > 0)
         {
            this.§6!1§.mClip.removeChildAt(0);
         }
         this.§;#§ = [];
      }
      
      protected function §9j§(param1:MouseEvent) : void
      {
         if(!this.§'2§)
         {
            this.§[D§(this.§9""§[param1.target]);
         }
      }
      
      protected function §6t§(param1:MouseEvent) : void
      {
         if(!this.§'2§)
         {
            §7"6§(§^j§.§8"%§);
         }
      }
      
      protected function §[D§(param1:int, param2:Boolean = false) : void
      {
         this.§'2§ = true;
         if(param1 > this.§;#§.length - 1)
         {
            param1 = this.§;#§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§6!R§ = param1;
         if(this.§6!R§ > this.§'!6§)
         {
            this.§3!"§ = this.§'!6§ + 1;
         }
         else if(this.§6!R§ < this.§'!6§)
         {
            this.§3!"§ = this.§'!6§ - 1;
         }
         var _loc3_:Number = -this.§;#§[param1].x;
         var _loc4_:Number = this.§;#§[param1].x + this.§6!1§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §+"0§;
         if(this.§,!i§ != null)
         {
            this.§,!i§.stop();
         }
         if(param2)
         {
            this.§6!1§.x = _loc3_;
         }
         else
         {
            this.§,!i§ = §0!o§.§,2§.§4!t§(this.§6!1§,{"x":_loc3_},null,_loc5_,§=!'§.easeOut);
            this.§,!i§.onComplete = this.§7§;
         }
         if(param2)
         {
            this.§7§();
         }
         else
         {
            this.§,!i§.play();
         }
      }
      
      protected function §7§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"%§.length)
         {
            if(_loc1_ == this.§6!R§)
            {
               this.§^"%§[_loc1_].gotoAndStop("Selected");
               (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).x = this.§^"%§[_loc1_].x;
               this.§ !n§(_loc1_);
            }
            else
            {
               this.§^"%§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§'2§ = false;
         §4a§.getEpisode(§4a§.currentEpisode).currentPage = this.§6!R§;
      }
      
      protected function § !n§(param1:int) : void
      {
         (§^!T§.getItemByName("TextField_LevelNumberSmall") as §7!&§).§'!"§.text = §4a§.getEpisode(§4a§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
