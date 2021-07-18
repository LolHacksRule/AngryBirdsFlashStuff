package §-"i§
{
   import §!!B§.UserProgressEvent;
   import §#!s§.§@J§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§6^§;
   import §#v§.§@#?§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§=]§;
   import §%$!§.§?i§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §+"%§.§6X§;
   import §,!=§.§,"M§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §,n§.§`"d§;
   import §0#d§.§<#u§;
   import §1!@§.§&#a§;
   import §3!B§.§9##§;
   import §4q§.§!#Q§;
   import §5"$§.§"!$§;
   import §5"$§.§]!m§;
   import §52§.§#%§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §7g§.§4!q§;
   import §8§.§#$+§;
   import §;!H§.§<!K§;
   import §<!=§.§`#w§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.PosterPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import flash.display.MovieClip;
   
   public class §6#A§ extends §,"M§
   {
      
      public static const §;#n§:int = 2;
      
      public static const §2!+§:int = 4;
      
      public static const §0#!§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §3S§:int = 0;
      
      private static const §9[§:int = 1;
      
      private static const §?$"§:int = 2;
       
      
      private var §0"@§:Object;
      
      private var §2!9§:Boolean;
      
      private var §`!C§:Boolean;
      
      private var §`'§:§@J§;
      
      private var §3t§:int;
      
      private var §-!q§:Boolean = false;
      
      private var §3#L§:Boolean = false;
      
      private var §4z§:Boolean = false;
      
      private var §5!E§:int;
      
      private var §?#?§:§"!$§;
      
      public function §6#A§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §5]§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?#?§ = new §"!$§(this,§=O§(§!$§.getItemByName("Button_NextLevel")),§]!m§.§3!]§,§+3§(AngryBirdsBase.singleton.dataModel).§ ,§,§+3§(AngryBirdsBase.singleton.dataModel).§<$&§);
      }
      
      protected function §4#C§(param1:int) : void
      {
         this.§5!E§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§&#4§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§>"$§.§<_§ as §8G§).§6k§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §4!q§.§3!]§.§9s§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §]!m§.§3!]§.§<"o§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §6^§).previousLevel = mLevelManager.currentLevel;
         }
         §7P§(this.getCutSceneState());
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§,#I§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §!$§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§3!5§(mLevelManager.currentLevel);
         var _loc3_:int = §>"$§.§#0§.getScore();
         § 7§ = _loc3_ > _loc2_;
         this.§2!9§ = _loc2_ == 0;
         this.§3t§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         §8#=§(_loc3_,_loc2_);
         this.§#!n§ = false;
         this.§ !q§ = false;
         this.§`!e§ = false;
         switch(this.§3t§)
         {
            case 0:
               break;
            case 1:
               this.§#!n§ = true;
               break;
            case 2:
               this.§#!n§ = true;
               this.§ !q§ = true;
               break;
            case 3:
               this.§#!n§ = true;
               this.§ !q§ = true;
               this.§`!e§ = true;
         }
         §=9§();
         if(§ 7§)
         {
            this.§`!C§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).addEventListener(UserProgressEvent.§5"!§,this.onUserProgressSaved);
            this.§4#C§(_loc3_);
            _loc7_ = §8G§.§6!r§.§'$;§(mLevelManager.currentLevel,§`"d§.BIRD_BOT_1);
            _loc8_ = §8G§.§6!r§.§'$;§(mLevelManager.currentLevel,§`"d§.BIRD_BOT_2);
            §,"W§.§%#L§(mLevelManager.currentLevel,_loc3_ > _loc7_,_loc3_ > _loc8_,_loc3_ - _loc7_,_loc3_ - _loc8_);
            §]!m§.§8w§();
         }
         (§!$§.getItemByName("MovieClip_NewHighScoreBadge") as §="T§).setVisibility(false);
         (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).mClip.gotoAndStop("UnLit");
         (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).mClip.gotoAndStop("UnLit");
         (§!$§.getItemByName("MovieClip_StarRight") as §="T§).mClip.gotoAndStop("UnLit");
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var _loc5_:Boolean = _loc1_ <= 0 && _loc3_ > _loc1_;
         var _loc6_:Boolean = this.§3t§ < 3 && _loc4_ == 3;
         §-#A§.§6$2§().§?!5§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§(),§>"$§.§3#'§.slingshot.§`b§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§>"$§.§3#'§ as §#%§).§[5§(),§>"$§.§#0§.getScore(),_loc5_,_loc6_);
         if(this.§3t§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§<4§(§]!m§.§3!]§.levelIDs))
            {
               §-#A§.§6$2§().§>!`§(§]!m§.§3!]§.§7!,§.id);
            }
         }
         this.initShareUI();
      }
      
      private function set §#!n§(param1:Boolean) : void
      {
         this.§-!q§ = param1;
         §!$§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §!$§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set § !q§(param1:Boolean) : void
      {
         this.§3#L§ = param1;
         §!$§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §!$§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §`!e§(param1:Boolean) : void
      {
         this.§4z§ = param1;
         §!$§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §!$§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§9##§ = null;
         (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).mClip.gotoAndStop("Lit");
         if(!this.§-!q§)
         {
            §!$§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            this.§`'§.§`#$§.§ true§(§;#n§);
            this.§`'§.§`#$§.§9"'§(this.§5!E§ + §;#n§);
            §#$+§.playSound("Hiscore_Star_Coins_Splash1",§]$-§);
            §,"W§.§'&§(§,"W§.§0"Y§,§=]§.§;Q§,§;#n§);
            _loc1_ = new §9##§();
            _loc1_.§;"O§ = STATE_NAME;
            _loc1_.amount = §;#n§;
            _loc1_.currency = "IVC";
            _loc1_.gainType = §-#A§.§]!s§;
            _loc1_.itemType = §=]§.§;Q§;
            _loc1_.iapType = §=]§.§;Q§;
            _loc1_.level = §>"$§.§3#'§.currentLevel.name;
            _loc1_.itemName = §=]§.§;Q§;
            [_loc1_];
            §-#A§.§6$2§().§]!H§(false,_loc1_.itemType,_loc1_.amount,_loc1_.gainType,_loc1_.§;"O§,_loc1_.level,_loc1_.itemName,_loc1_.iapType,_loc1_.§#!v§,_loc1_.currency,_loc1_.§'$§);
            return §`#w§.§-#w§;
         }
         §#$+§.playSound("Hiscore_Star_Splash1",§]$-§);
         return §`#w§.§8!_§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§9##§ = null;
         (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).mClip.gotoAndStop("Lit");
         if(!this.§3#L§)
         {
            §!$§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            this.§`'§.§`#$§.§ true§(§2!+§);
            _loc1_ = this.§5!E§ + §2!+§;
            if(!this.§-!q§)
            {
               _loc1_ += §;#n§;
            }
            this.§`'§.§`#$§.§9"'§(this.§5!E§ + §;#n§ + §2!+§);
            §#$+§.playSound("Hiscore_Star_Coins_Splash2",§]$-§);
            §,"W§.§'&§(§,"W§.§0"Y§,§=]§.§;Q§,§2!+§);
            _loc2_ = new §9##§();
            _loc2_.§;"O§ = STATE_NAME;
            _loc2_.amount = §2!+§;
            _loc2_.currency = "IVC";
            _loc2_.gainType = §-#A§.§]!s§;
            _loc2_.itemType = §=]§.§;Q§;
            _loc2_.iapType = §=]§.§;Q§;
            _loc2_.level = §>"$§.§3#'§.currentLevel.name;
            _loc2_.itemName = §=]§.§;Q§;
            [_loc2_];
            §-#A§.§6$2§().§]!H§(false,_loc2_.itemType,_loc2_.amount,_loc2_.gainType,_loc2_.§;"O§,_loc2_.level,_loc2_.itemName,_loc2_.iapType,_loc2_.§#!v§,_loc2_.currency,_loc2_.§'$§);
            return §`#w§.§-#w§;
         }
         §#$+§.playSound("Hiscore_Star_Splash2",§]$-§);
         return §`#w§.§8!_§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§9##§ = null;
         (§!$§.getItemByName("MovieClip_StarRight") as §="T§).mClip.gotoAndStop("Lit");
         if(!this.§4z§)
         {
            §!$§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            this.§`'§.§`#$§.§ true§(§0#!§);
            _loc1_ = this.§5!E§ + §0#!§;
            if(!this.§-!q§)
            {
               _loc1_ += §;#n§;
            }
            if(!this.§3#L§)
            {
               _loc1_ += §2!+§;
            }
            this.§`'§.§`#$§.§9"'§(_loc1_);
            §#$+§.playSound("Hiscore_Star_Coins_Splash3",§]$-§);
            §,"W§.§'&§(§,"W§.§0"Y§,§=]§.§;Q§,§0#!§);
            _loc2_ = new §9##§();
            _loc2_.§;"O§ = STATE_NAME;
            _loc2_.amount = §0#!§;
            _loc2_.currency = "IVC";
            _loc2_.gainType = §-#A§.§]!s§;
            _loc2_.itemType = §=]§.§;Q§;
            _loc2_.iapType = §=]§.§;Q§;
            _loc2_.level = §>"$§.§3#'§.currentLevel.name;
            _loc2_.itemName = §=]§.§;Q§;
            [_loc2_];
            §-#A§.§6$2§().§]!H§(false,_loc2_.itemType,_loc2_.amount,_loc2_.gainType,_loc2_.§;"O§,_loc2_.level,_loc2_.itemName,_loc2_.iapType,_loc2_.§#!v§,_loc2_.currency,_loc2_.§'$§);
            return §`#w§.§-#w§;
         }
         §#$+§.playSound("Hiscore_Star_Splash3",§]$-§);
         return §`#w§.§8!_§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`'§ = (AngryBirdsBase.singleton as §8G§).§&#§;
         var _loc2_:String = §]!m§.§3!]§.§;x§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§?#?§.activate(_loc2_);
         }
      }
      
      private function §>"z§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§-"R§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§@#?§ = §@#?§(_loc1_);
         for each(_loc3_ in PosterPopup.§4#;§)
         {
            if(_loc2_.§9#6§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§>"$§.§<_§ as §8G§).§0"n§.§^!c§();
               if(§+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§0!f§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§[W§.§5Z§,§<d§.TOP,_loc3_));
               §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§&L§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§?#?§.update();
      }
      
      override protected function showButtonsNormal() : void
      {
         §!$§.getItemByName("Button_Menu").setVisibility(true);
         §!$§.getItemByName("Button_Replay").setVisibility(true);
         §!$§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §]!m§.§3!]§.§<"o§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §!$§.getItemByName("Button_NextLevel").setVisibility(true);
            §!$§.getItemByName("Button_Menu").x = §1#Q§[0];
            §!$§.getItemByName("Button_Replay").x = §1#Q§[1];
            §!$§.getItemByName("Button_NextLevel").x = §1#Q§[2];
         }
         else
         {
            §!$§.getItemByName("Button_NextLevel").setVisibility(false);
            §!$§.getItemByName("Button_Menu").x = §1#Q§[0] + Math.abs(§1#Q§[1] - §1#Q§[0]) / 2;
            §!$§.getItemByName("Button_Replay").x = §1#Q§[1] + Math.abs(§1#Q§[2] - §1#Q§[1]) / 2;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§`!C§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §%h§.§3!]§.§1!0§(_loc2_,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§?#?§.§9"4§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§?#?§.§ p§)
               {
                  this.§?#?§.§2S§();
               }
               break;
            case "SHARE":
            case "BRAG":
               §6X§.addCallback("permissionRequestComplete",this.§ g§);
               §6X§.§3U§("askForPublishStreamPermission");
               this.§^"F§(true);
               §0"9§();
               break;
            case "SKIP_SHARE":
               this.§^"F§(false);
               §0"9§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      protected function § g§(param1:String) : void
      {
         §6X§.§5!3§("permissionRequestComplete",this.§ g§);
         if(param1 == "true" && this.§0"@§)
         {
            switch(this.§0"@§.shareModeId)
            {
               case §9[§:
                  this.§0"@§.friendId.substr(0,this.§0"@§.friendId.indexOf("-"));
                  §6^§(mLevelManager).§[!2§(this.§0"@§.friendId);
                  §6X§.§3U§("shareBrag",this.§0"@§.friendId,this.§0"@§.bragPhotoId,this.§0"@§.bragTitle,this.§0"@§.bragText,this.§0"@§.bragCaption,this.§0"@§.levelId);
                  break;
               case §3S§:
                  §6X§.§3U§("shareBragCrown",this.§0"@§.crownPhotoId,this.§0"@§.shareTitle,this.§0"@§.shareText,this.§0"@§.shareCaption,this.§0"@§.rank,this.§0"@§.levelId);
                  break;
               case §?$"§:
                  §6X§.§3U§("shareBragThreeStars",this.§0"@§.starsPhotoId,this.§0"@§.shareTitle,this.§0"@§.shareText,this.§0"@§.shareCaption,this.§0"@§.tournamentId);
            }
         }
      }
      
      protected function §^"F§(param1:Boolean) : void
      {
         switch(this.§0"@§.shareModeId)
         {
            case §9[§:
               if(param1)
               {
                  §,"W§.§ A§(§-#A§.§0$;§);
                  §-#A§.§6$2§().§8$§(§-#A§.§0$;§,§-#A§.§1"3§);
               }
               else
               {
                  §,"W§.§]"'§(§-#A§.§0$;§);
                  §-#A§.§6$2§().§8$§(§-#A§.§0$;§,§-#A§.§ !M§);
               }
               break;
            case §3S§:
               if(param1)
               {
                  §,"W§.§ A§(§-#A§.§#"J§);
                  §-#A§.§6$2§().§8$§(§-#A§.§#"J§,§-#A§.§1"3§);
               }
               else
               {
                  §,"W§.§]"'§(§-#A§.§#"J§);
                  §-#A§.§6$2§().§8$§(§-#A§.§#"J§,§-#A§.§ !M§);
               }
               break;
            case §?$"§:
               if(param1)
               {
                  §,"W§.§ A§(§-#A§.§ #R§);
                  §-#A§.§6$2§().§8$§(§-#A§.§ #R§,§-#A§.§1"3§);
               }
               else
               {
                  §,"W§.§]"'§(§-#A§.§ #R§);
                  §-#A§.§6$2§().§8$§(§-#A§.§ #R§,§-#A§.§ !M§);
               }
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?#?§.deactivate();
      }
      
      override protected function getCutSceneState() : String
      {
         return §5!o§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §;"§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §%!'§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §5]§ = true;
         this.§0"@§ = new Object();
         if(this.§<"a§() || this.§8!"§())
         {
            §!$§.getItemByName("ButtonBrag").setVisibility(false);
            §!$§.getItemByName("ButtonSkipShare").setVisibility(true);
            §!$§.getItemByName("ButtonShare").setVisibility(true);
            §&j§();
            §1"F§();
         }
         else if(this.§'#L§())
         {
            §!$§.getItemByName("ButtonBrag").setVisibility(true);
            §!$§.getItemByName("ButtonSkipShare").setVisibility(true);
            §!$§.getItemByName("ButtonShare").setVisibility(false);
            §&j§();
            §1"F§();
         }
      }
      
      protected function §'#L§() : Boolean
      {
         var _loc4_:§?i§ = null;
         var _loc1_:§?i§ = null;
         var _loc2_:Array = (§>"$§.§<_§ as §8G§).§&#§.§@"V§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§>$,§(_loc4_) && _loc4_.levelScore > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.levelScore;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§]$!§;
         (_loc5_ = §!$§.getItemByName("Textfield_SharingText") as §]$!§).setVisibility(true);
         §&#a§.§^E§(_loc5_.§@]§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§3I§ = new §3I§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).avatarString,false,§+!f§.§%#M§);
         var _loc7_:MovieClip;
         (_loc7_ = (§!$§.getItemByName("BragFramePlayer") as §="T§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§!$§.getItemByName("BragFramePlayer") as §="T§).setVisibility(true);
         var _loc8_:§3I§ = new §3I§(_loc1_.userId,_loc1_.avatarString,false,§+!f§.§%#M§);
         var _loc9_:MovieClip;
         (_loc9_ = (§!$§.getItemByName("BragFrameFriend") as §="T§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§!$§.getItemByName("BragFrameFriend") as §="T§).setVisibility(true);
         this.§0"@§.shareModeId = §9[§;
         this.§0"@§.friendId = _loc1_.userId;
         this.§0"@§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§0"@§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName + " overtakes " + _loc1_.userName + "!";
         this.§0"@§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName + " just beat " + _loc1_.userName + " in level " + §]!m§.§3!]§.§9#7§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§0"@§.bragCaption = "CLICK TO JOIN THEM!";
         this.§0"@§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §6^§(mLevelManager).§[!2§(mLevelManager.currentLevel);
         this.§0"@§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      protected function §8!"§() : Boolean
      {
         var _loc1_:int = (§>"$§.§<_§ as §8G§).§&#§.§@!o§(!this.§2!9§);
         var _loc2_:§]$!§ = §!$§.getItemByName("Textfield_SharingText") as §]$!§;
         _loc2_.§@]§.embedFonts = true;
         _loc2_.§@]§.setTextFormat(_loc2_.§@]§.defaultTextFormat);
         switch(_loc1_)
         {
            case 1:
               this.§0"@§.shareModeId = §3S§;
               _loc2_.setText("You won the gold crown!");
               this.§0"@§.crownPhotoId = "02_sharing_level_1st_place";
               this.§0"@§.shareTitle = "1st place score!";
               this.§0"@§.shareText = "I just got the gold crown in level " + §]!m§.§3!]§.§9#7§(mLevelManager.currentLevel) + ". I\'m unstoppable!";
               _loc2_.setVisibility(true);
               var _loc3_:§="T§ = §!$§.getItemByName("ShareCrowns") as §="T§;
               _loc3_.goToFrame(_loc1_,false);
               _loc3_.visible = true;
               this.§0"@§.shareCaption = "CLICK TO PLAY THE LEVEL!";
               this.§0"@§.rank = _loc1_;
               this.§0"@§.levelId = mLevelManager.currentLevel;
               return true;
            default:
               return false;
         }
      }
      
      protected function §<"a§() : Boolean
      {
         if(§>"$§.§#0§.getScore() < mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel))
         {
            return false;
         }
         if(this.§3t§ == 3)
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§<4§(§]!m§.§3!]§.levelIDs))
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§>#W§())
         {
            return false;
         }
         var _loc1_:§]$!§ = §!$§.getItemByName("Textfield_SharingText") as §]$!§;
         _loc1_.§@]§.embedFonts = true;
         _loc1_.§@]§.setTextFormat(_loc1_.§@]§.defaultTextFormat);
         _loc1_.setText("Three Star Tournament!");
         _loc1_.setVisibility(true);
         this.§0"@§.shareModeId = §?$"§;
         this.§0"@§.starsPhotoId = "05_sharing_level_3_star_score";
         this.§0"@§.shareTitle = "Three Star Club!";
         this.§0"@§.shareText = "I got three stars in all of this week\'s tournament levels! Can you do it too?";
         this.§0"@§.shareCaption = "CLICK TO PLAY TOURNAMENT!";
         this.§0"@§.tournamentId = §]!m§.§3!]§.§7!,§.id;
         (§!$§.getItemByName("ShareThreeStars") as §="T§).setVisibility(true);
         return true;
      }
      
      private function §>$,§(param1:§?i§) : Boolean
      {
         return §`"d§.§0Y§(param1.userId);
      }
   }
}
