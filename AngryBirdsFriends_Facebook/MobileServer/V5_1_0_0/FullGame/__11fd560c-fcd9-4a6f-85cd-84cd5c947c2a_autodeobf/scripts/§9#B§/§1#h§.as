package §9#B§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!#"§.§7Y§;
   import §"!@§.§0"U§;
   import §"!@§.§>"c§;
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §%#w§.§?"z§;
   import §&T§.Wallet;
   import §'",§.§@#e§;
   import §'#d§.§5!Z§;
   import §+$?§.§%!k§;
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §-!S§.§##>§;
   import §-R§.§2#c§;
   import §-R§.§[#X§;
   import §1!=§.§^"U§;
   import §1"N§.§4#G§;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §2G§.§@#P§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5"7§.§+$"§;
   import §5P§.§""C§;
   import §8#!§.§-"Z§;
   import §8#!§.§0">§;
   import §8#!§.§5`§;
   import §;#D§.§3#U§;
   import §;$3§.§-!'§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §;$3§.§?!0§;
   import §<G§.UserProgressEvent;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §="h§.§`"O§;
   import §?P§.PosterPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §1#h§ extends §0"U§
   {
      
      public static const §?!]§:int = 2;
      
      public static const §'!k§:int = 4;
      
      public static const §1!Q§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §2"=§:int = 0;
      
      private static const §8#'§:int = 1;
      
      private static const §#x§:int = 2;
      
      private static const §"$A§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §4!9§:Object;
      
      private var §>V§:Boolean;
      
      private var §^!6§:Boolean;
      
      private var §4!o§:int;
      
      private var §&!>§:Boolean = false;
      
      private var §1"r§:Boolean = false;
      
      private var §'a§:Boolean = false;
      
      private var §'!o§:int;
      
      private var §>D§:§0">§;
      
      private var §[#!§:int;
      
      private var §8#$§:§2#c§;
      
      private var §5#Y§:§5!Z§;
      
      private var §+!k§:§[#X§;
      
      private var §<!U§:DisplayObjectContainer;
      
      private var §]#Y§:Number;
      
      private var §&!<§:TextField;
      
      private var §,!f§:int;
      
      private var §]! §:Boolean;
      
      private var §&^§:Vector.<§4[§>;
      
      public function §1#h§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §>#N§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>D§ = new §0">§(this,§>"0§(§`!H§.getItemByName("Button_NextLevel")),§5`§.§6!§,§#"8§(AngryBirdsBase.singleton.dataModel).§-!h§,§#"8§(AngryBirdsBase.singleton.dataModel).§""[§);
      }
      
      protected function §,"P§(param1:int) : void
      {
         this.§'!o§ = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§3#Y§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§3#U§.§9#^§ as §,A§).§-#Y§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §2#s§.§6!§.§;>§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §5`§.§6!§.§ #A§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §?!0§).previousLevel = mLevelManager.currentLevel;
         }
         §1"h§(this.getCutSceneState());
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §`!H§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§[#!§ = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§?"B§(mLevelManager.currentLevel);
         var _loc2_:int = §3#U§.§8I§.getScore();
         §>n§ = _loc2_ > _loc1_;
         this.§>V§ = _loc1_ == 0;
         this.§4!o§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         §%!l§(_loc2_,_loc1_);
         this.§`V§ = false;
         this.§,$0§ = false;
         this.§9""§ = false;
         switch(this.§4!o§)
         {
            case 0:
               break;
            case 1:
               this.§`V§ = true;
               break;
            case 2:
               this.§`V§ = true;
               this.§,$0§ = true;
               break;
            case 3:
               this.§`V§ = true;
               this.§,$0§ = true;
               this.§9""§ = true;
         }
         §`#j§();
         this.§^!6§ = true;
         if(§>n§)
         {
            this.§^!6§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).addEventListener(UserProgressEvent.§1"P§,this.onUserProgressSaved);
            this.§,"P§(_loc2_);
            _loc8_ = §,A§.§""`§.§0#T§(mLevelManager.currentLevel,§%!k§.BIRD_BOT_1);
            _loc9_ = §,A§.§""`§.§0#T§(mLevelManager.currentLevel,§%!k§.BIRD_BOT_2);
            §`"x§.§-§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §5`§.§&"C§();
         }
         else
         {
            this.§5#Y§ = §`"O§.§6!§.§!!I§() as §5!Z§;
            if(this.§5#Y§)
            {
               if(this.§5#Y§.§4#i§() > 0)
               {
                  this.§^!6§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).addEventListener(UserProgressEvent.§1"P§,this.onUserProgressSaved);
                  this.§,"P§(_loc1_);
                  §5`§.§&"C§();
               }
            }
         }
         (§`!H§.getItemByName("MovieClip_NewHighScoreBadge") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).mClip.gotoAndStop("UnLit");
         (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).mClip.gotoAndStop("UnLit");
         (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).mClip.gotoAndStop("UnLit");
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
         var _loc6_:* = this.§4!o§ == 0;
         var _loc7_:Boolean = this.§4!o§ < 3 && _loc5_ == 3;
         § try§.§!!t§().§+" §(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§(),§3#U§.§#$4§.slingshot.§`!R§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§3#U§.§#$4§ as §2$2§).§<Q§(),§3#U§.§8I§.getScore(),_loc6_,_loc7_);
         if(this.§4!o§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§"!u§(§5`§.§6!§.levelIDs))
            {
               § try§.§!!t§().§5#F§(§5`§.§6!§.§"!^§.id);
            }
         }
         if(§>n§ && this.§8#$§)
         {
            this.§8#$§.§0f§(_loc5_ - this.§4!o§);
         }
         this.initShareUI();
      }
      
      private function set §`V§(param1:Boolean) : void
      {
         this.§&!>§ = param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §,$0§(param1:Boolean) : void
      {
         this.§1"r§ = param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §9""§(param1:Boolean) : void
      {
         this.§'a§ = param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §`!H§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §8"F§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§8#$§ || !this.§<!U§)
         {
            return;
         }
         var cls:Class = §!"f§.§##?§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§&^§)
         {
            this.§&^§ = new Vector.<§4[§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §`!H§.stage.stageWidth >> 1;
         startCoordinates.y = §`!H§.stage.stageHeight >> 1;
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
         var tween1:§7Y§ = §&"H§.§6!§.§6C§(dsp,{
            "x":this.§<!U§.x + (this.§<!U§.width >> 1),
            "y":this.§<!U§.y + (this.§<!U§.height >> 1)
         },startCoordinates,1,§&"H§.§!!;§);
         var tween2:§7Y§ = §&"H§.§6!§.§6C§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§4[§ = §&"H§.§6!§.§5!j§(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            §]! § = true;
         };
         starAnimTween.onStart = function():void
         {
            §`!H§.movieClip.addChild(dsp);
         };
         starAnimTween.§0! § = true;
         this.§&^§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§+$"§ = null;
         var _loc2_:Array = null;
         (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).mClip.gotoAndStop("Lit");
         if(!this.§&!>§)
         {
            §`!H§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            §!"p§.playSound("star_1_coins",§0#b§);
            §`"x§.§[!d§(§`"x§.§"#k§,§"G§.§6!@§,§?!]§);
            _loc1_ = new §+$"§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §?!]§;
            _loc1_.currency = "IVC";
            _loc1_.§2>§ = § try§.§1"8§;
            _loc1_.itemType = §"G§.§6!@§;
            _loc1_.§ #5§ = §"G§.§6!@§;
            _loc1_.level = §3#U§.§#$4§.currentLevel.name;
            _loc1_.itemName = §"G§.§6!@§;
            _loc2_ = [_loc1_];
            § try§.§!!t§().§ #D§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§2>§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§ #5§,_loc1_.§7#?§,_loc1_.currency,_loc1_.§0"q§);
            this.§[#!§ += §?!]§;
            §8"K§.setCoinsAmountText(this.§[#!§);
            §8"K§.animateGotCoins(§?!]§);
            this.§8"F§(0);
            return §@#e§.§7!v§;
         }
         §!"p§.playSound("star_1_coins",§0#b§);
         return §@#e§.§<"h§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§+$"§ = null;
         var _loc3_:Array = null;
         (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).mClip.gotoAndStop("Lit");
         if(!this.§1"r§)
         {
            §`!H§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§'!o§ + §'!k§;
            if(!this.§&!>§)
            {
               _loc1_ += §?!]§;
            }
            §!"p§.playSound("star_2_coins",§0#b§);
            §`"x§.§[!d§(§`"x§.§"#k§,§"G§.§6!@§,§'!k§);
            _loc2_ = new §+$"§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §'!k§;
            _loc2_.currency = "IVC";
            _loc2_.§2>§ = § try§.§1"8§;
            _loc2_.itemType = §"G§.§6!@§;
            _loc2_.§ #5§ = §"G§.§6!@§;
            _loc2_.level = §3#U§.§#$4§.currentLevel.name;
            _loc2_.itemName = §"G§.§6!@§;
            _loc3_ = [_loc2_];
            § try§.§!!t§().§ #D§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§2>§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§ #5§,_loc2_.§7#?§,_loc2_.currency,_loc2_.§0"q§);
            this.§[#!§ += §'!k§;
            §8"K§.setCoinsAmountText(this.§[#!§);
            §8"K§.animateGotCoins(§'!k§);
            this.§8"F§(1);
            return §@#e§.§7!v§;
         }
         §!"p§.playSound("star_2_coins",§0#b§);
         return §@#e§.§<"h§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§+$"§ = null;
         var _loc3_:Array = null;
         (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).mClip.gotoAndStop("Lit");
         if(!this.§'a§)
         {
            §`!H§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§'!o§ + §1!Q§;
            if(!this.§&!>§)
            {
               _loc1_ += §?!]§;
            }
            if(!this.§1"r§)
            {
               _loc1_ += §'!k§;
            }
            §!"p§.playSound("star_3_coins",§0#b§);
            §`"x§.§[!d§(§`"x§.§"#k§,§"G§.§6!@§,§1!Q§);
            _loc2_ = new §+$"§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §1!Q§;
            _loc2_.currency = "IVC";
            _loc2_.§2>§ = § try§.§1"8§;
            _loc2_.itemType = §"G§.§6!@§;
            _loc2_.§ #5§ = §"G§.§6!@§;
            _loc2_.level = §3#U§.§#$4§.currentLevel.name;
            _loc2_.itemName = §"G§.§6!@§;
            _loc3_ = [_loc2_];
            § try§.§!!t§().§ #D§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§2>§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§ #5§,_loc2_.§7#?§,_loc2_.currency,_loc2_.§0"q§);
            this.§[#!§ += §1!Q§;
            §8"K§.setCoinsAmountText(this.§[#!§);
            §8"K§.animateGotCoins(§1!Q§);
            this.§8"F§(2);
            return §@#e§.§7!v§;
         }
         §!"p§.playSound("star_3_coins",§0#b§);
         return §@#e§.§<"h§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§>"0§ = null;
         var tournamentRules:§-"Z§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var leagueOrderNumber:int = 0;
         var fbPixelEventName:String = null;
         var sentEvent:Boolean = false;
         var alreadySentEvents:Object = null;
         var name:String = null;
         var previousState:String = param1;
         this.§8#$§ = §`"O§.§6!§.§!!I§() as §2#c§;
         if(this.§8#$§)
         {
            if(this.§8#$§.§-j§ >= this.§8#$§.§1,§ && !this.§8#$§.§17§())
            {
               this.§8#$§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §5`§.§6!§.§=0§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§>D§.activate(nextLevel);
         }
         this.§5#Y§ = §`"O§.§6!§.§!!I§() as §5!Z§;
         if(this.§5#Y§)
         {
            if(this.§5#Y§.§4#i§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §`!H§.getItemByName(§"$A§) as §>"0§;
               tournamentRules = §5`§.§6!§.tournamentRules;
               brandName = tournamentRules.§7"4§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = §-#+§.§6!§.§8#%§(§5!Z§.§!"O§) + 1 + "";
               §=#Q§.§7$6§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§`!H§.getItemByName("ItemDropMovieClip") as §@N§).mClip;
               §=#Q§.§7$6§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §`!H§.getItemByName("Hostess_CupCakes").visible = true;
               §!"p§.playSound("fortunewheel_block_remove",§!"p§.§^#@§);
               §`!H§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §`!H§.getItemByName(§"$A§).setVisibility(false);
            }
         }
         else
         {
            §`!H§.getItemByName(§"$A§).setVisibility(false);
         }
         if(§2#s§.§6!§.currentLeague())
         {
            leagueOrderNumber = §?"z§.§@!w§(§2#s§.§6!§.currentLeague().id);
            if(leagueOrderNumber > -1)
            {
               fbPixelEventName = "join_tier_" + leagueOrderNumber;
               sentEvent = true;
               alreadySentEvents = §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§ ""§(§4#G§.§ 0§);
               for each(name in alreadySentEvents)
               {
                  if(name == fbPixelEventName)
                  {
                     sentEvent = false;
                  }
               }
               if(sentEvent)
               {
                  §^!K§.§+"D§("trackFBPixelEvent",fbPixelEventName);
                  §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§ 0§,[fbPixelEventName]);
               }
            }
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §`#E§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§>f§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§-!'§ = §-!'§(_loc1_);
         for each(_loc3_ in PosterPopup.§1!u§)
         {
            if(_loc2_.§0##§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§3#U§.§9#^§ as §,A§).§%#@§.§^!Y§();
               if(§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§]"$§.§[#=§,§^"U§.TOP,_loc3_));
               §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§<"9§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§>D§.update();
         this.§4!G§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §`!H§.getItemByName("Button_Menu").setVisibility(true);
         §`!H§.getItemByName("Button_Replay").setVisibility(true);
         §`!H§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §5`§.§6!§.§ #A§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §`!H§.getItemByName("Button_NextLevel").setVisibility(true);
            §`!H§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §`!H§.getItemByName("Button_Menu").x = §5!h§[0];
            §`!H§.getItemByName("Button_Replay").x = §5!h§[1];
            §`!H§.getItemByName("Button_NextLevel").x = §5!h§[2];
         }
         else
         {
            §`!H§.getItemByName("Button_NextLevel").setVisibility(false);
            §`!H§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §`!H§.getItemByName("Button_Menu").x = §5!h§[0];
            §`!H§.getItemByName("Button_Replay").x = §5!h§[1];
            §`!H§.getItemByName("Button_NextLevel_Orange").x = §5!h§[2];
         }
         if(this.§8#$§)
         {
            if(!this.§<!U§)
            {
               this.§,!f§ = this.§8#$§.§-j§;
               this.§+!k§ = this.§8#$§.§+"R§();
               if(this.§,!f§ < this.§+!k§.starsNeeded)
               {
                  this.§,!q§(§!"f§.§##?§("ChestLocked" + this.§+!k§.ID));
                  this.§&!<§ = this.§<!U§.getChildByName("TextField_Value") as TextField;
                  this.§&!<§.text = this.§,!f§ + "/" + this.§+!k§.starsNeeded;
                  this.§<!U§.getChildByName("bgNormal").visible = false;
                  this.§<!U§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§,!q§(§!"f§.§##?§("ChestClaimable" + this.§+!k§.ID));
                  this.§&!<§ = null;
               }
               this.§]! § = false;
               this.§<!U§.addEventListener(MouseEvent.CLICK,this.§5!1§);
            }
         }
      }
      
      private function §4!G§() : void
      {
         if(this.§]! §)
         {
            if(this.§,!f§ < this.§+!k§.starsNeeded && this.§,!f§ + 1 == this.§+!k§.starsNeeded)
            {
               this.§<!U§.parent.removeChild(this.§<!U§);
               this.§<!U§ = null;
               this.§,!q§(§!"f§.§##?§("ChestClaimable" + this.§+!k§.ID));
               this.§&!<§ = null;
               §!"p§.playSound("ABF_gift_open_01",§!"p§.§^#@§);
            }
            else
            {
               §!"p§.playSound("LeaguePromotionPuff",§!"p§.§^#@§);
            }
            ++this.§,!f§;
            if(this.§&!<§)
            {
               this.§&!<§.text = this.§,!f§ + "/" + this.§+!k§.starsNeeded;
            }
            this.§]! § = false;
         }
      }
      
      private function §,!q§(param1:Class) : void
      {
         this.§<!U§ = new param1();
         this.§]#Y§ = this.§<!U§.width + 16;
         this.§<!U§.x = (§3#U§.§9#^§ as §,A§).§9"x§.x - this.§]#Y§;
         this.§<!U§.y = 10;
         this.§<!U§.addEventListener(MouseEvent.CLICK,this.§5!1§);
         §`!H§.movieClip.addChild(this.§<!U§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§<!U§)
         {
            _loc1_ = 1;
            if((§3#U§.§9#^§ as §,A§).§`$<§())
            {
               _loc1_ = §>"c§.§ "'§;
            }
            this.§<!U§.scaleX = _loc1_;
            this.§<!U§.scaleY = _loc1_;
            this.§<!U§.x = (§3#U§.§9#^§ as §,A§).§9"x§.x - this.§]#Y§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§^!6§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §-#+§.§6!§.§,"0§(_loc2_,true);
         }
         if(this.§5#Y§)
         {
            if(this.§5#Y§.§4#i§() > 0)
            {
               if(!§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(§5!Z§.§!"O§))
               {
                  this.§5#Y§.§4b§();
                  §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§<"9§,[§5!Z§.§!"O§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         if(!this.§^!6§)
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§>D§.§5[§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§>D§.§9!Z§)
               {
                  this.§>D§.§%[§();
               }
               break;
            case "SHARE":
            case "BRAG":
               §^!K§.addCallback("permissionRequestComplete",this.§[!s§);
               §^!K§.§+"D§("askForPublishStreamPermission");
               this.§-!-§(true);
               §`Q§();
               break;
            case "SKIP_SHARE":
               this.§-!-§(false);
               §`Q§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               §=!L§.§>0§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §5!1§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         §=!L§.§>0§();
         § try§.§!!t§().§[#]§(§ try§.§<$!§,this.§8#$§.§17§());
      }
      
      protected function §[!s§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         §^!K§.§,"i§("permissionRequestComplete",this.§[!s§);
         if(param1 == "true" && this.§4!9§)
         {
            switch(this.§4!9§.shareModeId)
            {
               case §8#'§:
                  _loc2_ = this.§4!9§.friendId.substr(0,this.§4!9§.friendId.indexOf("-"));
                  _loc3_ = §?!0§(mLevelManager).§7#J§(this.§4!9§.friendId);
                  §^!K§.§+"D§("shareBrag",this.§4!9§.friendId,this.§4!9§.bragPhotoId,this.§4!9§.bragTitle,this.§4!9§.bragText,this.§4!9§.bragCaption,this.§4!9§.levelId);
                  break;
               case §2"=§:
                  §^!K§.§+"D§("shareBragCrown",this.§4!9§.crownPhotoId,this.§4!9§.shareTitle,this.§4!9§.shareText,this.§4!9§.shareCaption,this.§4!9§.rank,this.§4!9§.levelId);
                  break;
               case §#x§:
                  §^!K§.§+"D§("shareBragThreeStars",this.§4!9§.starsPhotoId,this.§4!9§.shareTitle,this.§4!9§.shareText,this.§4!9§.shareCaption,this.§4!9§.tournamentId);
            }
         }
      }
      
      protected function §-!-§(param1:Boolean) : void
      {
         switch(this.§4!9§.shareModeId)
         {
            case §8#'§:
               if(param1)
               {
                  §`"x§.§4!$§(§ try§.§6"5§);
                  § try§.§!!t§().§+!R§(§ try§.§6"5§,§ try§.§]J§);
               }
               else
               {
                  §`"x§.§;",§(§ try§.§6"5§);
                  § try§.§!!t§().§+!R§(§ try§.§6"5§,§ try§.§<"[§);
               }
               break;
            case §2"=§:
               if(param1)
               {
                  §`"x§.§4!$§(§ try§.§ "4§);
                  § try§.§!!t§().§+!R§(§ try§.§ "4§,§ try§.§]J§);
               }
               else
               {
                  §`"x§.§;",§(§ try§.§ "4§);
                  § try§.§!!t§().§+!R§(§ try§.§ "4§,§ try§.§<"[§);
               }
               break;
            case §#x§:
               if(param1)
               {
                  §`"x§.§4!$§(§ try§.§,"Q§);
                  § try§.§!!t§().§+!R§(§ try§.§,"Q§,§ try§.§]J§);
               }
               else
               {
                  §`"x§.§;",§(§ try§.§,"Q§);
                  § try§.§!!t§().§+!R§(§ try§.§,"Q§,§ try§.§<"[§);
               }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§4[§ = null;
         super.deActivate();
         this.§>D§.deactivate();
         if(this.§<!U§)
         {
            this.§<!U§.parent.removeChild(this.§<!U§);
            this.§<!U§ = null;
            this.§+!k§ = null;
         }
         if(this.§&^§)
         {
            for each(_loc1_ in this.§&^§)
            {
               if(_loc1_)
               {
                  _loc1_.§@g§();
               }
            }
            this.§&^§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §3#t§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §+y§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §=!L§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §>#N§ = true;
         this.§4!9§ = new Object();
         if(this.§!"[§() || this.§"!W§())
         {
            §`!H§.getItemByName("ButtonBrag").setVisibility(false);
            §`!H§.getItemByName("ButtonSkipShare").setVisibility(true);
            §`!H§.getItemByName("ButtonShare").setVisibility(true);
            §+!X§();
            §<+§();
         }
         else if(this.§9e§())
         {
            §`!H§.getItemByName("ButtonBrag").setVisibility(true);
            §`!H§.getItemByName("ButtonSkipShare").setVisibility(true);
            §`!H§.getItemByName("ButtonShare").setVisibility(false);
            §+!X§();
            §<+§();
         }
      }
      
      protected function §9e§() : Boolean
      {
         var _loc4_:§@#P§ = null;
         var _loc1_:§@#P§ = null;
         var _loc2_:Array = (§3#U§.§9#^§ as §,A§).§9"x§.§7!b§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§0#G§(_loc4_) && _loc4_.§'!_§ > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.§'!_§;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§%M§;
         (_loc5_ = §`!H§.getItemByName("Textfield_SharingText") as §%M§).setVisibility(true);
         §=#Q§.§0$,§(_loc5_.§4!"§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§=#>§ = new §=#>§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).avatarString,false,§4!+§.§+"N§);
         var _loc7_:MovieClip;
         (_loc7_ = (§`!H§.getItemByName("BragFramePlayer") as §@N§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§`!H§.getItemByName("BragFramePlayer") as §@N§).setVisibility(true);
         var _loc8_:§=#>§ = new §=#>§(_loc1_.userId,_loc1_.avatarString,false,§4!+§.§+"N§);
         var _loc9_:MovieClip;
         (_loc9_ = (§`!H§.getItemByName("BragFrameFriend") as §@N§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§`!H§.getItemByName("BragFrameFriend") as §@N§).setVisibility(true);
         this.§4!9§.shareModeId = §8#'§;
         this.§4!9§.friendId = _loc1_.userId;
         this.§4!9§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§4!9§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName + " overtakes " + _loc1_.userName + "!";
         this.§4!9§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName + " just beat " + _loc1_.userName + " in level " + §5`§.§6!§.§";§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§4!9§.bragCaption = "CLICK TO JOIN THEM!";
         this.§4!9§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §?!0§(mLevelManager).§7#J§(mLevelManager.currentLevel);
         this.§4!9§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      protected function §"!W§() : Boolean
      {
         var _loc1_:int = (§3#U§.§9#^§ as §,A§).§9"x§.§9!7§(!this.§>V§);
         var _loc2_:§%M§ = §`!H§.getItemByName("Textfield_SharingText") as §%M§;
         _loc2_.§4!"§.embedFonts = true;
         _loc2_.§4!"§.setTextFormat(_loc2_.§4!"§.defaultTextFormat);
         switch(_loc1_)
         {
            case 1:
               this.§4!9§.shareModeId = §2"=§;
               _loc2_.setText("You won the gold crown!");
               this.§4!9§.crownPhotoId = "02_sharing_level_1st_place";
               this.§4!9§.shareTitle = "1st place score!";
               this.§4!9§.shareText = "I just got the gold crown in level " + §5`§.§6!§.§";§(mLevelManager.currentLevel) + ". I\'m unstoppable!";
               _loc2_.setVisibility(true);
               var _loc3_:§@N§ = §`!H§.getItemByName("ShareCrowns") as §@N§;
               _loc3_.goToFrame(_loc1_,false);
               _loc3_.visible = true;
               this.§4!9§.shareCaption = "CLICK TO PLAY THE LEVEL!";
               this.§4!9§.rank = _loc1_;
               this.§4!9§.levelId = mLevelManager.currentLevel;
               return true;
            default:
               return false;
         }
      }
      
      protected function §!"[§() : Boolean
      {
         if(§3#U§.§8I§.getScore() < mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel))
         {
            return false;
         }
         if(this.§4!o§ == 3)
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§"!u§(§5`§.§6!§.levelIDs))
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§2!!§())
         {
            return false;
         }
         var _loc1_:§%M§ = §`!H§.getItemByName("Textfield_SharingText") as §%M§;
         _loc1_.§4!"§.embedFonts = true;
         _loc1_.§4!"§.setTextFormat(_loc1_.§4!"§.defaultTextFormat);
         _loc1_.setText("Three Star Tournament!");
         _loc1_.setVisibility(true);
         this.§4!9§.shareModeId = §#x§;
         this.§4!9§.starsPhotoId = "05_sharing_level_3_star_score";
         this.§4!9§.shareTitle = "Three Star Club!";
         this.§4!9§.shareText = "I got three stars in all of this week\'s tournament levels! Can you do it too?";
         this.§4!9§.shareCaption = "CLICK TO PLAY TOURNAMENT!";
         this.§4!9§.tournamentId = §5`§.§6!§.§"!^§.id;
         (§`!H§.getItemByName("ShareThreeStars") as §@N§).setVisibility(true);
         return true;
      }
      
      private function §0#G§(param1:§@#P§) : Boolean
      {
         return §%!k§.§@#A§(param1.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(§5`§.§6!§.§"!^§)
         {
            return §5`§.§6!§.§"!^§.id;
         }
         return -1;
      }
   }
}
