package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§77§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §6!_§.§+=§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§4!O§;
   import §@#§.§5g§;
   import §@#§.§9!'§;
   import §@#§.§;B§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`!_§.§[!q§;
   import com.angrybirds.§6U§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §]l§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelSelectionState";
      
      protected static const §@!M§:Number = 0.5;
      
      public static var §'A§:String = "";
       
      
      protected var §'H§:Boolean = false;
      
      protected var §'t§:§9!'§;
      
      protected var § !q§:§9!'§;
      
      protected var §4!X§:MovieClip;
      
      protected var §-s§:Array;
      
      protected var §@!5§:Array;
      
      protected var §-@§:int = 0;
      
      protected var §=!M§:int = 0;
      
      protected var §;p§:int = 0;
      
      protected var §;?§:Boolean = false;
      
      protected var §7p§:§4!N§ = null;
      
      protected var §4!s§:Dictionary;
      
      protected var §]!R§:Array;
      
      protected var §7!A§:Array;
      
      protected var §[""§:§[!q§;
      
      protected var §]!L§:Number = 0;
      
      public function §]l§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8!T§();
         while(this.§ !q§.mClip.numChildren > 0)
         {
            this.§ !q§.mClip.removeChildAt(0);
         }
         this.§@!5§ = [];
         this.§-s§ = [];
      }
      
      protected function §8!T§() : void
      {
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelSelection[0]);
         this.§ !q§ = §#2§.getItemByName("Container_LevelRepeaters") as §9!'§;
         this.§'t§ = §#2§.getItemByName("Container_LevelSelection") as §9!'§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.clearLevel();
         §6U§.§+_§.§ W§(false);
         this.§7§();
         §-!l§.§"x§.§"H§();
         if(this.§@!5§.length == 1)
         {
            (§#2§.getItemByName("Button_Prev") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_Next") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).setVisibility(false);
         }
         else
         {
            (§#2§.getItemByName("Button_Prev") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_Next") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).setVisibility(true);
         }
         this.§]!L§ = this.§ !q§.x;
         if(§#2§.stage)
         {
            §#2§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<!d§);
         }
      }
      
      protected function §<!d§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§8",§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§`!8§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§^!§();
         this.§^!;§();
      }
      
      protected function §^!§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-s§.length)
         {
            if(-this.§ !q§.x >= this.§@!5§[_loc1_].x && -this.§]!L§ < this.§@!5§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-s§.length)
               {
                  this.§-s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;p§ = _loc1_;
               this.§-s§[_loc1_].gotoAndStop("Selected");
               (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).x = this.§-s§[_loc1_].x;
               this.§<+§(_loc1_);
            }
            if(-this.§ !q§.x <= this.§@!5§[_loc1_].x && -this.§]!L§ > this.§@!5§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-s§.length)
               {
                  this.§-s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;p§ = _loc1_;
               this.§-s§[_loc1_].gotoAndStop("Selected");
               (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).x = this.§-s§[_loc1_].x;
               this.§<+§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§;p§ != this.§-@§)
         {
            if(this.§-@§ > this.§;p§)
            {
               this.§=!M§ = this.§;p§ + 1;
            }
            else if(this.§-@§ < this.§;p§)
            {
               this.§=!M§ = this.§;p§ - 1;
            }
            else
            {
               this.§=!M§ = this.§;p§;
            }
            this.§[""§.§0!s§(this.§]!R§[this.§=!M§].red,this.§]!R§[this.§=!M§].green,this.§]!R§[this.§=!M§].blue);
         }
         this.§]!L§ = this.§ !q§.x;
      }
      
      protected function §^!;§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!5§.length)
         {
            _loc2_ = this.§ !q§.x + this.§@!5§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§@!5§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§@!5§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§@!5§[_loc1_].mClip.alpha < 1)
            {
               (this.§@!5§[_loc1_] as §;B§).setEnabled(false);
            }
            else
            {
               (this.§@!5§[_loc1_] as §;B§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§#2§.stage)
         {
            §#2§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§<!d§);
         }
         super.deActivate();
         this.§1U§();
         (§#2§.getItemByName("Button_Back") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+o§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§7p§)
         {
            this.§7p§.stop();
            this.§7p§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         if(param2.length > 0 && param3 is §5g§)
         {
            if((param3 as §5g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §5g§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;?§)
               {
                  §+o§.loadLevel(§+o§.getValidLevelId(param2.toLowerCase()));
                  §0!w§(StateCutScene.§+B§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §3!k§.§]"4§("Menu_Back");
               §0!w§(StateEpisodeSelection.§+B§);
               break;
            case "NEXT":
               this.§`!8§();
               break;
            case "PREV":
               this.§8",§();
               break;
            case "FULLSCREEN_BUTTON":
               §3!k§.§]"4§("Menu_Confirm");
               §-!l§.§"x§.§3l§();
         }
      }
      
      protected function §`!8§() : void
      {
         §3!k§.§]"4§("Menu_Confirm");
         if(!this.§;?§)
         {
            ++this.§-@§;
            this.§0!t§(this.§-@§);
         }
      }
      
      protected function §8",§() : void
      {
         §3!k§.§]"4§("Menu_Confirm");
         if(!this.§;?§)
         {
            --this.§-@§;
            this.§0!t§(this.§-@§);
         }
      }
      
      public function §7§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§]!R§ = [];
         this.§7!A§ = [];
         var _loc2_:§77§ = §+o§.getEpisode(§+o§.currentEpisode);
         this.§-@§ = _loc2_.currentPage;
         this.§=!M§ = this.§-@§;
         this.§;p§ = this.§-@§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§;b§)
         {
            _loc4_ = _loc2_.§^"4§(_loc3_);
            this.§]!R§.push(_loc2_.§[!U§(_loc3_));
            this.§7!A§.push(_loc2_.§&V§(_loc3_));
            _loc1_ = this.§4!E§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§[""§ = new §[!q§(this.§]!R§[this.§-@§].red,this.§]!R§[this.§-@§].green,this.§]!R§[this.§-@§].blue,1);
         §#2§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§[""§);
         if(_loc2_.§1"2§)
         {
            _loc6_ = new (_loc5_ = §&!2§.§0!O§(_loc2_.§1"2§))();
            §#2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §#2§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§=!V§)
         {
            _loc8_ = new (_loc7_ = §&!2§.§0!O§(_loc2_.§=!V§))();
            §#2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §#2§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§+6§();
         if(§'A§ == StateCutScene.§+B§)
         {
            §'A§ = "";
            this.§0!t§(this.§;p§);
         }
         else
         {
            this.§0!t§(this.§-@§,true);
         }
      }
      
      protected function §4!E§(param1:Array, param2:int, param3:Number, param4:§77§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §&!2§.§0!O§(this.§7!A§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-!l§.§"x§.§?"&§.userProgress.§7"2§(_loc10_);
            _loc12_ = this.§!!b§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §-!l§.§`"$§)
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
         _loc8_.@button = this.§7!A§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§;B§;
         (_loc9_ = new §;B§(_loc8_,this.§ !q§,null,null)).§+!V§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§ !q§.§8!F§(_loc9_);
         this.§@!5§.push(_loc9_);
         return Number(param3 + §-!l§.§?g§);
      }
      
      protected function §!!b§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§-!l§.§"x§.§?"&§.userProgress.§#!1§(param1) == 100)
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
            _loc7_ = §-!l§.§"x§.§?"&§.userProgress.§4o§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §+6§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§@!5§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§4!s§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§@!5§.length)
         {
            _loc1_ = §&!2§.§0!O§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-!l§.§?g§ / 2 + _loc3_ - this.§@!5§.length * _loc2_.width / 2;
            _loc2_.y = (§#2§.getItemByName("Button_Next") as §4!O§).y - _loc2_.height / 2;
            if(_loc4_ == this.§-@§)
            {
               _loc2_.gotoAndStop("Selected");
               (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).x = _loc2_.x;
               (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).y = _loc2_.y - _loc2_.height;
               this.§<+§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§'t§.mClip.addChild(_loc2_);
            this.§4!s§[_loc2_] = _loc4_;
            this.§-s§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§0"%§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§@!5§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§#2§.getItemByName("Button_Next") as §4!O§).x = §-!l§.§?g§ / 2;
         (§#2§.getItemByName("Button_Prev") as §4!O§).x = §-!l§.§?g§ / 2;
         (§#2§.getItemByName("Button_Next") as §4!O§).x = (§#2§.getItemByName("Button_Next") as §4!O§).x + (_loc3_ + 10);
         (§#2§.getItemByName("Button_Prev") as §4!O§).x = (§#2§.getItemByName("Button_Prev") as §4!O§).x - (_loc3_ + 10);
      }
      
      protected function §1U§() : void
      {
         if(this.§[""§)
         {
            this.§[""§.§=!I§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§-s§.length)
         {
            if(this.§'t§.mClip.contains(this.§-s§[_loc1_]))
            {
               this.§-s§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§0"%§);
               this.§'t§.mClip.removeChild(this.§-s§[_loc1_]);
            }
            _loc1_++;
         }
         this.§-s§ = [];
         while(this.§ !q§.mClip.numChildren > 0)
         {
            this.§ !q§.mClip.removeChildAt(0);
         }
         this.§@!5§ = [];
      }
      
      protected function §0"%§(param1:MouseEvent) : void
      {
         if(!this.§;?§)
         {
            this.§0!t§(this.§4!s§[param1.target]);
         }
      }
      
      protected function §&o§(param1:MouseEvent) : void
      {
         if(!this.§;?§)
         {
            §0!w§(§]l§.§+B§);
         }
      }
      
      protected function §0!t§(param1:int, param2:Boolean = false) : void
      {
         this.§;?§ = true;
         if(param1 > this.§@!5§.length - 1)
         {
            param1 = this.§@!5§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§-@§ = param1;
         if(this.§-@§ > this.§;p§)
         {
            this.§=!M§ = this.§;p§ + 1;
         }
         else if(this.§-@§ < this.§;p§)
         {
            this.§=!M§ = this.§;p§ - 1;
         }
         var _loc3_:Number = -this.§@!5§[param1].x;
         var _loc4_:Number = this.§@!5§[param1].x + this.§ !q§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §@!M§;
         if(this.§7p§ != null)
         {
            this.§7p§.stop();
         }
         if(param2)
         {
            this.§ !q§.x = _loc3_;
         }
         else
         {
            this.§7p§ = §0!M§.§?!+§.§3d§(this.§ !q§,{"x":_loc3_},null,_loc5_,§+=§.easeOut);
            this.§7p§.onComplete = this.§?!?§;
         }
         if(param2)
         {
            this.§?!?§();
         }
         else
         {
            this.§7p§.play();
         }
      }
      
      protected function §?!?§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§-s§.length)
         {
            if(_loc1_ == this.§-@§)
            {
               this.§-s§[_loc1_].gotoAndStop("Selected");
               (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).x = this.§-s§[_loc1_].x;
               this.§<+§(_loc1_);
            }
            else
            {
               this.§-s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;?§ = false;
         §+o§.getEpisode(§+o§.currentEpisode).currentPage = this.§-@§;
      }
      
      protected function §<+§(param1:int) : void
      {
         (§#2§.getItemByName("TextField_LevelNumberSmall") as §>L§).§<!=§.text = §+o§.getEpisode(§+o§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
