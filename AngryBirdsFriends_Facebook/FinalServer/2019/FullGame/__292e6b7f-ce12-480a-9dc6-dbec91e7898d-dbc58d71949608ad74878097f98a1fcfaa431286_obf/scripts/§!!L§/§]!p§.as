package §!!L§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§7`§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §""p§.§!Q§;
   import §""p§.§6"Z§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §#g§.§!P§;
   import §%"N§.Wallet;
   import §&=§.§<#V§;
   import §'"b§.§ #F§;
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §,#,§.§>#g§;
   import §,#,§.§[!V§;
   import §,#,§.§]§;
   import §-#;§.§>",§;
   import §2G§.§"A§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §3"V§.§ b§;
   import §7#$§.§8$%§;
   import §7#$§.§?# §;
   import §7#$§.§["5§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import §;"5§.§@$-§;
   import §>#q§.§^!"§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.PosterPopup;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §]§.§%q§;
   import §]§.§3"E§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`!Z§.§=!7§;
   import §`"t§.§7"U§;
   import §`#c§.UserProgressEvent;
   import §`,§.§ !f§;
   import §`,§.§'#t§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §]!p§ extends §%q§
   {
      
      public static const §,#7§:int = 2;
      
      public static const §##I§:int = 4;
      
      public static const §=T§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §;$-§:int = 0;
      
      private static const §0!7§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §7!=§:Object;
      
      private var §,"N§:Boolean;
      
      private var §0#G§:Boolean;
      
      private var §4#o§:int;
      
      private var §!#$§:Boolean = false;
      
      private var §]"D§:Boolean = false;
      
      private var §-"v§:Boolean = false;
      
      private var §5C§:int;
      
      private var §,#P§:§ !f§;
      
      private var §+"8§:int;
      
      private var §?!_§:§6"Z§;
      
      private var §<2§:§=!7§;
      
      private var §,#+§:§!Q§;
      
      private var §,1§:DisplayObjectContainer;
      
      private var §^#&§:Number;
      
      private var §4#A§:TextField;
      
      private var §!"X§:int;
      
      private var §"#f§:Boolean;
      
      private var §,!I§:Vector.<§@$-§>;
      
      public function §]!p§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §"!]§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§,#P§ = new § !f§(this,§1"r§(§;!w§.getItemByName("Button_NextLevel")),§7!$§.§+!,§,§=#o§(AngryBirdsBase.singleton.dataModel).§[h§,§=#o§(AngryBirdsBase.singleton.dataModel).§1q§);
      }
      
      protected function §=y§(param1:int) : void
      {
         this.§5C§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§@g§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§]$?§.§;u§ as §@z§).§1#n§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §4"s§.§+!,§.§8#;§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §7!$§.§+!,§.§>";§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §8$%§).previousLevel = mLevelManager.currentLevel;
         }
         §3#§(this.getCutSceneState());
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§#!3§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §;!w§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§+"8§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§1$C§(mLevelManager.currentLevel);
         var _loc2_:int = §]$?§.§;r§.getScore();
         §`"e§ = _loc2_ > _loc1_;
         this.§,"N§ = _loc1_ == 0;
         this.§4#o§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         § "p§(_loc2_,_loc1_);
         this.§90§ = false;
         this.§+$+§ = false;
         this.§'!7§ = false;
         switch(this.§4#o§)
         {
            case 0:
               break;
            case 1:
               this.§90§ = true;
               break;
            case 2:
               this.§90§ = true;
               this.§+$+§ = true;
               break;
            case 3:
               this.§90§ = true;
               this.§+$+§ = true;
               this.§'!7§ = true;
         }
         §,!T§();
         this.§0#G§ = true;
         if(§`"e§)
         {
            this.§0#G§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).addEventListener(UserProgressEvent.§!"z§,this.onUserProgressSaved);
            this.§=y§(_loc2_);
            _loc8_ = §@z§.§<"I§.§##k§(mLevelManager.currentLevel,§"A§.BIRD_BOT_1);
            _loc9_ = §@z§.§<"I§.§##k§(mLevelManager.currentLevel,§"A§.BIRD_BOT_2);
            §<"G§.§%"1§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §7!$§.§'"P§();
         }
         else
         {
            this.§<2§ = § #F§.§+!,§.§4#P§() as §=!7§;
            if(this.§<2§)
            {
               if(this.§<2§.§9#>§() > 0)
               {
                  this.§0#G§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).addEventListener(UserProgressEvent.§!"z§,this.onUserProgressSaved);
                  this.§=y§(_loc1_);
                  §7!$§.§'"P§();
               }
            }
         }
         (§;!w§.getItemByName("MovieClip_NewHighScoreBadge") as §"!A§).setVisibility(false);
         (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).mClip.gotoAndStop("UnLit");
         (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).mClip.gotoAndStop("UnLit");
         (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).mClip.gotoAndStop("UnLit");
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
         var _loc6_:* = this.§4#o§ == 0;
         var _loc7_:Boolean = this.§4#o§ < 3 && _loc5_ == 3;
         §3";§.§#"'§().§7g§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§(),§]$?§.§2#§.slingshot.§^"]§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§]$?§.§2#§ as §!P§).§-!3§(),§]$?§.§;r§.getScore(),_loc6_,_loc7_);
         if(this.§4#o§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§6#x§(§7!$§.§+!,§.levelIDs))
            {
               §3";§.§#"'§().§,h§(§7!$§.§+!,§.§@!v§.id);
            }
         }
         if(§`"e§ && this.§?!_§)
         {
            this.§?!_§.§3H§(_loc5_ - this.§4#o§);
         }
         this.initShareUI();
      }
      
      private function set §90§(param1:Boolean) : void
      {
         this.§!#$§ = param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §+$+§(param1:Boolean) : void
      {
         this.§]"D§ = param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §'!7§(param1:Boolean) : void
      {
         this.§-"v§ = param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §;!w§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §!#_§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§?!_§ || !this.§,1§)
         {
            return;
         }
         var cls:Class = §[a§.§8#k§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§,!I§)
         {
            this.§,!I§ = new Vector.<§@$-§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §;!w§.stage.stageWidth >> 1;
         startCoordinates.y = §;!w§.stage.stageHeight >> 1;
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
         var tween1:§@"§ = §6"W§.§+!,§.§9!n§(dsp,{
            "x":this.§,1§.x + (this.§,1§.width >> 1),
            "y":this.§,1§.y + (this.§,1§.height >> 1)
         },startCoordinates,1,§6"W§.§,$8§);
         var tween2:§@"§ = §6"W§.§+!,§.§9!n§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§@$-§ = §6"W§.§+!,§.§8$>§(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            §"#f§ = true;
         };
         starAnimTween.onStart = function():void
         {
            §;!w§.movieClip.addChild(dsp);
         };
         starAnimTween.§5z§ = true;
         this.§,!I§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§<#V§ = null;
         var _loc2_:Array = null;
         (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).mClip.gotoAndStop("Lit");
         if(!this.§!#$§)
         {
            §;!w§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            § b§.playSound("star_1_coins",§0$?§);
            §<"G§.§%!V§(§<"G§.§'#I§,§>#g§.§=-§,§,#7§);
            _loc1_ = new §<#V§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §,#7§;
            _loc1_.currency = "IVC";
            _loc1_.§]#=§ = §3";§.§5#E§;
            _loc1_.itemType = §>#g§.§=-§;
            _loc1_.§#!D§ = §>#g§.§=-§;
            _loc1_.level = §]$?§.§2#§.currentLevel.name;
            _loc1_.itemName = §>#g§.§=-§;
            _loc2_ = [_loc1_];
            §3";§.§#"'§().§7"Q§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§]#=§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§#!D§,_loc1_.§&$3§,_loc1_.currency,_loc1_.§>$%§);
            this.§+"8§ += §,#7§;
            §[!a§.setCoinsAmountText(this.§+"8§);
            §[!a§.animateGotCoins(§,#7§);
            this.§!#_§(0);
            return §>",§.§7!V§;
         }
         § b§.playSound("star_1_coins",§0$?§);
         return §>",§.§+!y§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§<#V§ = null;
         var _loc3_:Array = null;
         (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).mClip.gotoAndStop("Lit");
         if(!this.§]"D§)
         {
            §;!w§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§5C§ + §##I§;
            if(!this.§!#$§)
            {
               _loc1_ += §,#7§;
            }
            § b§.playSound("star_2_coins",§0$?§);
            §<"G§.§%!V§(§<"G§.§'#I§,§>#g§.§=-§,§##I§);
            _loc2_ = new §<#V§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §##I§;
            _loc2_.currency = "IVC";
            _loc2_.§]#=§ = §3";§.§5#E§;
            _loc2_.itemType = §>#g§.§=-§;
            _loc2_.§#!D§ = §>#g§.§=-§;
            _loc2_.level = §]$?§.§2#§.currentLevel.name;
            _loc2_.itemName = §>#g§.§=-§;
            _loc3_ = [_loc2_];
            §3";§.§#"'§().§7"Q§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§]#=§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§#!D§,_loc2_.§&$3§,_loc2_.currency,_loc2_.§>$%§);
            this.§+"8§ += §##I§;
            §[!a§.setCoinsAmountText(this.§+"8§);
            §[!a§.animateGotCoins(§##I§);
            this.§!#_§(1);
            return §>",§.§7!V§;
         }
         § b§.playSound("star_2_coins",§0$?§);
         return §>",§.§+!y§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§<#V§ = null;
         var _loc3_:Array = null;
         (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).mClip.gotoAndStop("Lit");
         if(!this.§-"v§)
         {
            §;!w§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§5C§ + §=T§;
            if(!this.§!#$§)
            {
               _loc1_ += §,#7§;
            }
            if(!this.§]"D§)
            {
               _loc1_ += §##I§;
            }
            § b§.playSound("star_3_coins",§0$?§);
            §<"G§.§%!V§(§<"G§.§'#I§,§>#g§.§=-§,§=T§);
            _loc2_ = new §<#V§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §=T§;
            _loc2_.currency = "IVC";
            _loc2_.§]#=§ = §3";§.§5#E§;
            _loc2_.itemType = §>#g§.§=-§;
            _loc2_.§#!D§ = §>#g§.§=-§;
            _loc2_.level = §]$?§.§2#§.currentLevel.name;
            _loc2_.itemName = §>#g§.§=-§;
            _loc3_ = [_loc2_];
            §3";§.§#"'§().§7"Q§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§]#=§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§#!D§,_loc2_.§&$3§,_loc2_.currency,_loc2_.§>$%§);
            this.§+"8§ += §=T§;
            §[!a§.setCoinsAmountText(this.§+"8§);
            §[!a§.animateGotCoins(§=T§);
            this.§!#_§(2);
            return §>",§.§7!V§;
         }
         § b§.playSound("star_3_coins",§0$?§);
         return §>",§.§+!y§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§1"r§ = null;
         var tournamentRules:§'#t§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var leagueOrderNumber:int = 0;
         var fbPixelEventName:String = null;
         var sentEvent:Boolean = false;
         var alreadySentEvents:Object = null;
         var name:String = null;
         var previousState:String = param1;
         this.§?!_§ = § #F§.§+!,§.§4#P§() as §6"Z§;
         if(this.§?!_§)
         {
            if(this.§?!_§.§0"S§ >= this.§?!_§.§<"X§ && !this.§?!_§.§%m§())
            {
               this.§?!_§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §7!$§.§+!,§.§="X§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§,#P§.activate(nextLevel);
         }
         this.§<2§ = § #F§.§+!,§.§4#P§() as §=!7§;
         if(this.§<2§)
         {
            if(this.§<2§.§9#>§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §;!w§.getItemByName(§0!7§) as §1"r§;
               tournamentRules = §7!$§.§+!,§.tournamentRules;
               brandName = tournamentRules.§"">§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = §]#0§.§+!,§.§!#r§(§=!7§.§""H§) + 1 + "";
               §7"U§.§7#m§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§;!w§.getItemByName("ItemDropMovieClip") as §"!A§).mClip;
               §7"U§.§7#m§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §;!w§.getItemByName("Hostess_CupCakes").visible = true;
               § b§.playSound("fortunewheel_block_remove",§ b§.§1#-§);
               §;!w§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §;!w§.getItemByName(§0!7§).setVisibility(false);
            }
         }
         else
         {
            §;!w§.getItemByName(§0!7§).setVisibility(false);
         }
         if(§4"s§.§+!,§.currentLeague())
         {
            leagueOrderNumber = §6#P§.§"$!§(§4"s§.§+!,§.currentLeague().id);
            if(leagueOrderNumber > -1)
            {
               fbPixelEventName = "join_tier_" + leagueOrderNumber;
               sentEvent = true;
               alreadySentEvents = §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§<"%§(§^!"§.§+"=§);
               for each(name in alreadySentEvents)
               {
                  if(name == fbPixelEventName)
                  {
                     sentEvent = false;
                  }
               }
               if(sentEvent)
               {
                  §7!b§.§7@§("trackFBPixelEvent",fbPixelEventName);
                  §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§+"=§,[fbPixelEventName]);
               }
            }
         }
         if(§7!$§.§+!,§.§!$#§())
         {
            §8"^§.§!#C§();
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §5"]§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§?# § = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§["5§ = §["5§(_loc1_);
         for each(_loc3_ in PosterPopup.§<#B§)
         {
            if(_loc2_.§!$8§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§]$?§.§;u§ as §@z§).§`L§.§3!4§();
               if(§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§@#D§.§,"4§,§5R§.TOP,_loc3_));
               §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§0#+§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§,#P§.update();
         this.§!$$§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §;!w§.getItemByName("Button_Menu").setVisibility(true);
         §;!w§.getItemByName("Button_Replay").setVisibility(true);
         §;!w§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §7!$§.§+!,§.§>";§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §;!w§.getItemByName("Button_NextLevel").setVisibility(true);
            §;!w§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §;!w§.getItemByName("Button_Menu").x = §<"#§[0];
            §;!w§.getItemByName("Button_Replay").x = §<"#§[1];
            §;!w§.getItemByName("Button_NextLevel").x = §<"#§[2];
         }
         else
         {
            §;!w§.getItemByName("Button_NextLevel").setVisibility(false);
            §;!w§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §;!w§.getItemByName("Button_Menu").x = §<"#§[0];
            §;!w§.getItemByName("Button_Replay").x = §<"#§[1];
            §;!w§.getItemByName("Button_NextLevel_Orange").x = §<"#§[2];
         }
         if(this.§?!_§)
         {
            if(!this.§,1§)
            {
               this.§!"X§ = this.§?!_§.§0"S§;
               this.§,#+§ = this.§?!_§.§-#&§();
               if(this.§!"X§ < this.§,#+§.starsNeeded)
               {
                  this.§[#s§(§[a§.§8#k§("ChestLocked" + this.§,#+§.ID));
                  this.§4#A§ = this.§,1§.getChildByName("TextField_Value") as TextField;
                  this.§4#A§.text = this.§!"X§ + "/" + this.§,#+§.starsNeeded;
                  this.§,1§.getChildByName("bgNormal").visible = false;
                  this.§,1§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§[#s§(§[a§.§8#k§("ChestClaimable" + this.§,#+§.ID));
                  this.§4#A§ = null;
               }
               this.§"#f§ = false;
               this.§,1§.addEventListener(MouseEvent.CLICK,this.§?§);
            }
         }
      }
      
      private function §!$$§() : void
      {
         if(this.§"#f§)
         {
            if(this.§!"X§ < this.§,#+§.starsNeeded && this.§!"X§ + 1 == this.§,#+§.starsNeeded)
            {
               this.§,1§.parent.removeChild(this.§,1§);
               this.§,1§ = null;
               this.§[#s§(§[a§.§8#k§("ChestClaimable" + this.§,#+§.ID));
               this.§4#A§ = null;
               § b§.playSound("ABF_gift_open_01",§ b§.§1#-§);
            }
            else
            {
               § b§.playSound("LeaguePromotionPuff",§ b§.§1#-§);
            }
            ++this.§!"X§;
            if(this.§4#A§)
            {
               this.§4#A§.text = this.§!"X§ + "/" + this.§,#+§.starsNeeded;
            }
            this.§"#f§ = false;
         }
      }
      
      private function §[#s§(param1:Class) : void
      {
         this.§,1§ = new param1();
         this.§^#&§ = this.§,1§.width + 16;
         this.§,1§.x = (§]$?§.§;u§ as §@z§).§8!;§.x - this.§^#&§;
         this.§,1§.y = 10;
         this.§,1§.addEventListener(MouseEvent.CLICK,this.§?§);
         §;!w§.movieClip.addChild(this.§,1§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§,1§)
         {
            _loc1_ = 1;
            if((§]$?§.§;u§ as §@z§).§ >§())
            {
               _loc1_ = §3"E§.§3$0§;
            }
            this.§,1§.scaleX = _loc1_;
            this.§,1§.scaleY = _loc1_;
            this.§,1§.x = (§]$?§.§;u§ as §@z§).§8!;§.x - this.§^#&§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§0#G§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §]#0§.§+!,§.§&$@§(_loc2_,true);
         }
         if(this.§<2§)
         {
            if(this.§<2§.§9#>§() > 0)
            {
               if(!§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(§=!7§.§""H§))
               {
                  this.§<2§.§#^§();
                  §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§0#+§,[§=!7§.§""H§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§0#G§)
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§7!$§.§+!,§.§!$#§())
               {
                  if(§7!$§.§+!,§.§&"%§() <= 0)
                  {
                     §3#§(§8"^§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§,#P§.§>M§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§,#P§.§5#>§)
                  {
                     this.§,#P§.§`!w§();
                  }
               }
               break;
            case "BRAG":
               §7!b§.addCallback("permissionRequestComplete",this.§0!o§);
               §7!b§.§7@§("askForPublishStreamPermission");
               this.§=w§(true);
               §>#P§();
               break;
            case "SKIP_SHARE":
               this.§=w§(false);
               §>#P§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               § !8§.§3#Q§();
               break;
            case "REPLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               if(§7!$§.§+!,§.§!$#§())
               {
                  if(§7!$§.§+!,§.§&"%§() <= 0)
                  {
                     §3#§(§8"^§.STATE_NAME);
                  }
                  else
                  {
                     §3#§(this.getStateLevelLoadState());
                  }
               }
               else
               {
                  §3#§(this.getStateLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §?§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         § !8§.§3#Q§();
         §3";§.§#"'§().§4#q§(§3";§.§4#N§,this.§?!_§.§%m§());
      }
      
      protected function §0!o§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         §7!b§.§&#&§("permissionRequestComplete",this.§0!o§);
         if(param1 == "true" && this.§7!=§)
         {
            switch(this.§7!=§.shareModeId)
            {
               case §;$-§:
                  _loc2_ = this.§7!=§.friendId.substr(0,this.§7!=§.friendId.indexOf("-"));
                  _loc3_ = §8$%§(mLevelManager).§0"<§(this.§7!=§.friendId);
                  §7!b§.§7@§("shareBrag",this.§7!=§.friendId,this.§7!=§.bragPhotoId,this.§7!=§.bragTitle,this.§7!=§.bragText,this.§7!=§.bragCaption,this.§7!=§.levelId);
            }
         }
      }
      
      protected function §=w§(param1:Boolean) : void
      {
         switch(this.§7!=§.shareModeId)
         {
            case §;$-§:
               if(param1)
               {
                  §<"G§.§?!<§(§3";§.§'$=§);
                  §3";§.§#"'§().§8#5§(§3";§.§'$=§,§3";§.§-";§);
               }
               else
               {
                  §<"G§.§1"`§(§3";§.§'$=§);
                  §3";§.§#"'§().§8#5§(§3";§.§'$=§,§3";§.§8"=§);
               }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§@$-§ = null;
         super.deActivate();
         this.§,#P§.deactivate();
         if(this.§,1§)
         {
            this.§,1§.parent.removeChild(this.§,1§);
            this.§,1§ = null;
            this.§,#+§ = null;
         }
         if(this.§,!I§)
         {
            for each(_loc1_ in this.§,!I§)
            {
               if(_loc1_)
               {
                  _loc1_.§0"D§();
               }
            }
            this.§,!I§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §@<§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §=$3§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return § !8§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §"!]§ = true;
         this.§7!=§ = new Object();
         if(this.§'"x§())
         {
            §;!w§.getItemByName("ButtonBrag").setVisibility(true);
            §;!w§.getItemByName("ButtonSkipShare").setVisibility(true);
            §["b§();
            §!Y§();
         }
      }
      
      protected function §'"x§() : Boolean
      {
         var _loc4_:§[!V§ = null;
         if(§7!$§.§+!,§.§!$#§())
         {
            return false;
         }
         var _loc1_:§[!V§ = null;
         var _loc2_:Array = (§]$?§.§;u§ as §@z§).§8!;§.§1#]§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§#"b§(_loc4_) && _loc4_.§0#y§ > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.§0#y§;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§7`§;
         (_loc5_ = §;!w§.getItemByName("Textfield_SharingText") as §7`§).setVisibility(true);
         §7"U§.§+$5§(_loc5_.§%!8§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§?$3§ = new §?$3§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).avatarString,false,§?!s§.§'!n§);
         var _loc7_:MovieClip;
         (_loc7_ = (§;!w§.getItemByName("BragFramePlayer") as §"!A§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§;!w§.getItemByName("BragFramePlayer") as §"!A§).setVisibility(true);
         var _loc8_:§?$3§ = new §?$3§(_loc1_.userId,_loc1_.avatarString,false,§?!s§.§'!n§);
         var _loc9_:MovieClip;
         (_loc9_ = (§;!w§.getItemByName("BragFrameFriend") as §"!A§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§;!w§.getItemByName("BragFrameFriend") as §"!A§).setVisibility(true);
         this.§7!=§.shareModeId = §;$-§;
         this.§7!=§.friendId = _loc1_.userId;
         this.§7!=§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§7!=§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName + " overtakes " + _loc1_.userName + "!";
         this.§7!=§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName + " just beat " + _loc1_.userName + " in level " + §7!$§.§+!,§.§%#'§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§7!=§.bragCaption = "CLICK TO JOIN THEM!";
         this.§7!=§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §8$%§(mLevelManager).§0"<§(mLevelManager.currentLevel);
         this.§7!=§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      private function §#"b§(param1:§[!V§) : Boolean
      {
         return §"A§.§<$!§(param1.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(§7!$§.§+!,§.§@!v§)
         {
            return §7!$§.§+!,§.§@!v§.id;
         }
         return -1;
      }
   }
}
