package §!X§
{
   import §"!P§.§5X§;
   import §'! §.§4!Q§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §3"R§.§`"6§;
   import §7!@§.§6"§;
   import §7""§.§0I§;
   import §7""§.§9"$§;
   import §7""§.§=U§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §1"P§ extends §@!?§
   {
      
      private static const §7"N§:Number = 1000 / 60;
      
      private static const §&!v§:int = 7;
       
      
      private var §["c§:§=U§;
      
      private var §;#4§:§4!Q§;
      
      private var §@,§:§0I§;
      
      private var § use§:MovieClip;
      
      private var §^#4§:MovieClip;
      
      private var §5"F§:Vector.<§9"$§>;
      
      public function §1"P§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         this.§5"F§ = new Vector.<§9"$§>();
         super(param1,param3,param4,param2);
         if(§&!v§ % 2 == 0)
         {
            throw new Error("Visible planets must be an odd number.");
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_ChapterSelection[0]);
         this.§^!G§();
         this.§["c§ = new §=U§(§>I§.getItemByName("MovieClip_IdlingRocks").mClip.idlingRocks);
         §+!g§ = true;
         this.§@,§ = new §0I§("StarBackground");
         §>I§.movieClip.addChildAt(this.§@,§,0);
         var _loc1_:MovieClip = §>I§.getItemByName("MovieClip_IdleAnimationFront").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
         _loc1_ = §>I§.getItemByName("MovieClip_IdleAnimationBack").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§["c§.update(param1);
      }
      
      protected function §^!G§() : void
      {
         this.§3o§();
      }
      
      private function §3o§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§9"$§ = null;
         this.§ use§ = §>I§.getItemByName("MovieClip_AllEpisodes").mClip.allEpisodes;
         this.§^#4§ = §>I§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§2Z§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§ use§.numChildren)
         {
            _loc2_ = MovieClip(this.§ use§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_hoth")
            {
               _loc2_.buttonMode = true;
               _loc2_.addEventListener(MouseEvent.CLICK,this.§5!K§);
               _loc3_ = new §9"$§(_loc2_);
               this.§5"F§.push(_loc3_);
               _loc2_.episodeButton = _loc3_;
            }
            _loc1_++;
         }
      }
      
      private function §2Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^#4§.numChildren)
         {
            this.§^#4§.getChildAt(_loc1_).visible = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ use§.numChildren)
         {
            this.§ use§.getChildAt(_loc1_).visible = true;
            _loc1_++;
         }
      }
      
      private function §5!K§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:String = _loc3_.split("_")[1];
         §@§.§=Y§("misc_menubuttonproceed_1");
         switch(_loc4_)
         {
            case "friends":
               this.navigateToFriends();
               return;
            case "toons":
               this.navigateToToons();
               return;
            default:
               this.§^#4§[_loc3_].visible = true;
               this.§ use§[_loc3_].visible = false;
               § !p§.selectEpisodeByName(_loc4_);
               §0"B§(§,"p§.§'#2§,true);
               return;
         }
      }
      
      protected function navigateToToons() : void
      {
      }
      
      protected function navigateToFriends() : void
      {
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §>I§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.stop();
         §>I§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.stop();
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         if(§^!'§ != §0",§.§'#2§)
         {
            this.§2Z§();
         }
         this.§?"C§();
         §>I§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.play();
         §>I§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.play();
         §;"@§.singleton.playThemeMusic();
         if(param1)
         {
            this.onTransitionComplete("in");
         }
      }
      
      private function §?"C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ use§.numChildren)
         {
            _loc2_ = MovieClip(this.§ use§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_friends" && _loc2_.name != "planet_hoth" && _loc2_.name != "planet_toons")
            {
               this.§="G§(_loc2_,§ !p§.getEpisodeByName(_loc2_.name.split("_")[1]));
            }
            _loc1_++;
         }
         _loc1_ = 0;
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
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§^#4§.numChildren)
            {
               _loc2_ = MovieClip(this.§^#4§.getChildAt(_loc3_));
               _loc2_.visible = false;
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.§ use§.numChildren)
            {
               _loc2_ = MovieClip(this.§ use§.getChildAt(_loc3_));
               if(!_loc2_.visible && §^!'§ == §,"p§.§'#2§)
               {
                  §9"$§(_loc2_.episodeButton).§8"m§();
               }
               _loc2_.visible = true;
               _loc3_++;
            }
         }
      }
      
      override protected function beforeTransitionStart(param1:§6"§) : void
      {
         §`"6§(§,_§).§5P§(§ !p§.getEpisode(§ !p§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6"§.§,#2§)
         {
            §@§.§=Y§("tournament_intro_transition");
         }
         else if(param1 == §6"§.§9!j§)
         {
            §@§.§=Y§("tournament_outro_transition");
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §,_§ = new §`"6§(param1,§ "6§.stage,24,true);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§@,§.setSize(param1,param2);
      }
   }
}
