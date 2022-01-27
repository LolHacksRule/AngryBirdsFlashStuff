package §7#W§
{
   import § "v§.TournamentHistoryPopup;
   import § "v§.TournamentInfoPopup;
   import §!"W§.§="g§;
   import §!"e§.CrystalImprovementsPopup;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §"k§.§4#G§;
   import §'#&§.§-"e§;
   import §+!c§.§&"[§;
   import §+!c§.§5"$§;
   import §+!c§.§9"1§;
   import §,"N§.§""t§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §<"c§.§"C§;
   import §<"c§.§]"_§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6!W§ extends §]"_§
   {
      
      public static const §^!7§:String = "TournamentState";
      
      private static const §&!X§:Number = 1000 / 60;
      
      private static const §1"X§:int = 5;
       
      
      private var §?-§:§@"b§;
      
      private var §;!^§:Vector.<§&"[§>;
      
      private var §,!e§:§&"[§;
      
      private var §"!§:§9"1§;
      
      private var §%"]§:Array;
      
      private var §+f§:§,!i§;
      
      public function §6!W§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§%"]§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§&"[§ = null;
         §7#^§ = true;
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_Tournament[0]);
         this.§?-§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         this.§;!^§ = new Vector.<§&"[§>(§1"X§);
         var _loc1_:int = this.§?-§.§"#'§;
         var _loc2_:int = 0;
         while(_loc2_ < §1"X§)
         {
            _loc3_ = this.§;!^§[_loc2_] = new §&"[§(§@;§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton,§@;§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].tournamentScore,_loc2_ + 1);
            §@;§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton.tournamentIcon.gotoAndStop("planet_" + _loc1_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.§,!N§);
            _loc3_.addEventListener(Event.CHANGE,this.§0c§);
            _loc2_++;
         }
         §@;§.getItemByName("Container_TotalTrophies").mClip.Container_TotalTrophiesContent.floatingPlatform.gotoAndStop("platform_0" + _loc1_);
         switch(_loc1_)
         {
            case 1:
            default:
               §@;§.getItemByName("MovieClip_BackgroundBespin").mClip.alpha = 0;
               break;
            case 2:
               §@;§.getItemByName("MovieClip_Background").mClip.alpha = 0;
         }
         this.§"!§ = new §9"1§("StarBackground");
         §@;§.movieClip.addChildAt(this.§"!§,0);
         this.§#!>§(false);
      }
      
      private function §,!N§(param1:MouseEvent) : void
      {
         var _loc3_:§@#B§ = null;
         var _loc4_:§[!j§ = null;
         var _loc5_:String = null;
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§&"[§ = §&"[§(param1.target);
         if(_loc2_.§'#I§)
         {
            return;
         }
         if(_loc2_.isLocked)
         {
            if(_loc2_.canBuyToUnlock)
            {
               _loc3_ = §@#B§(§4#;§.singleton.dataModel);
               if(_loc3_.§`!W§.starCoins >= _loc2_.§?!N§)
               {
                  this.§,!e§ = _loc2_;
                  _loc2_.canBuyToUnlock = false;
                  _loc2_.§'#I§ = true;
                  _loc3_.§`!W§.§12§(_loc2_.§?!N§);
                  _loc3_.§1!f§.addEventListener(§="g§.§=#2§,this.§"#^§);
                  _loc3_.§1!f§.§9?§(new §,T§("TournamentLevel",1,_loc2_.§?!N§));
                  §?!r§.§"#_§("black_shop_purchase");
               }
               else
               {
                  _loc4_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                  §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               }
            }
         }
         else if(§@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0)
         {
            _loc4_ = new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP);
            §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
         }
         else
         {
            _loc5_ = this.§?-§.levelObjects[this.§;!^§.indexOf(_loc2_)].levelId;
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            §+!b§.loadLevel(_loc5_);
            § g§(§8!]§.§^!7§);
         }
      }
      
      private function §"#^§(param1:§="g§) : void
      {
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
         this.§,!e§.§'#I§ = false;
         this.§,!e§.isLocked = false;
         delete this.§,!e§.§[!@§.unlocksAt;
         this.§,!e§ = null;
         this.§%T§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§[!j§ = null;
         switch(param2)
         {
            case "BACK":
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(§"C§.§^!7§,true);
               break;
            case "TOURNAMENT_HISTORY":
               §?!r§.§"#_§("misc_menubuttonback_1");
               _loc4_ = new TournamentHistoryPopup(§`"W§.§+v§,§+5§.DEFAULT);
               §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§[!j§ = null;
         §,!q§.§9!,§.clearLevel();
         §,!q§.§9!,§.§]"J§(false);
         §4#;§.singleton.playThemeMusic();
         super.activate(param1);
         if(this.§?-§.§!!e§)
         {
            this.§?-§.reset();
         }
         this.§#!>§(this.§?-§.isLoading);
         this.§?-§.addEventListener(§@"b§.§^o§,this.§&!A§);
         this.§?-§.addEventListener(§@"b§.§,"3§,this.§,!X§);
         if(!this.§?-§.isLoading)
         {
            this.§^!P§();
         }
         §@;§.movieClip.addEventListener(Event.ENTER_FRAME,this.§-!u§);
         if(!§4#;§.singleton.dataModel.userProgress.hasTutorialBeenSeen(TournamentInfoPopup.§2!5§))
         {
            §4#;§.singleton.popupManager.openPopup(new TournamentInfoPopup(§`"W§.§+v§,§+5§.DEFAULT),true,true,true);
            §4#;§.singleton.dataModel.userProgress.saveTutorialSeen(TournamentInfoPopup.§2!5§);
         }
         if(this.§?-§.§-j§ != null && this.§?-§.§-j§.length > 0)
         {
            if(!§@#B§(§@!m§(§4#;§.singleton).dataModel).userProgress.hasTutorialBeenSeen(CrystalImprovementsPopup.§%!h§))
            {
               _loc2_ = new CrystalImprovementsPopup(§`"W§.§+v§,§+5§.TOP);
               §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            }
         }
      }
      
      private function §0#@§() : void
      {
         this.§+f§ = new §,!i§(§@;§.getItemByName("MovieClip_UpSell").mClip,§@#B§(§4#;§.singleton.dataModel).§1!f§);
      }
      
      private function §,!X§(param1:Event) : void
      {
         this.§#!>§(true);
      }
      
      private function §&!A§(param1:Event) : void
      {
         this.§^!P§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§&"[§ = null;
         super.deActivate();
         if(this.§+f§)
         {
            this.§+f§.dispose();
         }
         this.§?-§.removeEventListener(§@"b§.§^o§,this.§&!A§);
         this.§?-§.removeEventListener(§@"b§.§,"3§,this.§,!X§);
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§?6§,this.§-!q§);
         if(this.§,!e§ != null)
         {
            this.§?-§.§!!e§ = true;
            this.§,!e§ = null;
         }
         §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.§7"g§();
         for each(_loc1_ in this.§;!^§)
         {
            _loc1_.§6!@§();
         }
      }
      
      private function §7"g§() : void
      {
         var _loc1_:§5"$§ = null;
         for each(_loc1_ in this.§%"]§)
         {
            _loc1_.parent.removeChild(_loc1_);
            _loc1_.dispose();
         }
         this.§%"]§.length = 0;
      }
      
      private function §-!u§(param1:Event) : void
      {
         if(!this.§?-§.isLoading)
         {
            if(this.§?-§.§!!e§)
            {
               this.§?-§.reset();
            }
            else
            {
               §@;§.getItemByName("Container_TournamentTitle").mClip.tournamentTitle.txtTimeLeft.text = this.§?-§.§#!m§();
            }
         }
      }
      
      private function §#!>§(param1:Boolean) : void
      {
         §@;§.getItemByName("MovieClip_TournamentLoading").setVisibility(param1);
         §@;§.getItemByName("Container_TournamentTitle").setVisibility(!param1);
         §@;§.getItemByName("Container_LevelSelection").setVisibility(!param1);
         §@;§.getItemByName("Container_TopThree").setVisibility(!param1);
         §@;§.getItemByName("Container_TotalTrophies").setVisibility(!param1);
      }
      
      private function §-!q§(param1:§="g§) : void
      {
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§?6§,this.§-!q§);
         this.§^!P§();
      }
      
      private function §^!P§() : void
      {
         var _loc1_:§""t§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         if(_loc1_.§^5§ == null)
         {
            this.§#!>§(true);
            _loc1_.addEventListener(§="g§.§?6§,this.§-!q§);
            return;
         }
         this.§#!>§(false);
         var _loc2_:int = 0;
         while(_loc2_ < §1"X§)
         {
            if(!this.§?-§.levelObjects || _loc2_ >= this.§?-§.levelObjects.length || !this.§?-§.levelObjects[_loc2_])
            {
               throw new Error("Tournament level " + (_loc2_ + 1) + " missing.");
            }
            this.§`"0§(this.§;!^§[_loc2_],this.§?-§.levelObjects[_loc2_]);
            _loc2_++;
         }
         this.§%T§();
         this.§+"h§();
         this.§0#_§();
         §@!m§(§4#;§.singleton).§""s§.§%#+§(this.§?-§.§'"?§);
      }
      
      private function §`"0§(param1:§&"[§, param2:Object) : void
      {
         var _loc3_:String = param2.levelId;
         var _loc4_:int = this.§?-§.getScoreForLevel(_loc3_);
         var _loc5_:int = this.§?-§.getRankForLevel(_loc3_);
         param1.§6!@§();
         param1.§[!@§ = param2;
         param1.§'#I§ = false;
         param1.§1Y§(param2.unlocksAt);
         param1.score = _loc4_;
         param1.§[!F§ = §4#;§.singleton.dataModel.userProgress.getStarsForLevel(_loc3_,_loc4_);
         param1.§9!<§ = _loc5_;
         param1.§?!N§ = §@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§;
      }
      
      private function §+"h§() : void
      {
         var _loc1_:MovieClip = §@;§.getItemByName("Container_TotalTrophiesContent").mClip;
         _loc1_.txtGold.text = "x" + this.§?-§.goldTrophies;
         _loc1_.txtSilver.text = "x" + this.§?-§.silverTrophies;
         _loc1_.txtBronze.text = "x" + this.§?-§.bronzeTrophies;
      }
      
      private function §0#_§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§4#G§ = null;
         var _loc5_:§5"$§ = null;
         this.§7"g§();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = §@;§.getItemByName("Container_TopThree").mClip.topThree["top" + (_loc1_ + 1)];
            _loc3_ = §@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§;
            _loc2_.floatingPlatform.gotoAndStop("platform_0" + _loc3_);
            if(this.§?-§.§'"?§.data.length > _loc1_)
            {
               if(_loc4_ = this.§?-§.§'"?§.data[_loc1_] as §4#G§)
               {
                  _loc2_.visible = true;
                  _loc2_.txtName.text = _loc4_.userName;
                  _loc2_.txtScore.text = _loc4_.§]"q§;
                  _loc2_.txtName.mouseEnabled = false;
                  _loc2_.txtScore.mouseEnabled = false;
                  _loc5_ = new §5"$§(_loc4_.userId);
                  _loc2_.profilePic.addChild(_loc5_);
                  _loc5_.scaleY = 1.44;
                  _loc5_.scaleX = 1.44;
                  this.§%"]§.push(_loc5_);
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
      
      private function §0c§(param1:Event) : void
      {
         this.§%T§();
      }
      
      private function §%T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §1"X§)
         {
            this.§;!^§[_loc1_].canBuyToUnlock = _loc1_ > 0 && this.§;!^§[_loc1_].isLocked && !this.§;!^§[_loc1_ - 1].isLocked;
            _loc1_++;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§"!§.setSize(param1,param2);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §7!=§ = new §-"e§(param1,§%G§.stage);
      }
   }
}
