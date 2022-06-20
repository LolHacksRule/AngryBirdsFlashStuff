package §[#v§
{
   import § "a§.UserProgressEvent;
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.PosterPopup;
   import § null§.§0!N§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§ $4§;
   import §!"1§.§4#q§;
   import §!"1§.§9!X§;
   import §+!n§.§+!p§;
   import §+"_§.§>"%§;
   import §-"S§.§>#G§;
   import §-"Y§.§,#B§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§'@§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §4#$§.§6#!§;
   import §4#$§.§7Q§;
   import §7!3§.§-!>§;
   import §9!6§.§## §;
   import §9x§.§ m§;
   import §9x§.§1"^§;
   import §9x§.§7",§;
   import §<8§.§8!g§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§!$$§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2$8§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§ ^§;
   import §?o§.§#!P§;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §@!_§.§ !G§;
   import §]!4§.§=#c§;
   import §]M§.§=!a§;
   import §^#?§.§#!T§;
   import §^#?§.§?#,§;
   import §^1§.§@9§;
   import §^1§.§[$2§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §>#P§ extends §@9§
   {
      
      public static const §6$4§:int = 2;
      
      public static const §!!a§:int = 4;
      
      public static const §<!R§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §!#Q§:int = 0;
      
      private static const §%!M§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §%!!§:Object;
      
      private var §3#l§:Boolean;
      
      private var §>K§:Boolean;
      
      private var §2#_§:int;
      
      private var §=#m§:Boolean = false;
      
      private var §?!R§:Boolean = false;
      
      private var §9!9§:Boolean = false;
      
      private var §?#;§:int;
      
      private var §2]§:§7Q§;
      
      private var §>"c§:int;
      
      private var § "R§:§9!X§;
      
      private var §!!c§:§>"%§;
      
      private var §3#s§:§4#q§;
      
      private var §&#c§:DisplayObjectContainer;
      
      private var §-"s§:Number;
      
      private var §^!F§:TextField;
      
      private var §63§:int;
      
      private var §^#L§:Boolean;
      
      private var §@!z§:Vector.<§@#5§>;
      
      public function §>#P§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §9#!§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2]§ = new §7Q§(this,§;!b§(§@!D§.getItemByName("Button_NextLevel")),§5"L§.§3"1§,§,#b§(AngryBirdsBase.singleton.dataModel).§+!J§,§,#b§(AngryBirdsBase.singleton.dataModel).§%$;§);
      }
      
      protected function §>!=§(param1:int) : void
      {
         this.§?#;§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§2#t§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§+!p§.§;"-§ as §^"a§).§6"&§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §?#,§.§3"1§.§;#b§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §5"L§.§3"1§.§!$A§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §?"m§).previousLevel = mLevelManager.currentLevel;
         }
         §%!?§(this.getCutSceneState());
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§5#O§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §@!D§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§>"c§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§5!>§(mLevelManager.currentLevel);
         var _loc2_:int = §+!p§.§-#W§.getScore();
         §]$1§ = _loc2_ > _loc1_;
         this.§3#l§ = _loc1_ == 0;
         this.§2#_§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         §4=§(_loc2_,_loc1_);
         this.§%"5§ = false;
         this.§`#e§ = false;
         this.§?#y§ = false;
         switch(this.§2#_§)
         {
            case 0:
               break;
            case 1:
               this.§%"5§ = true;
               break;
            case 2:
               this.§%"5§ = true;
               this.§`#e§ = true;
               break;
            case 3:
               this.§%"5§ = true;
               this.§`#e§ = true;
               this.§?#y§ = true;
         }
         §]"X§();
         this.§>K§ = true;
         if(§]$1§)
         {
            this.§>K§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).addEventListener(UserProgressEvent.§"!f§,this.onUserProgressSaved);
            this.§>!=§(_loc2_);
            _loc8_ = §^"a§.§'e§.§&#i§(mLevelManager.currentLevel,§1"^§.BIRD_BOT_1);
            _loc9_ = §^"a§.§'e§.§&#i§(mLevelManager.currentLevel,§1"^§.BIRD_BOT_2);
            §'@§.§[#9§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §5"L§.§1!P§();
         }
         else
         {
            this.§!!c§ = §=!a§.§3"1§.§>"Q§() as §>"%§;
            if(this.§!!c§)
            {
               if(this.§!!c§.§>#h§() > 0)
               {
                  this.§>K§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).addEventListener(UserProgressEvent.§"!f§,this.onUserProgressSaved);
                  this.§>!=§(_loc1_);
                  §5"L§.§1!P§();
               }
            }
         }
         (§@!D§.getItemByName("MovieClip_NewHighScoreBadge") as §=!Z§).setVisibility(false);
         (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).mClip.gotoAndStop("UnLit");
         (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).mClip.gotoAndStop("UnLit");
         (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).mClip.gotoAndStop("UnLit");
         var _loc3_:int = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:int = 1;
         if(_loc2_ >= _loc3_)
         {
            _loc5_ = 3;
         }
         else if(_loc2_ >= _loc4_)
         {
            _loc5_ = 2;
         }
         var _loc6_:* = this.§2#_§ == 0;
         var _loc7_:Boolean = this.§2#_§ < 3 && _loc5_ == 3;
         §]!P§.§1!7§().§+!6§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§(),§+!p§.§`?§.slingshot.§?#&§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§+!p§.§`?§ as §^#j§).§"C§(),§+!p§.§-#W§.getScore(),_loc6_,_loc7_);
         if(this.§2#_§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§="7§(§5"L§.§3"1§.levelIDs))
            {
               §]!P§.§1!7§().§2"u§(§5"L§.§3"1§.§54§.id);
            }
         }
         if(§]$1§ && this.§ "R§)
         {
            this.§ "R§.§[!z§(_loc5_ - this.§2#_§);
         }
         this.initShareUI();
      }
      
      private function set §%"5§(param1:Boolean) : void
      {
         this.§=#m§ = param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §`#e§(param1:Boolean) : void
      {
         this.§?!R§ = param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §?#y§(param1:Boolean) : void
      {
         this.§9!9§ = param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §@!D§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §%$%§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§ "R§ || !this.§&#c§)
         {
            return;
         }
         var cls:Class = §=@§.§9!x§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§@!z§)
         {
            this.§@!z§ = new Vector.<§@#5§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §@!D§.stage.stageWidth >> 1;
         startCoordinates.y = §@!D§.stage.stageHeight >> 1;
         switch(starIndex)
         {
            case 0:
               startCoordinates.x -= 236;
               startCoordinates.y -= 90;
               break;
            case 1:
               startCoordinates.x -= 60;
               startCoordinates.y -= 110;
               break;
            default:
               startCoordinates.x += 82;
               startCoordinates.y -= 90;
         }
         var tween1:§0!N§ = §5"<§.§3"1§.§3#§(dsp,{
            "x":this.§&#c§.x + (this.§&#c§.width >> 1),
            "y":this.§&#c§.y + (this.§&#c§.height >> 1)
         },startCoordinates,1,§5"<§.§6=§);
         var tween2:§0!N§ = §5"<§.§3"1§.§3#§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§@#5§ = §5"<§.§3"1§.§!"[§(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            §^#L§ = true;
         };
         starAnimTween.onStart = function():void
         {
            §@!D§.movieClip.addChild(dsp);
         };
         starAnimTween.§7!z§ = true;
         this.§@!z§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§-!>§ = null;
         (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).mClip.gotoAndStop("Lit");
         if(!this.§=#m§)
         {
            §@!D§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            §4$4§.playSound("star_1_coins",§#! §);
            §'@§.§ "?§(§'@§.§;X§,§2$8§.§,"p§,§6$4§);
            _loc1_ = new §-!>§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §6$4§;
            _loc1_.currency = "IVC";
            _loc1_.§'#w§ = §]!P§.§0!4§;
            _loc1_.itemType = §2$8§.§,"p§;
            _loc1_.§>#$§ = §2$8§.§,"p§;
            _loc1_.level = §+!p§.§`?§.currentLevel.name;
            _loc1_.itemName = §2$8§.§,"p§;
            [_loc1_];
            §]!P§.§1!7§().§=#3§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§'#w§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§>#$§,_loc1_.§7$&§,_loc1_.currency,_loc1_.§;"u§);
            this.§>"c§ += §6$4§;
            §4$8§.setCoinsAmountText(this.§>"c§);
            §4$8§.animateGotCoins(§6$4§);
            this.§%$%§(0);
            return §,#B§.§3z§;
         }
         §4$4§.playSound("star_1_coins",§#! §);
         return §,#B§.§+#+§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§-!>§ = null;
         (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).mClip.gotoAndStop("Lit");
         if(!this.§?!R§)
         {
            §@!D§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§?#;§ + §!!a§;
            if(!this.§=#m§)
            {
               _loc1_ += §6$4§;
            }
            §4$4§.playSound("star_2_coins",§#! §);
            §'@§.§ "?§(§'@§.§;X§,§2$8§.§,"p§,§!!a§);
            _loc2_ = new §-!>§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §!!a§;
            _loc2_.currency = "IVC";
            _loc2_.§'#w§ = §]!P§.§0!4§;
            _loc2_.itemType = §2$8§.§,"p§;
            _loc2_.§>#$§ = §2$8§.§,"p§;
            _loc2_.level = §+!p§.§`?§.currentLevel.name;
            _loc2_.itemName = §2$8§.§,"p§;
            [_loc2_];
            §]!P§.§1!7§().§=#3§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§'#w§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§>#$§,_loc2_.§7$&§,_loc2_.currency,_loc2_.§;"u§);
            this.§>"c§ += §!!a§;
            §4$8§.setCoinsAmountText(this.§>"c§);
            §4$8§.animateGotCoins(§!!a§);
            this.§%$%§(1);
            return §,#B§.§3z§;
         }
         §4$4§.playSound("star_2_coins",§#! §);
         return §,#B§.§+#+§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§-!>§ = null;
         (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).mClip.gotoAndStop("Lit");
         if(!this.§9!9§)
         {
            §@!D§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§?#;§ + §<!R§;
            if(!this.§=#m§)
            {
               _loc1_ += §6$4§;
            }
            if(!this.§?!R§)
            {
               _loc1_ += §!!a§;
            }
            §4$4§.playSound("star_3_coins",§#! §);
            §'@§.§ "?§(§'@§.§;X§,§2$8§.§,"p§,§<!R§);
            _loc2_ = new §-!>§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §<!R§;
            _loc2_.currency = "IVC";
            _loc2_.§'#w§ = §]!P§.§0!4§;
            _loc2_.itemType = §2$8§.§,"p§;
            _loc2_.§>#$§ = §2$8§.§,"p§;
            _loc2_.level = §+!p§.§`?§.currentLevel.name;
            _loc2_.itemName = §2$8§.§,"p§;
            [_loc2_];
            §]!P§.§1!7§().§=#3§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§'#w§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§>#$§,_loc2_.§7$&§,_loc2_.currency,_loc2_.§;"u§);
            this.§>"c§ += §<!R§;
            §4$8§.setCoinsAmountText(this.§>"c§);
            §4$8§.animateGotCoins(§<!R§);
            this.§%$%§(2);
            return §,#B§.§3z§;
         }
         §4$4§.playSound("star_3_coins",§#! §);
         return §,#B§.§+#+§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§;!b§ = null;
         var tournamentRules:§6#!§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var leagueOrderNumber:int = 0;
         var fbPixelEventName:String = null;
         var sentEvent:Boolean = false;
         var alreadySentEvents:Object = null;
         var name:String = null;
         var previousState:String = param1;
         this.§ "R§ = §=!a§.§3"1§.§>"Q§() as §9!X§;
         if(this.§ "R§)
         {
            if(this.§ "R§.§]!k§ >= this.§ "R§.§9#R§ && !this.§ "R§.§5#_§())
            {
               this.§ "R§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §5"L§.§3"1§.§&"4§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§2]§.activate(nextLevel);
         }
         this.§!!c§ = §=!a§.§3"1§.§>"Q§() as §>"%§;
         if(this.§!!c§)
         {
            if(this.§!!c§.§>#h§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §@!D§.getItemByName(§%!M§) as §;!b§;
               tournamentRules = §5"L§.§3"1§.tournamentRules;
               brandName = tournamentRules.§,d§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = §!",§.§3"1§.§@Q§(§>"%§.§-"v§) + 1 + "";
               § $4§.§#L§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§@!D§.getItemByName("ItemDropMovieClip") as §=!Z§).mClip;
               § $4§.§#L§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §@!D§.getItemByName("Hostess_CupCakes").visible = true;
               §4$4§.playSound("fortunewheel_block_remove",§4$4§.§6!H§);
               §@!D§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §@!D§.getItemByName(§%!M§).setVisibility(false);
            }
         }
         else
         {
            §@!D§.getItemByName(§%!M§).setVisibility(false);
         }
         if(§?#,§.§3"1§.currentLeague())
         {
            leagueOrderNumber = §#!T§.§@" §(§?#,§.§3"1§.currentLeague().id);
            if(leagueOrderNumber > -1)
            {
               fbPixelEventName = "join_tier_" + leagueOrderNumber;
               sentEvent = true;
               alreadySentEvents = §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§6!D§(§ !G§.§=#^§);
               for each(name in alreadySentEvents)
               {
                  if(name == fbPixelEventName)
                  {
                     sentEvent = false;
                  }
               }
               if(sentEvent)
               {
                  §=#c§.§<!t§("trackFBPixelEvent",fbPixelEventName);
                  §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§=#^§,[fbPixelEventName]);
               }
            }
         }
         if(§5"L§.§3"1§.§2o§())
         {
            §7"Z§.§,#M§();
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §<#h§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§ ^§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§#!P§ = §#!P§(_loc1_);
         for each(_loc3_ in PosterPopup.§7$%§)
         {
            if(_loc2_.§<"7§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§+!p§.§;"-§ as §^"a§).§""G§.§5"5§();
               if(§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§-!S§.§ !^§,§## §.TOP,_loc3_));
               §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§-y§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§2]§.update();
         this.§8;§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §@!D§.getItemByName("Button_Menu").setVisibility(true);
         §@!D§.getItemByName("Button_Replay").setVisibility(true);
         §@!D§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §5"L§.§3"1§.§!$A§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §@!D§.getItemByName("Button_NextLevel").setVisibility(true);
            §@!D§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §@!D§.getItemByName("Button_Menu").x = §+$'§[0];
            §@!D§.getItemByName("Button_Replay").x = §+$'§[1];
            §@!D§.getItemByName("Button_NextLevel").x = §+$'§[2];
         }
         else
         {
            §@!D§.getItemByName("Button_NextLevel").setVisibility(false);
            §@!D§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §@!D§.getItemByName("Button_Menu").x = §+$'§[0];
            §@!D§.getItemByName("Button_Replay").x = §+$'§[1];
            §@!D§.getItemByName("Button_NextLevel_Orange").x = §+$'§[2];
         }
         if(this.§ "R§)
         {
            if(!this.§&#c§)
            {
               this.§63§ = this.§ "R§.§]!k§;
               this.§3#s§ = this.§ "R§.§,!@§();
               if(this.§63§ < this.§3#s§.starsNeeded)
               {
                  this.§&!L§(§=@§.§9!x§("ChestLocked" + this.§3#s§.ID));
                  this.§^!F§ = this.§&#c§.getChildByName("TextField_Value") as TextField;
                  this.§^!F§.text = this.§63§ + "/" + this.§3#s§.starsNeeded;
                  this.§&#c§.getChildByName("bgNormal").visible = false;
                  this.§&#c§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§&!L§(§=@§.§9!x§("ChestClaimable" + this.§3#s§.ID));
                  this.§^!F§ = null;
               }
               this.§^#L§ = false;
               this.§&#c§.addEventListener(MouseEvent.CLICK,this.§2-§);
            }
         }
      }
      
      private function §8;§() : void
      {
         if(this.§^#L§)
         {
            if(this.§63§ < this.§3#s§.starsNeeded && this.§63§ + 1 == this.§3#s§.starsNeeded)
            {
               this.§&#c§.parent.removeChild(this.§&#c§);
               this.§&#c§ = null;
               this.§&!L§(§=@§.§9!x§("ChestClaimable" + this.§3#s§.ID));
               this.§^!F§ = null;
               §4$4§.playSound("ABF_gift_open_01",§4$4§.§6!H§);
            }
            else
            {
               §4$4§.playSound("LeaguePromotionPuff",§4$4§.§6!H§);
            }
            ++this.§63§;
            if(this.§^!F§)
            {
               this.§^!F§.text = this.§63§ + "/" + this.§3#s§.starsNeeded;
            }
            this.§^#L§ = false;
         }
      }
      
      private function §&!L§(param1:Class) : void
      {
         this.§&#c§ = new param1();
         this.§-"s§ = this.§&#c§.width + 16;
         this.§&#c§.x = (§+!p§.§;"-§ as §^"a§).§?"c§.x - this.§-"s§;
         this.§&#c§.y = 10;
         this.§&#c§.addEventListener(MouseEvent.CLICK,this.§2-§);
         §@!D§.movieClip.addChild(this.§&#c§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§&#c§)
         {
            _loc1_ = 1;
            if((§+!p§.§;"-§ as §^"a§).§&m§())
            {
               _loc1_ = §[$2§.§ #H§;
            }
            this.§&#c§.scaleX = _loc1_;
            this.§&#c§.scaleY = _loc1_;
            this.§&#c§.x = (§+!p§.§;"-§ as §^"a§).§?"c§.x - this.§-"s§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§>K§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §!",§.§3"1§.§"#t§(_loc2_,true);
         }
         if(this.§!!c§)
         {
            if(this.§!!c§.§>#h§() > 0)
            {
               if(!§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(§>"%§.§-"v§))
               {
                  this.§!!c§.§^x§();
                  §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§-y§,[§>"%§.§-"v§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§>K§)
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§5"L§.§3"1§.§2o§())
               {
                  if(§5"L§.§3"1§.§@!-§() <= 0)
                  {
                     §%!?§(§7"Z§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§2]§.§1#q§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§2]§.§,#m§)
                  {
                     this.§2]§.§,5§();
                  }
               }
               break;
            case "BRAG":
               §=#c§.addCallback("permissionRequestComplete",this.§;#§);
               §=#c§.§<!t§("askForPublishStreamPermission");
               this.§<#D§(true);
               §%!Q§();
               break;
            case "SKIP_SHARE":
               this.§<#D§(false);
               §%!Q§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               §4e§.§@g§();
               break;
            case "REPLAY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               if(§5"L§.§3"1§.§2o§())
               {
                  if(§5"L§.§3"1§.§@!-§() <= 0)
                  {
                     §%!?§(§7"Z§.STATE_NAME);
                  }
                  else
                  {
                     §%!?§(this.getStateLevelLoadState());
                  }
               }
               else
               {
                  §%!?§(this.getStateLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §2-§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         §4e§.§@g§();
         §]!P§.§1!7§().§8"p§(§]!P§.§ #p§,this.§ "R§.§5#_§());
      }
      
      protected function §;#§(param1:String) : void
      {
         §=#c§.§`$ §("permissionRequestComplete",this.§;#§);
         if(param1 == "true" && this.§%!!§)
         {
            switch(this.§%!!§.shareModeId)
            {
               case §!#Q§:
                  this.§%!!§.friendId.substr(0,this.§%!!§.friendId.indexOf("-"));
                  §?"m§(mLevelManager).§&#W§(this.§%!!§.friendId);
                  §=#c§.§<!t§("shareBrag",this.§%!!§.friendId,this.§%!!§.bragPhotoId,this.§%!!§.bragTitle,this.§%!!§.bragText,this.§%!!§.bragCaption,this.§%!!§.levelId);
            }
         }
      }
      
      protected function §<#D§(param1:Boolean) : void
      {
         switch(this.§%!!§.shareModeId)
         {
            case §!#Q§:
               if(param1)
               {
                  §'@§.§]G§(§]!P§.§@t§);
                  §]!P§.§1!7§().§0#e§(§]!P§.§@t§,§]!P§.§6"U§);
               }
               else
               {
                  §'@§.§4D§(§]!P§.§@t§);
                  §]!P§.§1!7§().§0#e§(§]!P§.§@t§,§]!P§.§]#9§);
               }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§@#5§ = null;
         super.deActivate();
         this.§2]§.deactivate();
         if(this.§&#c§)
         {
            this.§&#c§.parent.removeChild(this.§&#c§);
            this.§&#c§ = null;
            this.§3#s§ = null;
         }
         if(this.§@!z§)
         {
            for each(_loc1_ in this.§@!z§)
            {
               if(_loc1_)
               {
                  _loc1_.§+!_§();
               }
            }
            this.§@!z§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §["!§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §'"b§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §4e§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §9#!§ = true;
         this.§%!!§ = new Object();
         if(this.§+!3§())
         {
            §@!D§.getItemByName("ButtonBrag").setVisibility(true);
            §@!D§.getItemByName("ButtonSkipShare").setVisibility(true);
            §<!a§();
            § !+§();
         }
      }
      
      protected function §+!3§() : Boolean
      {
         var _loc4_:§!$$§ = null;
         if(§5"L§.§3"1§.§2o§())
         {
            return false;
         }
         var _loc1_:§!$$§ = null;
         var _loc2_:Array = (§+!p§.§;"-§ as §^"a§).§?"c§.§ "M§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§ $1§(_loc4_) && _loc4_.§5"1§ > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.§5"1§;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§-$5§;
         (_loc5_ = §@!D§.getItemByName("Textfield_SharingText") as §-$5§).setVisibility(true);
         § $4§.§'#d§(_loc5_.§>$D§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§ m§ = new § m§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).avatarString,false,§7",§.§1"0§);
         var _loc7_:MovieClip;
         (_loc7_ = (§@!D§.getItemByName("BragFramePlayer") as §=!Z§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§@!D§.getItemByName("BragFramePlayer") as §=!Z§).setVisibility(true);
         var _loc8_:§ m§ = new § m§(_loc1_.userId,_loc1_.avatarString,false,§7",§.§1"0§);
         var _loc9_:MovieClip;
         (_loc9_ = (§@!D§.getItemByName("BragFrameFriend") as §=!Z§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§@!D§.getItemByName("BragFrameFriend") as §=!Z§).setVisibility(true);
         this.§%!!§.shareModeId = §!#Q§;
         this.§%!!§.friendId = _loc1_.userId;
         this.§%!!§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§%!!§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName + " overtakes " + _loc1_.userName + "!";
         this.§%!!§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName + " just beat " + _loc1_.userName + " in level " + §5"L§.§3"1§.§=#I§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§%!!§.bragCaption = "CLICK TO JOIN THEM!";
         this.§%!!§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §?"m§(mLevelManager).§&#W§(mLevelManager.currentLevel);
         this.§%!!§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      private function § $1§(param1:§!$$§) : Boolean
      {
         return §1"^§.§6f§(param1.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(§5"L§.§3"1§.§54§)
         {
            return §5"L§.§3"1§.§54§.id;
         }
         return -1;
      }
   }
}
