package §!X§
{
   import §"!P§.§5X§;
   import §""d§.§2"8§;
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§%!$§;
   import §,#+§.§7!m§;
   import §3"R§.§`"6§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §7!@§.§6"§;
   import §7!@§.§[`§;
   import §7""§.§0I§;
   import §7""§.§^!1§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §0",§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelSelectionState";
      
      private static const §7"N§:Number = 1000 / 60;
      
      protected static var §9X§:int = 10;
       
      
      protected var §0`§:Number;
      
      protected var §@,§:§0I§;
      
      protected var §+""§:§%!$§ = null;
      
      protected var §;o§:int;
      
      protected var §[!%§:Vector.<§^!1§>;
      
      protected var §'"S§:Vector.<§^!1§>;
      
      protected var §"!L§:Vector.<§^!1§>;
      
      protected var §6!1§:§4!Q§;
      
      private var §2!Q§:MovieClip;
      
      private var §=!9§:MovieClip;
      
      private var §^#4§:MovieClip;
      
      private var §`"%§:Array;
      
      private var §8"l§:int = 0;
      
      private var §2!o§:int = 0;
      
      private var §&4§:int = 0;
      
      public function §0",§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         this.§'"S§ = new Vector.<§^!1§>(§9X§);
         this.§"!L§ = new Vector.<§^!1§>(§9X§);
         this.§`"%§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §+!g§ = true;
         §!V§.push("start_run_levelselection","end_run_levelselection");
         this.§&§();
      }
      
      protected function §&§() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelSelection[0]);
         this.§2!Q§ = §>I§.getItemByName("MovieClip_Levels").mClip.levels;
         while(this.§2!Q§.numChildren > 0)
         {
            this.§2!Q§.removeChildAt(0);
         }
         this.§=!9§ = §>I§.getItemByName("MovieClip_PagingDots").mClip.pagingDots;
         while(this.§=!9§.numChildren > 0)
         {
            this.§=!9§.removeChildAt(0);
         }
         this.§^#4§ = §>I§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§@,§ = new §0I§("StarBackground");
         §>I§.movieClip.addChildAt(this.§@,§,0);
      }
      
      private function §6!e§(param1:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         §;!e§.§<x§.clearLevel();
         §;!e§.§<x§.§5!y§(false);
         §;"@§.singleton.playThemeMusic();
         var _loc2_:§%!$§ = §%!$§(§ !p§.getEpisode(§ !p§.currentEpisode));
         this.§?"C§();
         var _loc3_:* = this.§+""§ != _loc2_;
         if(_loc3_)
         {
            this.§+""§ = _loc2_;
            this.§;o§ = this.§+""§.levelsPerPage * this.§+""§.§=!v§;
            _loc4_ = 0;
            while(_loc4_ < this.§^#4§.numChildren)
            {
               _loc5_ = MovieClip(this.§^#4§.getChildAt(_loc4_));
               _loc5_.visible = _loc5_.name == "planet_" + this.§+""§.name;
               _loc4_++;
            }
            this.§"!d§();
            this.§[!%§ = new Vector.<§^!1§>();
            this.§?"t§();
         }
         this.§<!B§(param1,_loc3_);
      }
      
      private function §?"C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^#4§.numChildren)
         {
            _loc2_ = MovieClip(this.§^#4§.getChildAt(_loc1_));
            this.§="G§(_loc2_,§ !p§.getEpisodeByName(_loc2_.name.split("_")[1]));
            _loc1_++;
         }
      }
      
      private function §="G§(param1:MovieClip, param2:§ "0§) : void
      {
         var _loc4_:* = false;
         var _loc3_:§5X§ = §;"@§.singleton.dataModel.userProgress;
         param1.infoBox.info.txtScore.text = _loc3_.§["§(param2).toString();
         param1.infoBox.info.txtStars.text = _loc3_.§-""§(param2).toString() + "/" + param2.§7"9§() * 3;
         param1.infoBox.info.txtFalcons.text = _loc3_.§=!T§(param2).toString() + "/" + param2.§7"9§();
         if(param2.name == "4")
         {
            _loc4_ = !§;"@§.singleton.dataModel.userProgress.isLevelPassed(§ !p§.getEpisodeByName("2").getLevelName(39));
            param1.gotoAndStop(!!_loc4_ ? "locked" : "unlocked");
            param1.mouseEnabled = !_loc4_;
            param1.infoBox.info.visible = !_loc4_;
         }
      }
      
      protected function §"!d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!L§.length)
         {
            if(this.§"!L§[_loc1_])
            {
               this.§2!Q§.removeChild(this.§"!L§[_loc1_]);
               this.§ !W§(this.§"!L§[_loc1_]);
               this.§"!L§[_loc1_] = null;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§'"S§.length)
         {
            if(this.§'"S§[_loc1_])
            {
               this.§2!Q§.removeChild(this.§'"S§[_loc1_]);
               this.§ !W§(this.§'"S§[_loc1_]);
               this.§'"S§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §<!B§(param1:Boolean, param2:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:§5X§ = §;"@§.singleton.dataModel.userProgress;
         var _loc5_:Array = this.§+""§.§["'§();
         var _loc6_:int = 0;
         while(_loc6_ < this.§;o§)
         {
            if(_loc3_.getScoreForLevel(_loc5_[_loc6_]) > 0 || _loc3_.getEagleScoreForLevel(_loc5_[_loc6_]) > 0)
            {
               _loc4_ = _loc6_;
            }
            _loc6_++;
         }
         var _loc7_:int = _loc4_ == this.§;o§ - 1 ? int(_loc4_) : int(_loc4_ + 1);
         if(!param2 && § !p§.currentLevel)
         {
            if((_loc9_ = _loc5_.indexOf(§ !p§.currentLevel)) > -1)
            {
               _loc7_ = _loc9_;
            }
         }
         var _loc8_:int = Math.floor(_loc7_ / §9X§);
         if(§^!'§ == §5+§.§'#2§ || param2)
         {
            this.§8"l§ = -1;
         }
         else if(this.§8"l§ == _loc8_)
         {
            this.scrollIndex = this.scrollIndex;
            this.§8![§();
            return;
         }
         this.§`k§(_loc8_,param1);
      }
      
      protected function §?"t§() : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:int = Math.ceil((this.§+""§.§7"9§() + this.§+""§.lockedLevelCount) / §9X§);
         while(_loc1_ < this.§`"%§.length)
         {
            this.§=!9§.removeChild(this.§`"%§.pop()).removeEventListener(MouseEvent.CLICK,this.§6"y§);
         }
         while(_loc1_ > this.§`"%§.length)
         {
            _loc4_ = new §5"]§.§4!K§("PagingDot")();
            this.§=!9§.addChild(_loc4_);
            this.§`"%§.push(_loc4_);
            _loc4_.buttonMode = true;
            _loc4_.addEventListener(MouseEvent.CLICK,this.§6"y§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            (_loc5_ = this.§`"%§[_loc3_]).x = -(_loc1_ - 1) / 2 * 35 + _loc3_ * 35;
            _loc5_.gotoAndStop(_loc3_ == 0 ? "true" : "false");
            _loc3_++;
         }
      }
      
      private function §6"y§(param1:MouseEvent) : void
      {
         if(this.§6!1§ || isTransitioning)
         {
            return;
         }
         §@§.§=Y§("misc_menubuttonproceed_1");
         this.§`k§(this.§`"%§.indexOf(param1.currentTarget));
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         this.§6!e§(param1);
      }
      
      public function get scrollIndex() : Number
      {
         return this.§0`§;
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = false;
         this.§0`§ = param1;
         var _loc2_:Number = §9X§ / 2 - 0.5;
         var _loc3_:Number = (§9X§ / 2 + 0.5) / (§9X§ / 2 - 0.5);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'"S§.length)
         {
            _loc6_ = ((_loc5_ = this.§8"l§ < this.§2!o§ ? Number(-1) : Number(1)) * this.§0`§ * §9X§ + _loc4_ - _loc2_) / _loc2_;
            if(!(_loc7_ = Math.abs(_loc6_) < _loc3_) && this.§'"S§[_loc4_] != null)
            {
               this.§2!Q§.removeChild(this.§'"S§[_loc4_]);
               this.§ !W§(this.§'"S§[_loc4_]);
               this.§'"S§[_loc4_] = null;
            }
            if(_loc7_ && this.§'"S§[_loc4_])
            {
               this.§,!+§(this.§'"S§[_loc4_],_loc6_);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§"!L§.length)
         {
            _loc9_ = ((_loc8_ = this.§8"l§ < this.§2!o§ ? Number(1) : Number(-1)) * (1 - this.§0`§) * §9X§ + _loc4_ - _loc2_) / _loc2_;
            if((_loc10_ = Math.abs(_loc9_) <= _loc3_) && this.§"!L§[_loc4_] == null)
            {
               this.§"!L§[_loc4_] = this.addButton(this.§2!o§ * §9X§ + _loc4_);
            }
            if(_loc10_)
            {
               this.§,!+§(this.§"!L§[_loc4_],_loc9_);
            }
            _loc4_++;
         }
         this.§=o§();
      }
      
      protected function §=o§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`"%§.length)
         {
            _loc2_ = this.§8"l§ + this.§0`§ * (this.§2!o§ - this.§8"l§) + 0.5;
            if(_loc1_ > _loc2_ - 1 && _loc1_ < _loc2_)
            {
               this.§`"%§[_loc1_].gotoAndStop("true");
            }
            else
            {
               this.§`"%§[_loc1_].gotoAndStop("false");
            }
            _loc1_++;
         }
      }
      
      protected function §,!+§(param1:§^!1§, param2:Number) : void
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
            _loc9_ = (§9X§ / 2 + 0.5) / (§9X§ / 2 - 0.5) - 1;
            _loc10_ = (_loc10_ = _loc8_ / _loc9_) * 0.8;
            _loc4_ = (param2 < 0 ? -0.825 : 0.825) + _loc10_ * (1 - 0.825);
         }
         param1.x = Math.sin(_loc4_ * Math.PI) * 380;
         param1.y = Math.cos(_loc4_ * Math.PI) * 230 - 230;
         param1.scaleX = param1.scaleY = 0.45 + (1 - Math.min(1,Math.abs(param2))) * 0.4;
      }
      
      protected function addButton(param1:int) : §^!1§
      {
         var _loc2_:§5X§ = §;"@§.singleton.dataModel.userProgress;
         var _loc3_:String = this.§+""§.getLevelName(param1);
         var _loc4_:§^!1§ = this.getLevelButton();
         if(_loc3_ == null)
         {
            _loc4_.§@!I§ = true;
         }
         else
         {
            _loc4_.§@!I§ = false;
            _loc4_.locked = !_loc2_.isLevelOpen(_loc3_);
            _loc4_.§^a§ = param1 + 1;
            _loc4_.§^"2§ = _loc2_.getStarsForLevel(_loc3_);
            _loc4_.§9!E§ = _loc2_.getEagleScoreForLevel(_loc3_);
            _loc4_.§&!G§ = _loc2_.getScoreForLevel(_loc3_) == 0 && _loc2_.getEagleScoreForLevel(_loc3_) == 0 && !_loc4_.locked;
            _loc4_.hasIntro = !_loc4_.locked && this.§+""§.getCutScene(this.§+""§.name + "-" + (param1 + 1) + "-INTRO") != null;
            _loc4_.hasOutro = !_loc4_.locked && this.§+""§.getCutScene(this.§+""§.name + "-" + (param1 + 1) + "-OUTRO") != null;
         }
         _loc4_.scaleY = 0.5;
         _loc4_.scaleX = 0.5;
         this.§2!Q§.addChildAt(_loc4_,0);
         return _loc4_;
      }
      
      protected function getLevelButton() : §^!1§
      {
         if(this.§[!%§.length > 0)
         {
            return this.§[!%§.pop();
         }
         var _loc1_:§^!1§ = new §^!1§(this.§+""§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,this.§,@§);
         return _loc1_;
      }
      
      protected function §,@§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§^!1§ = param1.currentTarget as §^!1§;
         if(!_loc2_.locked && !_loc2_.§@!I§ || §;"@§.§[!S§)
         {
            §@§.§=Y§("misc_menubuttonproceed_1");
            § !p§.loadLevel(this.§+""§.getLevelName(_loc2_.§^a§ - 1));
            §0"B§(StateCutScene.§'#2§);
         }
      }
      
      private function § !W§(param1:§^!1§) : void
      {
         param1.§&!G§ = false;
         this.§[!%§.push(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§6!1§)
         {
            this.§6!1§.stop();
            this.§6!1§ = null;
         }
         this.§"!d§();
         § !p§.resetPreviousLevel();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§@,§.setSize(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "PREV":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§`k§(this.§8"l§ - 1);
               break;
            case "NEXT":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§`k§(this.§8"l§ + 1);
               break;
            case "BACK":
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(§5+§.§'#2§,true);
         }
      }
      
      private function §`k§(param1:int, param2:Boolean = false) : void
      {
         if(this.§6!1§)
         {
            return;
         }
         if(param1 == this.§8"l§)
         {
            return;
         }
         this.§2!o§ = param1;
         this.§0`§ = 0;
         if(param2)
         {
            this.scrollIndex = 1;
            this.§8![§();
         }
         else
         {
            this.§6!1§ = §41§.§-G§.§&#'§(this,{"scrollIndex":1},null,2.3,§<!Q§.easeInOut);
            this.§6!1§.onComplete = this.§8![§;
            this.§6!1§.play();
            §@§.§=Y§("levelselect_levels_orbit");
         }
         var _loc3_:* = this.§2!o§ > 0;
         var _loc4_:* = this.§2!o§ < Math.ceil((this.§;o§ + this.§+""§.lockedLevelCount) / §9X§) - 1;
         (§>I§.getItemByName("Button_Prev") as §2"8§).setComponentState(!!_loc3_ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         (§>I§.getItemByName("Button_Next") as §2"8§).setComponentState(!!_loc4_ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
      }
      
      private function §8![§() : void
      {
         this.§8"l§ = this.§2!o§;
         var _loc1_:int = 0;
         while(_loc1_ < §9X§)
         {
            this.§'"S§[_loc1_] = this.§"!L§[_loc1_];
            this.§"!L§[_loc1_] = null;
            _loc1_++;
         }
         this.§6!1§ = null;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §,_§ = new §`"6§(param1,§ "6§.stage,§7"N§);
      }
      
      override protected function beforeTransitionStart(param1:§6"§) : void
      {
         §`"6§(§,_§).§5P§(§ !p§.getEpisode(§ !p§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6"§.§,#2§)
         {
            §@§.§=Y§("levelselect_levels_appear");
         }
         else if(param1 == §6"§.§9!j§)
         {
            §@§.§=Y§("tournament_outro_transition");
         }
      }
      
      override protected function getRunTransitionData() : §6"§
      {
         return new §6"§("start_run_levelselection",§[`§.§-"y§,§[`§.§!Y§,§6"§.§+"n§,§,!7§,§?m§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
   }
}
