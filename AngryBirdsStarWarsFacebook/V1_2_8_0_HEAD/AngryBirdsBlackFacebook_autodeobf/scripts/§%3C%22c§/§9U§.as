package §<"c§
{
   import § "4§.§8!R§;
   import §'#&§.§3!l§;
   import §+!c§.§6!R§;
   import §+!c§.§9"-§;
   import §+!c§.§9"1§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9U§ extends §]"_§
   {
      
      private static const §&!X§:Number = 1000 / 60;
      
      private static const §7"X§:int = 7;
       
      
      private var §7#`§:§6!R§;
      
      private var §=4§:§[#R§;
      
      private var §"!§:§9"1§;
      
      private var §2#3§:MovieClip;
      
      private var § do§:MovieClip;
      
      private var §-"F§:Vector.<§9"-§>;
      
      public function §9U§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         this.§-"F§ = new Vector.<§9"-§>();
         super(param1,param3,param4,param2);
         if(§7"X§ % 2 == 0)
         {
            throw new Error("Visible planets must be an odd number.");
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_ChapterSelection[0]);
         this.§6"x§();
         this.§7#`§ = new §6!R§(§@;§.getItemByName("MovieClip_IdlingRocks").mClip.idlingRocks);
         §7#^§ = true;
         this.§"!§ = new §9"1§("StarBackground");
         §@;§.movieClip.addChildAt(this.§"!§,0);
         var _loc1_:MovieClip = §@;§.getItemByName("MovieClip_IdleAnimationFront").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
         _loc1_ = §@;§.getItemByName("MovieClip_IdleAnimationBack").mClip;
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§7#`§.update(param1);
      }
      
      protected function §6"x§() : void
      {
         this.§1#`§();
      }
      
      private function §1#`§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§9"-§ = null;
         this.§2#3§ = §@;§.getItemByName("MovieClip_AllEpisodes").mClip.allEpisodes;
         this.§ do§ = §@;§.getItemByName("Container_SetSelectedPlanet").mClip;
         this.§#"!§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§2#3§.numChildren)
         {
            _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_hoth")
            {
               _loc2_.buttonMode = true;
               _loc2_.addEventListener(MouseEvent.CLICK,this.§+"K§);
               _loc3_ = new §9"-§(_loc2_);
               this.§-"F§.push(_loc3_);
               _loc2_.episodeButton = _loc3_;
            }
            _loc1_++;
         }
      }
      
      private function §#"!§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§ do§.numChildren)
         {
            this.§ do§.getChildAt(_loc1_).visible = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§2#3§.numChildren)
         {
            this.§2#3§.getChildAt(_loc1_).visible = true;
            _loc1_++;
         }
      }
      
      private function §+"K§(param1:MouseEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:String = _loc3_.split("_")[1];
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         switch(_loc4_)
         {
            case "friends":
               this.navigateToFriends();
               return;
            case "toons":
               this.navigateToToons();
               return;
            default:
               this.§ do§[_loc3_].visible = true;
               this.§2#3§[_loc3_].visible = false;
               §+!b§.selectEpisodeByName(_loc4_);
               § g§(§+#?§.§^!7§,true);
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
         §@;§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.stop();
         §@;§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.stop();
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         super.activateComplete(param1);
         if(§3"v§ != §3>§.§^!7§)
         {
            this.§#"!§();
         }
         this.§5n§();
         §@;§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.play();
         §@;§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.play();
         §4#;§.singleton.playThemeMusic();
         if(param1)
         {
            this.onTransitionComplete("in");
         }
      }
      
      private function §5n§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2#3§.numChildren)
         {
            _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc1_));
            if(_loc2_.name != "planet_friends" && _loc2_.name != "planet_hoth" && _loc2_.name != "planet_toons")
            {
               this.§5!l§(_loc2_,§+!b§.getEpisodeByName(_loc2_.name.split("_")[1]));
            }
            _loc1_++;
         }
         _loc1_ = 0;
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
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§ do§.numChildren)
            {
               _loc2_ = MovieClip(this.§ do§.getChildAt(_loc3_));
               _loc2_.visible = false;
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.§2#3§.numChildren)
            {
               _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc3_));
               if(!_loc2_.visible && §3"v§ == §+#?§.§^!7§)
               {
                  §9"-§(_loc2_.episodeButton).§2!t§();
               }
               _loc2_.visible = true;
               _loc3_++;
            }
         }
      }
      
      override protected function beforeTransitionStart(param1:§6y§) : void
      {
         §3!l§(§7!=§).§%'§(§+!b§.getEpisode(§+!b§.currentEpisode).name);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6y§.§>]§)
         {
            §?!r§.§"#_§("tournament_intro_transition");
         }
         else if(param1 == §6y§.§;X§)
         {
            §?!r§.§"#_§("tournament_outro_transition");
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §7!=§ = new §3!l§(param1,§%G§.stage,24,true);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§"!§.setSize(param1,param2);
      }
   }
}
