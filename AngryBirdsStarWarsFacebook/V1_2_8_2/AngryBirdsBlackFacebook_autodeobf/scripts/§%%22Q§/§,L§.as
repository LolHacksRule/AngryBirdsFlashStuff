package §%"Q§
{
   import §!"-§.§]"_§;
   import §&!j§.§5#+§;
   import §'"I§.§1-§;
   import §'"I§.§>!t§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §=Z§.§;g§;
   import §?"-§.§`"%§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"]§.§0!a§;
   import §`"]§.§^"N§;
   import §`"n§.§^!-§;
   import com.angrybirds.§<!J§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §null §.§5!K§;
   import §null §.§5#§;
   import §null §.§?!#§;
   
   public class §,L§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelSelectionState";
      
      private static const §6!o§:Number = 1000 / 60;
      
      protected static var §'9§:int = 10;
       
      
      protected var §1!$§:Number;
      
      protected var §;#0§:§0!a§;
      
      protected var §0"p§:§?!#§ = null;
      
      protected var §^!E§:int;
      
      protected var §`"s§:Vector.<§^"N§>;
      
      protected var §+!9§:Vector.<§^"N§>;
      
      protected var §="4§:Vector.<§^"N§>;
      
      protected var §-J§:§%b§;
      
      private var §]!G§:MovieClip;
      
      private var §4d§:MovieClip;
      
      private var §;"l§:MovieClip;
      
      private var §^!]§:Array;
      
      private var §##§:int = 0;
      
      private var §5=§:int = 0;
      
      private var §2!>§:int = 0;
      
      public function §,L§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         this.§+!9§ = new Vector.<§^"N§>(§'9§);
         this.§="4§ = new Vector.<§^"N§>(§'9§);
         this.§^!]§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §`l§ = true;
         §!!h§.push("start_run_levelselection","end_run_levelselection");
         this.§8!W§();
      }
      
      protected function §8!W§() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelSelection[0]);
         this.§]!G§ = §^!b§.getItemByName("MovieClip_Levels").mClip.levels;
         while(this.§]!G§.numChildren > 0)
         {
            this.§]!G§.removeChildAt(0);
         }
         this.§4d§ = §^!b§.getItemByName("MovieClip_PagingDots").mClip.pagingDots;
         while(this.§4d§.numChildren > 0)
         {
            this.§4d§.removeChildAt(0);
         }
         this.§;"l§ = §^!b§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§;#0§ = new §0!a§("StarBackground");
         §^!b§.movieClip.addChildAt(this.§;#0§,0);
      }
      
      private function §@"#§(param1:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         §<!J§.§=!%§.clearLevel();
         §<!J§.§=!%§.§`"V§(false);
         §4"#§.singleton.playThemeMusic();
         var _loc2_:§?!#§ = §?!#§(§'""§.getEpisode(§'""§.currentEpisode));
         this.§?!C§();
         var _loc3_:* = this.§0"p§ != _loc2_;
         if(_loc3_)
         {
            this.§0"p§ = _loc2_;
            this.§^!E§ = this.§0"p§.levelsPerPage * this.§0"p§.§!!o§;
            _loc4_ = 0;
            while(_loc4_ < this.§;"l§.numChildren)
            {
               _loc5_ = MovieClip(this.§;"l§.getChildAt(_loc4_));
               _loc5_.visible = _loc5_.name == "planet_" + this.§0"p§.name;
               _loc4_++;
            }
            this.§2!1§();
            this.§`"s§ = new Vector.<§^"N§>();
            this.§7e§();
         }
         this.§4m§(param1,_loc3_);
      }
      
      private function §?!C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;"l§.numChildren)
         {
            _loc2_ = MovieClip(this.§;"l§.getChildAt(_loc1_));
            this.§'!A§(_loc2_,§'""§.getEpisodeByName(_loc2_.name.split("_")[1]));
            _loc1_++;
         }
      }
      
      private function §'!A§(param1:MovieClip, param2:§5!K§) : void
      {
         var _loc4_:* = false;
         var _loc3_:§^!-§ = §4"#§.singleton.dataModel.userProgress;
         param1.infoBox.info.txtScore.text = _loc3_.§?!X§(param2).toString();
         param1.infoBox.info.txtStars.text = _loc3_.§!!c§(param2).toString() + "/" + param2.§3!z§() * 3;
         param1.infoBox.info.txtFalcons.text = _loc3_.§`",§(param2).toString() + "/" + param2.§3!z§();
         if(param2.name == "4")
         {
            _loc4_ = !§4"#§.singleton.dataModel.userProgress.isLevelPassed(§'""§.getEpisodeByName("2").getLevelName(39));
            param1.gotoAndStop(!!_loc4_ ? "locked" : "unlocked");
            param1.mouseEnabled = !_loc4_;
            param1.infoBox.info.visible = !_loc4_;
         }
      }
      
      protected function §2!1§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§="4§.length)
         {
            if(this.§="4§[_loc1_])
            {
               this.§]!G§.removeChild(this.§="4§[_loc1_]);
               this.§@!G§(this.§="4§[_loc1_]);
               this.§="4§[_loc1_] = null;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§+!9§.length)
         {
            if(this.§+!9§[_loc1_])
            {
               this.§]!G§.removeChild(this.§+!9§[_loc1_]);
               this.§@!G§(this.§+!9§[_loc1_]);
               this.§+!9§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §4m§(param1:Boolean, param2:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:§^!-§ = §4"#§.singleton.dataModel.userProgress;
         var _loc5_:Array = this.§0"p§.§"!d§();
         var _loc6_:int = 0;
         while(_loc6_ < this.§^!E§)
         {
            if(_loc3_.getScoreForLevel(_loc5_[_loc6_]) > 0 || _loc3_.getEagleScoreForLevel(_loc5_[_loc6_]) > 0)
            {
               _loc4_ = _loc6_;
            }
            _loc6_++;
         }
         var _loc7_:int = _loc4_ == this.§^!E§ - 1 ? int(_loc4_) : int(_loc4_ + 1);
         if(!param2 && §'""§.currentLevel)
         {
            if((_loc9_ = _loc5_.indexOf(§'""§.currentLevel)) > -1)
            {
               _loc7_ = _loc9_;
            }
         }
         var _loc8_:int = Math.floor(_loc7_ / §'9§);
         if(§&!1§ == §'!V§.§-!U§ || param2)
         {
            this.§##§ = -1;
         }
         else if(this.§##§ == _loc8_)
         {
            this.scrollIndex = this.scrollIndex;
            this.§+!J§();
            return;
         }
         this.§>!q§(_loc8_,param1);
      }
      
      protected function §7e§() : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:int = Math.ceil((this.§0"p§.§3!z§() + this.§0"p§.lockedLevelCount) / §'9§);
         while(_loc1_ < this.§^!]§.length)
         {
            this.§4d§.removeChild(this.§^!]§.pop()).removeEventListener(MouseEvent.CLICK,this.§+"C§);
         }
         while(_loc1_ > this.§^!]§.length)
         {
            _loc4_ = new §%!Z§.§;",§("PagingDot")();
            this.§4d§.addChild(_loc4_);
            this.§^!]§.push(_loc4_);
            _loc4_.buttonMode = true;
            _loc4_.addEventListener(MouseEvent.CLICK,this.§+"C§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            (_loc5_ = this.§^!]§[_loc3_]).x = -(_loc1_ - 1) / 2 * 35 + _loc3_ * 35;
            _loc5_.gotoAndStop(_loc3_ == 0 ? "true" : "false");
            _loc3_++;
         }
      }
      
      private function §+"C§(param1:MouseEvent) : void
      {
         if(this.§-J§ || isTransitioning)
         {
            return;
         }
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         this.§>!q§(this.§^!]§.indexOf(param1.currentTarget));
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         this.§@"#§(param1);
      }
      
      public function get scrollIndex() : Number
      {
         return this.§1!$§;
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = false;
         this.§1!$§ = param1;
         var _loc2_:Number = §'9§ / 2 - 0.5;
         var _loc3_:Number = (§'9§ / 2 + 0.5) / (§'9§ / 2 - 0.5);
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!9§.length)
         {
            _loc6_ = ((_loc5_ = this.§##§ < this.§5=§ ? Number(-1) : Number(1)) * this.§1!$§ * §'9§ + _loc4_ - _loc2_) / _loc2_;
            if(!(_loc7_ = Math.abs(_loc6_) < _loc3_) && this.§+!9§[_loc4_] != null)
            {
               this.§]!G§.removeChild(this.§+!9§[_loc4_]);
               this.§@!G§(this.§+!9§[_loc4_]);
               this.§+!9§[_loc4_] = null;
            }
            if(_loc7_ && this.§+!9§[_loc4_])
            {
               this.§[`§(this.§+!9§[_loc4_],_loc6_);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§="4§.length)
         {
            _loc9_ = ((_loc8_ = this.§##§ < this.§5=§ ? Number(1) : Number(-1)) * (1 - this.§1!$§) * §'9§ + _loc4_ - _loc2_) / _loc2_;
            if((_loc10_ = Math.abs(_loc9_) <= _loc3_) && this.§="4§[_loc4_] == null)
            {
               this.§="4§[_loc4_] = this.addButton(this.§5=§ * §'9§ + _loc4_);
            }
            if(_loc10_)
            {
               this.§[`§(this.§="4§[_loc4_],_loc9_);
            }
            _loc4_++;
         }
         this.§6!g§();
      }
      
      protected function §6!g§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!]§.length)
         {
            _loc2_ = this.§##§ + this.§1!$§ * (this.§5=§ - this.§##§) + 0.5;
            if(_loc1_ > _loc2_ - 1 && _loc1_ < _loc2_)
            {
               this.§^!]§[_loc1_].gotoAndStop("true");
            }
            else
            {
               this.§^!]§[_loc1_].gotoAndStop("false");
            }
            _loc1_++;
         }
      }
      
      protected function §[`§(param1:§^"N§, param2:Number) : void
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
            _loc9_ = (§'9§ / 2 + 0.5) / (§'9§ / 2 - 0.5) - 1;
            _loc10_ = (_loc10_ = _loc8_ / _loc9_) * 0.8;
            _loc4_ = (param2 < 0 ? -0.825 : 0.825) + _loc10_ * (1 - 0.825);
         }
         param1.x = Math.sin(_loc4_ * Math.PI) * 380;
         param1.y = Math.cos(_loc4_ * Math.PI) * 230 - 230;
         param1.scaleX = param1.scaleY = 0.45 + (1 - Math.min(1,Math.abs(param2))) * 0.4;
      }
      
      protected function addButton(param1:int) : §^"N§
      {
         var _loc2_:§^!-§ = §4"#§.singleton.dataModel.userProgress;
         var _loc3_:String = this.§0"p§.getLevelName(param1);
         var _loc4_:§^"N§ = this.getLevelButton();
         if(_loc3_ == null)
         {
            _loc4_.§`m§ = true;
         }
         else
         {
            _loc4_.§`m§ = false;
            _loc4_.locked = !_loc2_.isLevelOpen(_loc3_);
            _loc4_.§@!$§ = param1 + 1;
            _loc4_.§2z§ = _loc2_.getStarsForLevel(_loc3_);
            _loc4_.§9b§ = _loc2_.getEagleScoreForLevel(_loc3_);
            _loc4_.§7B§ = _loc2_.getScoreForLevel(_loc3_) == 0 && _loc2_.getEagleScoreForLevel(_loc3_) == 0 && !_loc4_.locked;
            _loc4_.hasIntro = !_loc4_.locked && this.§0"p§.getCutScene(this.§0"p§.name + "-" + (param1 + 1) + "-INTRO") != null;
            _loc4_.hasOutro = !_loc4_.locked && this.§0"p§.getCutScene(this.§0"p§.name + "-" + (param1 + 1) + "-OUTRO") != null;
         }
         _loc4_.scaleY = 0.5;
         _loc4_.scaleX = 0.5;
         this.§]!G§.addChildAt(_loc4_,0);
         return _loc4_;
      }
      
      protected function getLevelButton() : §^"N§
      {
         if(this.§`"s§.length > 0)
         {
            return this.§`"s§.pop();
         }
         var _loc1_:§^"N§ = new §^"N§(this.§0"p§.levelButtons[0]);
         _loc1_.addEventListener(MouseEvent.CLICK,this.§'!Y§);
         return _loc1_;
      }
      
      protected function §'!Y§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§^"N§ = param1.currentTarget as §^"N§;
         if(!_loc2_.locked && !_loc2_.§`m§ || §4"#§.§<C§)
         {
            §=Q§.§`!A§("misc_menubuttonproceed_1");
            §'""§.loadLevel(this.§0"p§.getLevelName(_loc2_.§@!$§ - 1));
            §`0§(StateCutScene.§-!U§);
         }
      }
      
      private function §@!G§(param1:§^"N§) : void
      {
         param1.§7B§ = false;
         this.§`"s§.push(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-J§)
         {
            this.§-J§.stop();
            this.§-J§ = null;
         }
         this.§2!1§();
         §'""§.resetPreviousLevel();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§;#0§.setSize(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "PREV":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§>!q§(this.§##§ - 1);
               break;
            case "NEXT":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§>!q§(this.§##§ + 1);
               break;
            case "BACK":
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(§'!V§.§-!U§,true);
         }
      }
      
      private function §>!q§(param1:int, param2:Boolean = false) : void
      {
         if(this.§-J§)
         {
            return;
         }
         if(param1 == this.§##§)
         {
            return;
         }
         this.§5=§ = param1;
         this.§1!$§ = 0;
         if(param2)
         {
            this.scrollIndex = 1;
            this.§+!J§();
         }
         else
         {
            this.§-J§ = §5!%§.§!6§.§4!M§(this,{"scrollIndex":1},null,2.3,§]"_§.easeInOut);
            this.§-J§.onComplete = this.§+!J§;
            this.§-J§.play();
            §=Q§.§`!A§("levelselect_levels_orbit");
         }
         var _loc3_:* = this.§5=§ > 0;
         var _loc4_:* = this.§5=§ < Math.ceil((this.§^!E§ + this.§0"p§.lockedLevelCount) / §'9§) - 1;
         (§^!b§.getItemByName("Button_Prev") as §;g§).setComponentState(!!_loc3_ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         (§^!b§.getItemByName("Button_Next") as §;g§).setComponentState(!!_loc4_ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
      }
      
      private function §+!J§() : void
      {
         this.§##§ = this.§5=§;
         var _loc1_:int = 0;
         while(_loc1_ < §'9§)
         {
            this.§+!9§[_loc1_] = this.§="4§[_loc1_];
            this.§="4§[_loc1_] = null;
            _loc1_++;
         }
         this.§-J§ = null;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §[#§ = new §`"%§(param1,§0v§.stage,§6!o§);
      }
      
      override protected function beforeTransitionStart(param1:§1-§) : void
      {
         §`"%§(§[#§).§4!N§(§'""§.getEpisode(§'""§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §1-§.§?j§)
         {
            §=Q§.§`!A§("levelselect_levels_appear");
         }
         else if(param1 == §1-§.§<§)
         {
            §=Q§.§`!A§("tournament_outro_transition");
         }
      }
      
      override protected function getRunTransitionData() : §1-§
      {
         return new §1-§("start_run_levelselection",§>!t§.§?>§,§>!t§.§%M§,§1-§.§!o§,§9"o§,§^"Z§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
   }
}
