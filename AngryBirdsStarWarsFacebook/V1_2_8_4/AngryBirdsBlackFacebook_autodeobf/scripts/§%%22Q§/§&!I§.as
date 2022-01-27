package §%"Q§
{
   import §&!j§.§5#+§;
   import §'"I§.§1-§;
   import §0"g§.§%b§;
   import §?"-§.§`"%§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"]§.§0!a§;
   import §`"]§.§4a§;
   import §`"]§.§;!h§;
   import §`"n§.§^!-§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §&!I§ extends §`!6§
   {
      
      private static const §6!o§:Number = 1000 / 60;
      
      private static const §"! §:int = 7;
       
      
      private var §>m§:§;!h§;
      
      private var §5# §:§%b§;
      
      private var §;#0§:§0!a§;
      
      private var §@Z§:MovieClip;
      
      private var §;"l§:MovieClip;
      
      private var §+!l§:Vector.<§4a§>;
      
      public function §&!I§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         this.§+!l§ = new Vector.<§4a§>();
         super(param1,param3,param4,param2);
         if(§"! § % 2 == 0)
         {
            throw new Error("Visible planets must be an odd number.");
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_ChapterSelection[0]);
         this.§ <§();
         this.§>m§ = new §;!h§(§^!b§.getItemByName("MovieClip_IdlingRocks").mClip.idlingRocks);
         §`l§ = true;
         this.§;#0§ = new §0!a§("StarBackground");
         §^!b§.movieClip.addChildAt(this.§;#0§,0);
         var _loc1_:MovieClip = §^!b§.getItemByName("MovieClip_IdleAnimationFront").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
         _loc1_ = §^!b§.getItemByName("MovieClip_IdleAnimationBack").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§>m§.update(param1);
      }
      
      protected function § <§() : void
      {
         this.§"!X§();
      }
      
      private function §"!X§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§4a§ = null;
         this.§@Z§ = §^!b§.getItemByName("MovieClip_AllEpisodes").mClip.allEpisodes;
         this.§;"l§ = §^!b§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§@!Z§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.numChildren)
         {
            _loc2_ = MovieClip(this.§@Z§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_hoth")
            {
               _loc2_.buttonMode = true;
               _loc2_.addEventListener(MouseEvent.CLICK,this.§6"1§);
               _loc3_ = new §4a§(_loc2_);
               this.§+!l§.push(_loc3_);
               _loc2_.episodeButton = _loc3_;
            }
            _loc1_++;
         }
      }
      
      private function §@!Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;"l§.numChildren)
         {
            this.§;"l§.getChildAt(_loc1_).visible = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§@Z§.numChildren)
         {
            this.§@Z§.getChildAt(_loc1_).visible = true;
            _loc1_++;
         }
      }
      
      private function §6"1§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:String = _loc3_.split("_")[1];
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         switch(_loc4_)
         {
            case "friends":
               this.navigateToFriends();
               return;
            case "toons":
               this.navigateToToons();
               return;
            default:
               this.§;"l§[_loc3_].visible = true;
               this.§@Z§[_loc3_].visible = false;
               §'""§.selectEpisodeByName(_loc4_);
               §`0§(§!K§.§-!U§,true);
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
         §^!b§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.stop();
         §^!b§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.stop();
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         if(§&!1§ != §,L§.§-!U§)
         {
            this.§@!Z§();
         }
         this.§?!C§();
         §^!b§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.play();
         §^!b§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.play();
         §4"#§.singleton.playThemeMusic();
         if(param1)
         {
            this.onTransitionComplete("in");
         }
      }
      
      private function §?!C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.numChildren)
         {
            _loc2_ = MovieClip(this.§@Z§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_friends" && _loc2_.name != "planet_hoth" && _loc2_.name != "planet_toons")
            {
               this.§'!A§(_loc2_,§'""§.getEpisodeByName(_loc2_.name.split("_")[1]));
            }
            _loc1_++;
         }
         _loc1_ = 0;
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
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§;"l§.numChildren)
            {
               _loc2_ = MovieClip(this.§;"l§.getChildAt(_loc3_));
               _loc2_.visible = false;
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.§@Z§.numChildren)
            {
               _loc2_ = MovieClip(this.§@Z§.getChildAt(_loc3_));
               if(!_loc2_.visible && §&!1§ == §!K§.§-!U§)
               {
                  §4a§(_loc2_.episodeButton).§'!c§();
               }
               _loc2_.visible = true;
               _loc3_++;
            }
         }
      }
      
      override protected function beforeTransitionStart(param1:§1-§) : void
      {
         §`"%§(§[#§).§4!N§(§'""§.getEpisode(§'""§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §1-§.§?j§)
         {
            §=Q§.§`!A§("tournament_intro_transition");
         }
         else if(param1 == §1-§.§<§)
         {
            §=Q§.§`!A§("tournament_outro_transition");
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §[#§ = new §`"%§(param1,§0v§.stage,24,true);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§;#0§.setSize(param1,param2);
      }
   }
}
