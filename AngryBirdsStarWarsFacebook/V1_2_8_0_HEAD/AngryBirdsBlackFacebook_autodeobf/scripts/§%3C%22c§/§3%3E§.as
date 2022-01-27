package §<"c§
{
   import § "4§.§8!R§;
   import §'#&§.§3!l§;
   import §+!c§.§9"1§;
   import §+!c§.§]A§;
   import §+D§.§^"m§;
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§"#G§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §]!$§.§6y§;
   import §]!$§.§`#?§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §3>§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelSelectionState";
      
      private static const §&!X§:Number = 1000 / 60;
      
      protected static var § else§:int = 10;
       
      
      protected var §=#a§:Number;
      
      protected var §"!§:§9"1§;
      
      protected var §"V§:§"#G§ = null;
      
      protected var §4!n§:int;
      
      protected var §@]§:Vector.<§]A§>;
      
      protected var §;"9§:Vector.<§]A§>;
      
      protected var §4"j§:Vector.<§]A§>;
      
      protected var §-!]§:§[#R§;
      
      private var §&o§:MovieClip;
      
      private var §<!a§:MovieClip;
      
      private var § do§:MovieClip;
      
      private var §^"Y§:Array;
      
      private var §#"x§:int = 0;
      
      private var §-!@§:int = 0;
      
      private var §%%§:int = 0;
      
      public function §3>§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         this.§;"9§ = new Vector.<§]A§>(§ else§);
         this.§4"j§ = new Vector.<§]A§>(§ else§);
         this.§^"Y§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §7#^§ = true;
         §7!z§.push("start_run_levelselection","end_run_levelselection");
         this.§!#<§();
      }
      
      protected function §!#<§() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelSelection[0]);
         this.§&o§ = §@;§.getItemByName("MovieClip_Levels").mClip.levels;
         while(this.§&o§.numChildren > 0)
         {
            this.§&o§.removeChildAt(0);
         }
         this.§<!a§ = §@;§.getItemByName("MovieClip_PagingDots").mClip.pagingDots;
         while(this.§<!a§.numChildren > 0)
         {
            this.§<!a§.removeChildAt(0);
         }
         this.§ do§ = §@;§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§"!§ = new §9"1§("StarBackground");
         §@;§.movieClip.addChildAt(this.§"!§,0);
      }
      
      private function §%!7§(param1:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         §,!q§.§9!,§.clearLevel();
         §,!q§.§9!,§.§]"J§(false);
         §4#;§.singleton.playThemeMusic();
         var _loc2_:§"#G§ = §"#G§(§+!b§.getEpisode(§+!b§.currentEpisode));
         this.§5n§();
         var _loc3_:* = this.§"V§ != _loc2_;
         if(_loc3_)
         {
            this.§"V§ = _loc2_;
            this.§4!n§ = this.§"V§.levelsPerPage * this.§"V§.§6">§;
            _loc4_ = 0;
            while(_loc4_ < this.§ do§.numChildren)
            {
               _loc5_ = MovieClip(this.§ do§.getChildAt(_loc4_));
               _loc5_.visible = _loc5_.name == "planet_" + this.§"V§.name;
               _loc4_++;
            }
            this.§8"6§();
            this.§@]§ = new Vector.<§]A§>();
            this.§""j§();
         }
         this.§+!L§(param1,_loc3_);
      }
      
      private function §5n§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ do§.numChildren)
         {
            _loc2_ = MovieClip(this.§ do§.getChildAt(_loc1_));
            this.§5!l§(_loc2_,§+!b§.getEpisodeByName(_loc2_.name.split("_")[1]));
            _loc1_++;
         }
      }
      
      private function §5!l§(param1:MovieClip, param2:§3![§) : void
      {
         var _loc4_:* = false;
         var _loc3_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         param1.infoBox.info.txtScore.text = _loc3_.§]#B§(param2).toString();
         param1.infoBox.info.txtStars.text = _loc3_.§'e§(param2).toString() + "/" + param2.§!#J§() * 3;
         param1.infoBox.info.txtFalcons.text = _loc3_.§`"q§(param2).toString() + "/" + param2.§!#J§();
         if(param2.name == "4")
         {
            _loc4_ = !§4#;§.singleton.dataModel.userProgress.isLevelPassed(§+!b§.getEpisodeByName("2").getLevelName(39));
            param1.gotoAndStop(!!_loc4_ ? "locked" : "unlocked");
            param1.mouseEnabled = !_loc4_;
            param1.infoBox.info.visible = !_loc4_;
         }
      }
      
      protected function §8"6§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§4"j§.length)
         {
            if(this.§4"j§[_loc1_])
            {
               this.§&o§.removeChild(this.§4"j§[_loc1_]);
               this.§4=§(this.§4"j§[_loc1_]);
               this.§4"j§[_loc1_] = null;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§;"9§.length)
         {
            if(this.§;"9§[_loc1_])
            {
               this.§&o§.removeChild(this.§;"9§[_loc1_]);
               this.§4=§(this.§;"9§[_loc1_]);
               this.§;"9§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §+!L§(param1:Boolean, param2:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         var _loc5_:Array = this.§"V§.§0!_§();
         var _loc6_:int = 0;
         while(_loc6_ < this.§4!n§)
         {
            if(_loc3_.getScoreForLevel(_loc5_[_loc6_]) > 0 || _loc3_.getEagleScoreForLevel(_loc5_[_loc6_]) > 0)
            {
               _loc4_ = _loc6_;
            }
            _loc6_++;
         }
         var _loc7_:int = _loc4_ == this.§4!n§ - 1 ? int(_loc4_) : int(_loc4_ + 1);
         if(!param2 && §+!b§.currentLevel)
         {
            if((_loc9_ = _loc5_.indexOf(§+!b§.currentLevel)) > -1)
            {
               _loc7_ = _loc9_;
            }
         }
         var _loc8_:int = Math.floor(_loc7_ / § else§);
         if(§3"v§ == §"C§.§^!7§ || param2)
         {
            this.§#"x§ = -1;
         }
         else if(this.§#"x§ == _loc8_)
         {
            this.scrollIndex = this.scrollIndex;
            this.§[H§();
            return;
         }
         this.§+G§(_loc8_,param1);
      }
      
      protected function §""j§() : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:int = Math.ceil((this.§"V§.§!#J§() + this.§"V§.lockedLevelCount) / § else§);
         while(_loc1_ < this.§^"Y§.length)
         {
            this.§<!a§.removeChild(this.§^"Y§.pop()).removeEventListener(MouseEvent.CLICK,this.§^8§);
         }
         while(_loc1_ > this.§^"Y§.length)
         {
            _loc4_ = new §5_§.§`"G§("PagingDot")();
            this.§<!a§.addChild(_loc4_);
            this.§^"Y§.push(_loc4_);
            _loc4_.buttonMode = true;
            _loc4_.addEventListener(MouseEvent.CLICK,this.§^8§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            (_loc5_ = this.§^"Y§[_loc3_]).x = -(_loc1_ - 1) / 2 * 35 + _loc3_ * 35;
            _loc5_.gotoAndStop(_loc3_ == 0 ? "true" : "false");
            _loc3_++;
         }
      }
      
      private function §^8§(param1:MouseEvent) : void
      {
         if(this.§-!]§ || isTransitioning)
         {
            return;
         }
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         this.§+G§(this.§^"Y§.indexOf(param1.currentTarget));
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         this.§%!7§(param1);
      }
      
      public function get scrollIndex() : Number
      {
         return this.§=#a§;
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = false;
         this.§=#a§ = param1;
         var _loc2_:Number = § else§ / 2 - 0.5;
         var _loc3_:Number = (§ else§ / 2 + 0.5) / (§ else§ / 2 - 0.5);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;"9§.length)
         {
            _loc6_ = ((_loc5_ = this.§#"x§ < this.§-!@§ ? Number(-1) : Number(1)) * this.§=#a§ * § else§ + _loc4_ - _loc2_) / _loc2_;
            if(!(_loc7_ = Math.abs(_loc6_) < _loc3_) && this.§;"9§[_loc4_] != null)
            {
               this.§&o§.removeChild(this.§;"9§[_loc4_]);
               this.§4=§(this.§;"9§[_loc4_]);
               this.§;"9§[_loc4_] = null;
            }
            if(_loc7_ && this.§;"9§[_loc4_])
            {
               this.§ !k§(this.§;"9§[_loc4_],_loc6_);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§4"j§.length)
         {
            _loc9_ = ((_loc8_ = this.§#"x§ < this.§-!@§ ? Number(1) : Number(-1)) * (1 - this.§=#a§) * § else§ + _loc4_ - _loc2_) / _loc2_;
            if((_loc10_ = Math.abs(_loc9_) <= _loc3_) && this.§4"j§[_loc4_] == null)
            {
               this.§4"j§[_loc4_] = this.addButton(this.§-!@§ * § else§ + _loc4_);
            }
            if(_loc10_)
            {
               this.§ !k§(this.§4"j§[_loc4_],_loc9_);
            }
            _loc4_++;
         }
         this.§7n§();
      }
      
      protected function §7n§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"Y§.length)
         {
            _loc2_ = this.§#"x§ + this.§=#a§ * (this.§-!@§ - this.§#"x§) + 0.5;
            if(_loc1_ > _loc2_ - 1 && _loc1_ < _loc2_)
            {
               this.§^"Y§[_loc1_].gotoAndStop("true");
            }
            else
            {
               this.§^"Y§[_loc1_].gotoAndStop("false");
            }
            _loc1_++;
         }
      }
      
      protected function § !k§(param1:§]A§, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc3_:Number = Math.abs(param2);
         if(_loc3_ <= 1)
         {
            _loc6_ = 0.45;
            if(_loc3_ < _loc6_)
            {
               _loc7_ = _loc3_ / _loc6_;
               param2 = (_loc7_ = Math.pow(_loc7_,1.04)) * _loc6_ * (param2 < 0 ? -1 : 1);
            }
            else
            {
               _loc7_ = (_loc3_ - _loc6_) / (1 - _loc6_);
               _loc7_ = 1 - Math.pow(1 - _loc7_,1.4);
               param2 = (_loc6_ + _loc7_ * (1 - _loc6_)) * (param2 < 0 ? -1 : 1);
            }
            _loc4_ = param2 * 0.825;
         }
         else
         {
            _loc8_ = param2 < 0 ? Number(param2 + 1) : Number(param2 - 1);
            _loc9_ = (§ else§ / 2 + 0.5) / (§ else§ / 2 - 0.5) - 1;
            _loc10_ = (_loc10_ = _loc8_ / _loc9_) * 0.8;
            _loc4_ = (param2 < 0 ? -0.825 : 0.825) + _loc10_ * (1 - 0.825);
         }
         param1.x = Math.sin(_loc4_ * Math.PI) * 380;
         param1.y = Math.cos(_loc4_ * Math.PI) * 230 - 230;
         param1.scaleX = param1.scaleY = 0.45 + (1 - Math.min(1,Math.abs(param2))) * 0.4;
      }
      
      protected function addButton(param1:int) : §]A§
      {
         var _loc2_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         var _loc3_:String = this.§"V§.getLevelName(param1);
         var _loc4_:§]A§ = this.getLevelButton();
         if(_loc3_ == null)
         {
            _loc4_.§2p§ = true;
         }
         else
         {
            _loc4_.§2p§ = false;
            _loc4_.locked = !_loc2_.isLevelOpen(_loc3_);
            _loc4_.§@"T§ = param1 + 1;
            _loc4_.§[!F§ = _loc2_.getStarsForLevel(_loc3_);
            _loc4_.§,!M§ = _loc2_.getEagleScoreForLevel(_loc3_);
            _loc4_.§3P§ = _loc2_.getScoreForLevel(_loc3_) == 0 && _loc2_.getEagleScoreForLevel(_loc3_) == 0 && !_loc4_.locked;
            _loc4_.hasIntro = !_loc4_.locked && this.§"V§.getCutScene(this.§"V§.name + "-" + (param1 + 1) + "-INTRO") != null;
            _loc4_.hasOutro = !_loc4_.locked && this.§"V§.getCutScene(this.§"V§.name + "-" + (param1 + 1) + "-OUTRO") != null;
         }
         _loc4_.scaleY = 0.5;
         _loc4_.scaleX = 0.5;
         this.§&o§.addChildAt(_loc4_,0);
         return _loc4_;
      }
      
      protected function getLevelButton() : §]A§
      {
         if(this.§@]§.length > 0)
         {
            return this.§@]§.pop();
         }
         var _loc1_:§]A§ = new §]A§(this.§"V§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,this.§&K§);
         return _loc1_;
      }
      
      protected function §&K§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§]A§ = param1.currentTarget as §]A§;
         if(!_loc2_.locked && !_loc2_.§2p§ || §4#;§.§<N§)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            §+!b§.loadLevel(this.§"V§.getLevelName(_loc2_.§@"T§ - 1));
            § g§(StateCutScene.§^!7§);
         }
      }
      
      private function §4=§(param1:§]A§) : void
      {
         param1.§3P§ = false;
         this.§@]§.push(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-!]§)
         {
            this.§-!]§.stop();
            this.§-!]§ = null;
         }
         this.§8"6§();
         §+!b§.resetPreviousLevel();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§"!§.setSize(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "PREV":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§+G§(this.§#"x§ - 1);
               break;
            case "NEXT":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§+G§(this.§#"x§ + 1);
               break;
            case "BACK":
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(§"C§.§^!7§,true);
         }
      }
      
      private function §+G§(param1:int, param2:Boolean = false) : void
      {
         if(this.§-!]§)
         {
            return;
         }
         if(param1 == this.§#"x§)
         {
            return;
         }
         this.§-!@§ = param1;
         this.§=#a§ = 0;
         if(param2)
         {
            this.scrollIndex = 1;
            this.§[H§();
         }
         else
         {
            this.§-!]§ = §-#C§.§%!E§.§^!H§(this,{"scrollIndex":1},null,2.3,§9!Z§.easeInOut);
            this.§-!]§.onComplete = this.§[H§;
            this.§-!]§.play();
            §?!r§.§"#_§("levelselect_levels_orbit");
         }
         var _loc3_:* = this.§-!@§ > 0;
         var _loc4_:* = this.§-!@§ < Math.ceil((this.§4!n§ + this.§"V§.lockedLevelCount) / § else§) - 1;
         (§@;§.getItemByName("Button_Prev") as §^"m§).setComponentState(!!_loc3_ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         (§@;§.getItemByName("Button_Next") as §^"m§).setComponentState(!!_loc4_ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
      }
      
      private function §[H§() : void
      {
         this.§#"x§ = this.§-!@§;
         var _loc1_:int = 0;
         while(_loc1_ < § else§)
         {
            this.§;"9§[_loc1_] = this.§4"j§[_loc1_];
            this.§4"j§[_loc1_] = null;
            _loc1_++;
         }
         this.§-!]§ = null;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §7!=§ = new §3!l§(param1,§%G§.stage,§&!X§);
      }
      
      override protected function beforeTransitionStart(param1:§6y§) : void
      {
         §3!l§(§7!=§).§%'§(§+!b§.getEpisode(§+!b§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6y§.§>]§)
         {
            §?!r§.§"#_§("levelselect_levels_appear");
         }
         else if(param1 == §6y§.§;X§)
         {
            §?!r§.§"#_§("tournament_outro_transition");
         }
      }
      
      override protected function getRunTransitionData() : §6y§
      {
         return new §6y§("start_run_levelselection",§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,§+#=§,§^!`§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         _loc2_ = param1.keyCode - Keyboard.NUMBER_0 - 1;
         if(_loc2_ >= 0 && _loc2_ < Math.ceil(this.§4!n§ / § else§))
         {
            if(this.§-!]§)
            {
               this.§-!]§.stop();
               this.§-!]§ = null;
               this.§[H§();
            }
            this.§+G§(_loc2_,true);
         }
      }
   }
}
