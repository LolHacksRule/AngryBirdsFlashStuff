package §!!t§
{
   import § !D§.§4B§;
   import §!!T§.§1"9§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§=$&§;
   import §"$=§.§>"?§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §'#f§.§!!"§;
   import §'#f§.§0#<§;
   import §'#g§.§&"Y§;
   import §+"u§.§6!9§;
   import §+"u§.§># §;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §-!"§.§7z§;
   import §3"G§.§16§;
   import §3=§.§5r§;
   import §3=§.§6"H§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §6§.§'#n§;
   import §6§.§6$'§;
   import §6§.§]%§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §=#§.§%#y§;
   import §=#§.§0"V§;
   import §=#§.§1!"§;
   import §>"9§.§[#%§;
   import §>#O§.§'##§;
   import §?!N§.§%#§;
   import §?!N§.PosterPopup;
   import §[";§.§8!n§;
   import §]"'§.§#$D§;
   import §]"'§.§+!!§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import §`D§.UserProgressEvent;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §<!x§ extends §5r§
   {
      
      public static const §[#B§:int = 2;
      
      public static const §>!u§:int = 4;
      
      public static const §<!o§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §1w§:int = 0;
      
      private static const §7!^§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §]"[§:Object;
      
      private var §6!]§:Boolean;
      
      private var §5#=§:Boolean;
      
      private var §2!K§:int;
      
      private var §0L§:Boolean = false;
      
      private var §,"T§:Boolean = false;
      
      private var §3",§:Boolean = false;
      
      private var §,#h§:int;
      
      private var §@!I§:§># §;
      
      private var §=O§:int;
      
      private var §0b§:§!!"§;
      
      private var §'#=§:§8!n§;
      
      private var §-T§:§0#<§;
      
      private var §-#I§:DisplayObjectContainer;
      
      private var §5"L§:Number;
      
      private var §<o§:TextField;
      
      private var §5#u§:int;
      
      private var § M§:Boolean;
      
      private var §>#e§:Vector.<§]%§>;
      
      public function §<!x§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §"'§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@!I§ = new §># §(this,§"S§(§<"`§.getItemByName("Button_NextLevel")),§^"C§.§?q§,§@"%§(AngryBirdsBase.singleton.dataModel).§,H§,§@"%§(AngryBirdsBase.singleton.dataModel).§8!8§);
      }
      
      protected function §@",§(param1:int) : void
      {
         this.§,#h§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§9"m§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§%"T§.§>$<§ as §'"a§).§]!P§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §@#c§.§?q§.§7""§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §^"C§.§?q§.§"!@§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §,-§).previousLevel = mLevelManager.currentLevel;
         }
         §%D§(this.getCutSceneState());
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§!"d§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §<"`§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§=O§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§var§(mLevelManager.currentLevel);
         var _loc2_:int = §%"T§.§+"M§.getScore();
         §4c§ = _loc2_ > _loc1_;
         this.§6!]§ = _loc1_ == 0;
         this.§2!K§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         §93§(_loc2_,_loc1_);
         this.§"!&§ = false;
         this.§]#;§ = false;
         this.§!#[§ = false;
         switch(this.§2!K§)
         {
            case 0:
               break;
            case 1:
               this.§"!&§ = true;
               break;
            case 2:
               this.§"!&§ = true;
               this.§]#;§ = true;
               break;
            case 3:
               this.§"!&§ = true;
               this.§]#;§ = true;
               this.§!#[§ = true;
         }
         §8s§();
         this.§5#=§ = true;
         if(§4c§)
         {
            this.§5#=§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).addEventListener(UserProgressEvent.§'$5§,this.onUserProgressSaved);
            this.§@",§(_loc2_);
            _loc8_ = §'"a§.§`!R§.§?#W§(mLevelManager.currentLevel,§0"V§.BIRD_BOT_1);
            _loc9_ = §'"a§.§`!R§.§?#W§(mLevelManager.currentLevel,§0"V§.BIRD_BOT_2);
            §5"w§.§5#Z§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §^"C§.§-"T§();
         }
         else
         {
            this.§'#=§ = §1"9§.§?q§.§[!8§() as §8!n§;
            if(this.§'#=§)
            {
               if(this.§'#=§.§'-§() > 0)
               {
                  this.§5#=§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).addEventListener(UserProgressEvent.§'$5§,this.onUserProgressSaved);
                  this.§@",§(_loc1_);
                  §^"C§.§-"T§();
               }
            }
         }
         (§<"`§.getItemByName("MovieClip_NewHighScoreBadge") as §>#8§).setVisibility(false);
         (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).mClip.gotoAndStop("UnLit");
         (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).mClip.gotoAndStop("UnLit");
         (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).mClip.gotoAndStop("UnLit");
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
         var _loc6_:* = this.§2!K§ == 0;
         var _loc7_:Boolean = this.§2!K§ < 3 && _loc5_ == 3;
         §+$A§.§@"i§().§>e§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§(),§%"T§.§;`§.slingshot.§@$B§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§%"T§.§;`§ as §4B§).§ #O§(),§%"T§.§+"M§.getScore(),_loc6_,_loc7_);
         if(this.§2!K§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§"!p§(§^"C§.§?q§.levelIDs))
            {
               §+$A§.§@"i§().§"c§(§^"C§.§?q§.§4#-§.id);
            }
         }
         if(§4c§ && this.§0b§)
         {
            this.§0b§.§9#x§(_loc5_ - this.§2!K§);
         }
         this.initShareUI();
      }
      
      private function set §"!&§(param1:Boolean) : void
      {
         this.§0L§ = param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §]#;§(param1:Boolean) : void
      {
         this.§,"T§ = param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §!#[§(param1:Boolean) : void
      {
         this.§3",§ = param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §<"`§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §^5§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§0b§ || !this.§-#I§)
         {
            return;
         }
         var cls:Class = §2"O§.§`>§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§>#e§)
         {
            this.§>#e§ = new Vector.<§]%§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §<"`§.stage.stageWidth >> 1;
         startCoordinates.y = §<"`§.stage.stageHeight >> 1;
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
         var tween1:§6$'§ = §'#n§.§?q§.§9!N§(dsp,{
            "x":this.§-#I§.x + (this.§-#I§.width >> 1),
            "y":this.§-#I§.y + (this.§-#I§.height >> 1)
         },startCoordinates,1,§'#n§.§[i§);
         var tween2:§6$'§ = §'#n§.§?q§.§9!N§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§]%§ = §'#n§.§?q§.§set §(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            § M§ = true;
         };
         starAnimTween.onStart = function():void
         {
            §<"`§.movieClip.addChild(dsp);
         };
         starAnimTween.§-#u§ = true;
         this.§>#e§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§7z§ = null;
         (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).mClip.gotoAndStop("Lit");
         if(!this.§0L§)
         {
            §<"`§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            §[#%§.playSound("star_1_coins",§-",§);
            §5"w§.§%!%§(§5"w§.§4!^§,§>I§.§ !C§,§[#B§);
            _loc1_ = new §7z§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §[#B§;
            _loc1_.currency = "IVC";
            _loc1_.§+#;§ = §+$A§.§]!q§;
            _loc1_.itemType = §>I§.§ !C§;
            _loc1_.§6"d§ = §>I§.§ !C§;
            _loc1_.level = §%"T§.§;`§.currentLevel.name;
            _loc1_.itemName = §>I§.§ !C§;
            [_loc1_];
            §+$A§.§@"i§().§%!+§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§+#;§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§6"d§,_loc1_.§#!z§,_loc1_.currency,_loc1_.§-!G§);
            this.§=O§ += §[#B§;
            § !Z§.setCoinsAmountText(this.§=O§);
            § !Z§.animateGotCoins(§[#B§);
            this.§^5§(0);
            return §'##§.§?"9§;
         }
         §[#%§.playSound("star_1_coins",§-",§);
         return §'##§.§#R§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§7z§ = null;
         (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).mClip.gotoAndStop("Lit");
         if(!this.§,"T§)
         {
            §<"`§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§,#h§ + §>!u§;
            if(!this.§0L§)
            {
               _loc1_ += §[#B§;
            }
            §[#%§.playSound("star_2_coins",§-",§);
            §5"w§.§%!%§(§5"w§.§4!^§,§>I§.§ !C§,§>!u§);
            _loc2_ = new §7z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §>!u§;
            _loc2_.currency = "IVC";
            _loc2_.§+#;§ = §+$A§.§]!q§;
            _loc2_.itemType = §>I§.§ !C§;
            _loc2_.§6"d§ = §>I§.§ !C§;
            _loc2_.level = §%"T§.§;`§.currentLevel.name;
            _loc2_.itemName = §>I§.§ !C§;
            [_loc2_];
            §+$A§.§@"i§().§%!+§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§+#;§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§6"d§,_loc2_.§#!z§,_loc2_.currency,_loc2_.§-!G§);
            this.§=O§ += §>!u§;
            § !Z§.setCoinsAmountText(this.§=O§);
            § !Z§.animateGotCoins(§>!u§);
            this.§^5§(1);
            return §'##§.§?"9§;
         }
         §[#%§.playSound("star_2_coins",§-",§);
         return §'##§.§#R§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§7z§ = null;
         (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).mClip.gotoAndStop("Lit");
         if(!this.§3",§)
         {
            §<"`§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§,#h§ + §<!o§;
            if(!this.§0L§)
            {
               _loc1_ += §[#B§;
            }
            if(!this.§,"T§)
            {
               _loc1_ += §>!u§;
            }
            §[#%§.playSound("star_3_coins",§-",§);
            §5"w§.§%!%§(§5"w§.§4!^§,§>I§.§ !C§,§<!o§);
            _loc2_ = new §7z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §<!o§;
            _loc2_.currency = "IVC";
            _loc2_.§+#;§ = §+$A§.§]!q§;
            _loc2_.itemType = §>I§.§ !C§;
            _loc2_.§6"d§ = §>I§.§ !C§;
            _loc2_.level = §%"T§.§;`§.currentLevel.name;
            _loc2_.itemName = §>I§.§ !C§;
            [_loc2_];
            §+$A§.§@"i§().§%!+§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§+#;§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§6"d§,_loc2_.§#!z§,_loc2_.currency,_loc2_.§-!G§);
            this.§=O§ += §<!o§;
            § !Z§.setCoinsAmountText(this.§=O§);
            § !Z§.animateGotCoins(§<!o§);
            this.§^5§(2);
            return §'##§.§?"9§;
         }
         §[#%§.playSound("star_3_coins",§-",§);
         return §'##§.§#R§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§"S§ = null;
         var tournamentRules:§6!9§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var leagueOrderNumber:int = 0;
         var fbPixelEventName:String = null;
         var sentEvent:Boolean = false;
         var alreadySentEvents:Object = null;
         var name:String = null;
         var previousState:String = param1;
         this.§0b§ = §1"9§.§?q§.§[!8§() as §!!"§;
         if(this.§0b§)
         {
            if(this.§0b§.§>$A§ >= this.§0b§.§]"#§ && !this.§0b§.§[-§())
            {
               this.§0b§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §^"C§.§?q§.§`-§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§@!I§.activate(nextLevel);
         }
         this.§'#=§ = §1"9§.§?q§.§[!8§() as §8!n§;
         if(this.§'#=§)
         {
            if(this.§'#=§.§'-§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §<"`§.getItemByName(§7!^§) as §"S§;
               tournamentRules = §^"C§.§?q§.tournamentRules;
               brandName = tournamentRules.§9d§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = §#$D§.§?q§.§7!N§(§8!n§.§6'§) + 1 + "";
               §&!b§.§<#n§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§<"`§.getItemByName("ItemDropMovieClip") as §>#8§).mClip;
               §&!b§.§<#n§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §<"`§.getItemByName("Hostess_CupCakes").visible = true;
               §[#%§.playSound("fortunewheel_block_remove",§[#%§.§0"f§);
               §<"`§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §<"`§.getItemByName(§7!^§).setVisibility(false);
            }
         }
         else
         {
            §<"`§.getItemByName(§7!^§).setVisibility(false);
         }
         if(§@#c§.§?q§.currentLeague())
         {
            leagueOrderNumber = §[!k§.§"$C§(§@#c§.§?q§.currentLeague().id);
            if(leagueOrderNumber > -1)
            {
               fbPixelEventName = "join_tier_" + leagueOrderNumber;
               sentEvent = true;
               alreadySentEvents = §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§7#Y§(§&"Y§.§"§);
               for each(name in alreadySentEvents)
               {
                  if(name == fbPixelEventName)
                  {
                     sentEvent = false;
                  }
               }
               if(sentEvent)
               {
                  §@"F§.§^$#§("trackFBPixelEvent",fbPixelEventName);
                  §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§"§,[fbPixelEventName]);
               }
            }
         }
         if(§^"C§.§?q§.§&2§())
         {
            §9$A§.§`o§();
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §,$"§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§=$&§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§>"?§ = §>"?§(_loc1_);
         for each(_loc3_ in PosterPopup.§;!G§)
         {
            if(_loc2_.§5!Z§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§%"T§.§>$<§ as §'"a§).§ !g§.§[5§();
               if(§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§%#§.§3t§,§9#5§.TOP,_loc3_));
               §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§&#G§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§@!I§.update();
         this.§8#G§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §<"`§.getItemByName("Button_Menu").setVisibility(true);
         §<"`§.getItemByName("Button_Replay").setVisibility(true);
         §<"`§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §^"C§.§?q§.§"!@§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §<"`§.getItemByName("Button_NextLevel").setVisibility(true);
            §<"`§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §<"`§.getItemByName("Button_Menu").x = §]#G§[0];
            §<"`§.getItemByName("Button_Replay").x = §]#G§[1];
            §<"`§.getItemByName("Button_NextLevel").x = §]#G§[2];
         }
         else
         {
            §<"`§.getItemByName("Button_NextLevel").setVisibility(false);
            §<"`§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §<"`§.getItemByName("Button_Menu").x = §]#G§[0];
            §<"`§.getItemByName("Button_Replay").x = §]#G§[1];
            §<"`§.getItemByName("Button_NextLevel_Orange").x = §]#G§[2];
         }
         if(this.§0b§)
         {
            if(!this.§-#I§)
            {
               this.§5#u§ = this.§0b§.§>$A§;
               this.§-T§ = this.§0b§.§1"`§();
               if(this.§5#u§ < this.§-T§.starsNeeded)
               {
                  this.§7e§(§2"O§.§`>§("ChestLocked" + this.§-T§.ID));
                  this.§<o§ = this.§-#I§.getChildByName("TextField_Value") as TextField;
                  this.§<o§.text = this.§5#u§ + "/" + this.§-T§.starsNeeded;
                  this.§-#I§.getChildByName("bgNormal").visible = false;
                  this.§-#I§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§7e§(§2"O§.§`>§("ChestClaimable" + this.§-T§.ID));
                  this.§<o§ = null;
               }
               this.§ M§ = false;
               this.§-#I§.addEventListener(MouseEvent.CLICK,this.§2!J§);
            }
         }
      }
      
      private function §8#G§() : void
      {
         if(this.§ M§)
         {
            if(this.§5#u§ < this.§-T§.starsNeeded && this.§5#u§ + 1 == this.§-T§.starsNeeded)
            {
               this.§-#I§.parent.removeChild(this.§-#I§);
               this.§-#I§ = null;
               this.§7e§(§2"O§.§`>§("ChestClaimable" + this.§-T§.ID));
               this.§<o§ = null;
               §[#%§.playSound("ABF_gift_open_01",§[#%§.§0"f§);
            }
            else
            {
               §[#%§.playSound("LeaguePromotionPuff",§[#%§.§0"f§);
            }
            ++this.§5#u§;
            if(this.§<o§)
            {
               this.§<o§.text = this.§5#u§ + "/" + this.§-T§.starsNeeded;
            }
            this.§ M§ = false;
         }
      }
      
      private function §7e§(param1:Class) : void
      {
         this.§-#I§ = new param1();
         this.§5"L§ = this.§-#I§.width + 16;
         this.§-#I§.x = (§%"T§.§>$<§ as §'"a§).§1#b§.x - this.§5"L§;
         this.§-#I§.y = 10;
         this.§-#I§.addEventListener(MouseEvent.CLICK,this.§2!J§);
         §<"`§.movieClip.addChild(this.§-#I§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§-#I§)
         {
            _loc1_ = 1;
            if((§%"T§.§>$<§ as §'"a§).§?$9§())
            {
               _loc1_ = §6"H§.§!d§;
            }
            this.§-#I§.scaleX = _loc1_;
            this.§-#I§.scaleY = _loc1_;
            this.§-#I§.x = (§%"T§.§>$<§ as §'"a§).§1#b§.x - this.§5"L§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§5#=§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §#$D§.§?q§.§["a§(_loc2_,true);
         }
         if(this.§'#=§)
         {
            if(this.§'#=§.§'-§() > 0)
            {
               if(!§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(§8!n§.§6'§))
               {
                  this.§'#=§.§,"&§();
                  §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§&#G§,[§8!n§.§6'§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§5#=§)
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§^"C§.§?q§.§&2§())
               {
                  if(§^"C§.§?q§.§&"C§() <= 0)
                  {
                     §%D§(§9$A§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§@!I§.§^#u§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§@!I§.§^"3§)
                  {
                     this.§@!I§.§ "i§();
                  }
               }
               break;
            case "BRAG":
               §@"F§.addCallback("permissionRequestComplete",this.§4"A§);
               §@"F§.§^$#§("askForPublishStreamPermission");
               this.§-H§(true);
               §4J§();
               break;
            case "SKIP_SHARE":
               this.§-H§(false);
               §4J§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               §'8§.§2!H§();
               break;
            case "REPLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               if(§^"C§.§?q§.§&2§())
               {
                  if(§^"C§.§?q§.§&"C§() <= 0)
                  {
                     §%D§(§9$A§.STATE_NAME);
                  }
                  else
                  {
                     §%D§(this.getStateLevelLoadState());
                  }
               }
               else
               {
                  §%D§(this.getStateLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §2!J§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         §'8§.§2!H§();
         §+$A§.§@"i§().§5!-§(§+$A§.§2C§,this.§0b§.§[-§());
      }
      
      protected function §4"A§(param1:String) : void
      {
         §@"F§.§=F§("permissionRequestComplete",this.§4"A§);
         if(param1 == "true" && this.§]"[§)
         {
            switch(this.§]"[§.shareModeId)
            {
               case §1w§:
                  this.§]"[§.friendId.substr(0,this.§]"[§.friendId.indexOf("-"));
                  §,-§(mLevelManager).§#6§(this.§]"[§.friendId);
                  §@"F§.§^$#§("shareBrag",this.§]"[§.friendId,this.§]"[§.bragPhotoId,this.§]"[§.bragTitle,this.§]"[§.bragText,this.§]"[§.bragCaption,this.§]"[§.levelId);
            }
         }
      }
      
      protected function §-H§(param1:Boolean) : void
      {
         switch(this.§]"[§.shareModeId)
         {
            case §1w§:
               if(param1)
               {
                  §5"w§.§,i§(§+$A§.§""G§);
                  §+$A§.§@"i§().§8!F§(§+$A§.§""G§,§+$A§.§>1§);
               }
               else
               {
                  §5"w§.§;#5§(§+$A§.§""G§);
                  §+$A§.§@"i§().§8!F§(§+$A§.§""G§,§+$A§.§#!]§);
               }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§]%§ = null;
         super.deActivate();
         this.§@!I§.deactivate();
         if(this.§-#I§)
         {
            this.§-#I§.parent.removeChild(this.§-#I§);
            this.§-#I§ = null;
            this.§-T§ = null;
         }
         if(this.§>#e§)
         {
            for each(_loc1_ in this.§>#e§)
            {
               if(_loc1_)
               {
                  _loc1_.§6X§();
               }
            }
            this.§>#e§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §1!M§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §8!k§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §'8§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §"'§ = true;
         this.§]"[§ = new Object();
         if(this.§2!k§())
         {
            §<"`§.getItemByName("ButtonBrag").setVisibility(true);
            §<"`§.getItemByName("ButtonSkipShare").setVisibility(true);
            §5!T§();
            §!"E§();
         }
      }
      
      protected function §2!k§() : Boolean
      {
         var _loc4_:§+!!§ = null;
         if(§^"C§.§?q§.§&2§())
         {
            return false;
         }
         var _loc1_:§+!!§ = null;
         var _loc2_:Array = (§%"T§.§>$<§ as §'"a§).§1#b§.§ §();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§[!F§(_loc4_) && _loc4_.§>"t§ > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.§>"t§;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§-#j§;
         (_loc5_ = §<"`§.getItemByName("Textfield_SharingText") as §-#j§).setVisibility(true);
         §&!b§.§9G§(_loc5_.§^g§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§%#y§ = new §%#y§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).avatarString,false,§1!"§.§+$=§);
         var _loc7_:MovieClip;
         (_loc7_ = (§<"`§.getItemByName("BragFramePlayer") as §>#8§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§<"`§.getItemByName("BragFramePlayer") as §>#8§).setVisibility(true);
         var _loc8_:§%#y§ = new §%#y§(_loc1_.userId,_loc1_.avatarString,false,§1!"§.§+$=§);
         var _loc9_:MovieClip;
         (_loc9_ = (§<"`§.getItemByName("BragFrameFriend") as §>#8§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§<"`§.getItemByName("BragFrameFriend") as §>#8§).setVisibility(true);
         this.§]"[§.shareModeId = §1w§;
         this.§]"[§.friendId = _loc1_.userId;
         this.§]"[§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§]"[§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName + " overtakes " + _loc1_.userName + "!";
         this.§]"[§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName + " just beat " + _loc1_.userName + " in level " + §^"C§.§?q§.§%!4§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§]"[§.bragCaption = "CLICK TO JOIN THEM!";
         this.§]"[§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §,-§(mLevelManager).§#6§(mLevelManager.currentLevel);
         this.§]"[§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      private function §[!F§(param1:§+!!§) : Boolean
      {
         return §0"V§.§5#$§(param1.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(§^"C§.§?q§.§4#-§)
         {
            return §^"C§.§?q§.§4#-§.id;
         }
         return -1;
      }
   }
}
