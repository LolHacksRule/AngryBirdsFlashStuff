package §8"'§
{
   import §%"Q§.§'!V§;
   import §%"Q§.§`!6§;
   import §&!j§.§5#+§;
   import §+"Y§.CrystalImprovementsPopup;
   import §+"Y§.EnergyOutPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"k§.§6!U§;
   import §3!j§.TournamentHistoryPopup;
   import §3!j§.TournamentInfoPopup;
   import §6"-§.§^!Q§;
   import §8!h§.§-V§;
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §9"U§.§[!s§;
   import §98§.§'"M§;
   import §?!u§.§9"D§;
   import §?"-§.§;i§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"]§.§ §;
   import §`"]§.§0!a§;
   import §`"]§.§=t§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §null §.§5#§;
   
   public class §4!T§ extends §`!6§
   {
      
      public static const §-!U§:String = "TournamentState";
      
      private static const §6!o§:Number = 1000 / 60;
      
      private static const § #%§:int = 5;
       
      
      private var §9"P§:§[!s§;
      
      private var §0"=§:Vector.<§=t§>;
      
      private var §'!L§:§=t§;
      
      private var §;#0§:§0!a§;
      
      private var §^#5§:Array;
      
      private var §1"c§:§8#2§;
      
      public function §4!T§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§^#5§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§=t§ = null;
         §`l§ = true;
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_Tournament[0]);
         this.§9"P§ = §7"1§(§4"#§.singleton.dataModel).§1z§;
         this.§0"=§ = new Vector.<§=t§>(§ #%§);
         var _loc1_:int = this.§9"P§.§,"z§;
         var _loc2_:int = 0;
         while(_loc2_ < § #%§)
         {
            _loc3_ = this.§0"=§[_loc2_] = new §=t§(§^!b§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton,§^!b§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].tournamentScore,_loc2_ + 1);
            §^!b§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton.tournamentIcon.gotoAndStop("planet_" + _loc1_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.§]!#§);
            _loc3_.addEventListener(Event.CHANGE,this.§]#1§);
            _loc2_++;
         }
         §^!b§.getItemByName("Container_TotalTrophies").mClip.Container_TotalTrophiesContent.floatingPlatform.gotoAndStop("platform_0" + _loc1_);
         switch(_loc1_)
         {
            case 1:
            default:
               §^!b§.getItemByName("MovieClip_BackgroundBespin").mClip.alpha = 0;
               break;
            case 2:
               §^!b§.getItemByName("MovieClip_Background").mClip.alpha = 0;
         }
         this.§;#0§ = new §0!a§("StarBackground");
         §^!b§.movieClip.addChildAt(this.§;#0§,0);
         this.§#q§(false);
      }
      
      private function §]!#§(param1:MouseEvent) : void
      {
         var _loc3_:§7"1§ = null;
         var _loc4_:§3!§ = null;
         var _loc5_:String = null;
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§=t§ = §=t§(param1.target);
         if(_loc2_.§1!>§)
         {
            return;
         }
         if(_loc2_.isLocked)
         {
            if(_loc2_.canBuyToUnlock)
            {
               _loc3_ = §7"1§(§4"#§.singleton.dataModel);
               if(_loc3_.§&!w§.starCoins >= _loc2_.§5!T§)
               {
                  this.§'!L§ = _loc2_;
                  _loc2_.canBuyToUnlock = false;
                  _loc2_.§1!>§ = true;
                  _loc3_.§&!w§.§&"-§(_loc2_.§5!T§);
                  _loc3_.§,!6§.addEventListener(§9"D§.§3s§,this.§1k§);
                  _loc3_.§,!6§.§&!Q§(new §'"M§("TournamentLevel",1,_loc2_.§5!T§));
                  §=Q§.§`!A§("black_shop_purchase");
               }
               else
               {
                  _loc4_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
                  §4"#§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               }
            }
         }
         else if(§7"1§(§4"#§.singleton.dataModel).§9"$§.energy <= 0)
         {
            _loc4_ = new EnergyOutPopup(§^!S§.§'"c§,§2!s§.TOP);
            §4"#§.singleton.popupManager.openPopup(_loc4_,true,true,true);
         }
         else
         {
            _loc5_ = this.§9"P§.levelObjects[this.§0"=§.indexOf(_loc2_)].levelId;
            §=Q§.§`!A§("misc_menubuttonproceed_1");
            §'""§.loadLevel(_loc5_);
            §`0§(§#!0§.§-!U§);
         }
      }
      
      private function §1k§(param1:§9"D§) : void
      {
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§3s§,this.§1k§);
         this.§'!L§.§1!>§ = false;
         this.§'!L§.isLocked = false;
         delete this.§'!L§.§-"G§.unlocksAt;
         this.§'!L§ = null;
         this.§!!R§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§3!§ = null;
         switch(param2)
         {
            case "BACK":
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(§'!V§.§-!U§,true);
               break;
            case "TOURNAMENT_HISTORY":
               §=Q§.§`!A§("misc_menubuttonback_1");
               _loc4_ = new TournamentHistoryPopup(§^!S§.§'"c§,§2!s§.DEFAULT);
               §4"#§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§3!§ = null;
         §<!J§.§=!%§.clearLevel();
         §<!J§.§=!%§.§`"V§(false);
         §4"#§.singleton.playThemeMusic();
         super.activate(param1);
         if(this.§9"P§.§9"K§)
         {
            this.§9"P§.reset();
         }
         this.§#q§(this.§9"P§.isLoading);
         this.§9"P§.addEventListener(§[!s§.§%"#§,this.§9"W§);
         this.§9"P§.addEventListener(§[!s§.§@K§,this.§=X§);
         if(!this.§9"P§.isLoading)
         {
            this.§%m§();
         }
         §^!b§.movieClip.addEventListener(Event.ENTER_FRAME,this.§^!<§);
         if(!§4"#§.singleton.dataModel.userProgress.hasTutorialBeenSeen(TournamentInfoPopup.§%=§))
         {
            §4"#§.singleton.popupManager.openPopup(new TournamentInfoPopup(§^!S§.§'"c§,§2!s§.DEFAULT),true,true,true);
            §4"#§.singleton.dataModel.userProgress.saveTutorialSeen(TournamentInfoPopup.§%=§);
         }
         if(this.§9"P§.§""l§ != null && this.§9"P§.§""l§.length > 0)
         {
            if(!§7"1§(§throw§(§4"#§.singleton).dataModel).userProgress.hasTutorialBeenSeen(CrystalImprovementsPopup.§-"§))
            {
               _loc2_ = new CrystalImprovementsPopup(§^!S§.§'"c§,§2!s§.TOP);
               §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            }
         }
      }
      
      private function §5!;§() : void
      {
         this.§1"c§ = new §8#2§(§^!b§.getItemByName("MovieClip_UpSell").mClip,§7"1§(§4"#§.singleton.dataModel).§,!6§);
      }
      
      private function §=X§(param1:Event) : void
      {
         this.§#q§(true);
      }
      
      private function §9"W§(param1:Event) : void
      {
         this.§%m§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§=t§ = null;
         super.deActivate();
         if(this.§1"c§)
         {
            this.§1"c§.dispose();
         }
         this.§9"P§.removeEventListener(§[!s§.§%"#§,this.§9"W§);
         this.§9"P§.removeEventListener(§[!s§.§@K§,this.§=X§);
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§3s§,this.§1k§);
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§,!v§,this.§%O§);
         if(this.§'!L§ != null)
         {
            this.§9"P§.§9"K§ = true;
            this.§'!L§ = null;
         }
         §^!b§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.§-'§();
         for each(_loc1_ in this.§0"=§)
         {
            _loc1_.§>!I§();
         }
      }
      
      private function §-'§() : void
      {
         var _loc1_:§ #2§ = null;
         for each(_loc1_ in this.§^#5§)
         {
            _loc1_.parent.removeChild(_loc1_);
            _loc1_.dispose();
         }
         this.§^#5§.length = 0;
      }
      
      private function §^!<§(param1:Event) : void
      {
         if(!this.§9"P§.isLoading)
         {
            if(this.§9"P§.§9"K§)
            {
               this.§9"P§.reset();
            }
            else
            {
               §^!b§.getItemByName("Container_TournamentTitle").mClip.tournamentTitle.txtTimeLeft.text = this.§9"P§.§`"g§();
            }
         }
      }
      
      private function §#q§(param1:Boolean) : void
      {
         §^!b§.getItemByName("MovieClip_TournamentLoading").setVisibility(param1);
         §^!b§.getItemByName("Container_TournamentTitle").setVisibility(!param1);
         §^!b§.getItemByName("Container_LevelSelection").setVisibility(!param1);
         §^!b§.getItemByName("Container_TopThree").setVisibility(!param1);
         §^!b§.getItemByName("Container_TotalTrophies").setVisibility(!param1);
      }
      
      private function §%O§(param1:§9"D§) : void
      {
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§,!v§,this.§%O§);
         this.§%m§();
      }
      
      private function §%m§() : void
      {
         var _loc1_:§;"[§ = §7"1§(§4"#§.singleton.dataModel).§,!6§;
         if(_loc1_.§"y§ == null)
         {
            this.§#q§(true);
            _loc1_.addEventListener(§9"D§.§,!v§,this.§%O§);
            return;
         }
         this.§#q§(false);
         var _loc2_:int = 0;
         while(_loc2_ < § #%§)
         {
            if(!this.§9"P§.levelObjects || _loc2_ >= this.§9"P§.levelObjects.length || !this.§9"P§.levelObjects[_loc2_])
            {
               throw new Error("Tournament level " + (_loc2_ + 1) + " missing.");
            }
            this.§=!?§(this.§0"=§[_loc2_],this.§9"P§.levelObjects[_loc2_]);
            _loc2_++;
         }
         this.§!!R§();
         this.§@"5§();
         this.§%"M§();
         §throw§(§4"#§.singleton).§?"T§.§0! §(this.§9"P§.§]!A§);
      }
      
      private function §=!?§(param1:§=t§, param2:Object) : void
      {
         var _loc3_:String = param2.levelId;
         var _loc4_:int = this.§9"P§.getScoreForLevel(_loc3_);
         var _loc5_:int = this.§9"P§.getRankForLevel(_loc3_);
         param1.§>!I§();
         param1.§-"G§ = param2;
         param1.§1!>§ = false;
         param1.§`"§(param2.unlocksAt);
         param1.score = _loc4_;
         param1.§2z§ = §4"#§.singleton.dataModel.userProgress.getStarsForLevel(_loc3_,_loc4_);
         param1.§5!b§ = _loc5_;
         param1.§5!T§ = §7"1§(§4"#§.singleton.dataModel).§,!6§.§"y§.§?2§;
      }
      
      private function §@"5§() : void
      {
         var _loc1_:MovieClip = §^!b§.getItemByName("Container_TotalTrophiesContent").mClip;
         _loc1_.txtGold.text = "x" + this.§9"P§.goldTrophies;
         _loc1_.txtSilver.text = "x" + this.§9"P§.silverTrophies;
         _loc1_.txtBronze.text = "x" + this.§9"P§.bronzeTrophies;
      }
      
      private function §%"M§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§6!U§ = null;
         var _loc5_:§ #2§ = null;
         this.§-'§();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = §^!b§.getItemByName("Container_TopThree").mClip.topThree["top" + (_loc1_ + 1)];
            _loc3_ = §7"1§(§4"#§.singleton.dataModel).§1z§.§,"z§;
            _loc2_.floatingPlatform.gotoAndStop("platform_0" + _loc3_);
            if(this.§9"P§.§]!A§.data.length > _loc1_)
            {
               if(_loc4_ = this.§9"P§.§]!A§.data[_loc1_] as §6!U§)
               {
                  _loc2_.visible = true;
                  _loc2_.txtName.text = _loc4_.userName;
                  _loc2_.txtScore.text = _loc4_.§%D§;
                  _loc2_.txtName.mouseEnabled = false;
                  _loc2_.txtScore.mouseEnabled = false;
                  _loc5_ = new § #2§(_loc4_.userId);
                  _loc2_.profilePic.addChild(_loc5_);
                  _loc5_.scaleY = 1.44;
                  _loc5_.scaleX = 1.44;
                  this.§^#5§.push(_loc5_);
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      private function §]#1§(param1:Event) : void
      {
         this.§!!R§();
      }
      
      private function §!!R§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < § #%§)
         {
            this.§0"=§[_loc1_].canBuyToUnlock = _loc1_ > 0 && this.§0"=§[_loc1_].isLocked && !this.§0"=§[_loc1_ - 1].isLocked;
            _loc1_++;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§;#0§.setSize(param1,param2);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §[#§ = new §;i§(param1,§0v§.stage);
      }
   }
}
