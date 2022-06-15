package §3+§
{
   import § !j§.§4#c§;
   import § §.§[$3§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §!#C§.§;!$§;
   import §!#C§.§null§;
   import §"!n§.§;"x§;
   import §"z§.Wallet;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import §&$3§.§7$C§;
   import §&n§.§]"%§;
   import §+"s§.§7"D§;
   import §+"s§.§>#O§;
   import §,!Q§.§6"n§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §,"v§.§^!b§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §2";§.§0@§;
   import §2";§.§95§;
   import §5"t§.§7"Y§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §<!r§.§]#Q§;
   import §<!r§.§]_§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.PosterPopup;
   import §?!a§.§-=§;
   import §?!a§.§2!-§;
   import §?!a§.§6#b§;
   import §]C§.§ !+§;
   import §^"H§.UserProgressEvent;
   import §`"3§.§^!Z§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §`o§ extends §0@§
   {
      
      public static const §`!F§:int = 2;
      
      public static const §>!V§:int = 4;
      
      public static const §2A§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §,j§:int = 0;
      
      private static const §#"7§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §&"t§:Object;
      
      private var §1$&§:Boolean;
      
      private var §]!O§:Boolean;
      
      private var §>#7§:int;
      
      private var §>[§:Boolean = false;
      
      private var §6" §:Boolean = false;
      
      private var §2"'§:Boolean = false;
      
      private var §,#G§:int;
      
      private var §[#m§:§]#Q§;
      
      private var §,#Z§:int;
      
      private var §+G§:§>#O§;
      
      private var §^#D§:§]"%§;
      
      private var §9!j§:§7"D§;
      
      private var §!!J§:DisplayObjectContainer;
      
      private var §`#>§:Number;
      
      private var §7Q§:TextField;
      
      private var §>!8§:int;
      
      private var §;#;§:Boolean;
      
      private var §<$B§:Vector.<§7$C§>;
      
      public function §`o§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §`!O§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[#m§ = new §]#Q§(this,§ !>§(§[$5§.getItemByName("Button_NextLevel")),§'##§.§`"H§,§4!Q§(AngryBirdsBase.singleton.dataModel).§="N§,§4!Q§(AngryBirdsBase.singleton.dataModel).§1W§);
      }
      
      protected function §=!n§(param1:int) : void
      {
         this.§,#G§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§'!0§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§7n§.§-$<§ as § #v§).§4#%§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §<$2§.§`"H§.§>" §(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §'##§.§`"H§.§>Q§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §;#A§).previousLevel = mLevelManager.currentLevel;
         }
         §1!L§(this.getCutSceneState());
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§2"5§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §[$5§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§,#Z§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§ P§(mLevelManager.currentLevel);
         var _loc2_:int = §7n§.§ "'§.getScore();
         §9"#§ = _loc2_ > _loc1_;
         this.§1$&§ = _loc1_ == 0;
         this.§>#7§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         §]"i§(_loc2_,_loc1_);
         this.§<#V§ = false;
         this.§9"G§ = false;
         this.§;"A§ = false;
         switch(this.§>#7§)
         {
            case 0:
               break;
            case 1:
               this.§<#V§ = true;
               break;
            case 2:
               this.§<#V§ = true;
               this.§9"G§ = true;
               break;
            case 3:
               this.§<#V§ = true;
               this.§9"G§ = true;
               this.§;"A§ = true;
         }
         §7#H§();
         this.§]!O§ = true;
         if(§9"#§)
         {
            this.§]!O§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).addEventListener(UserProgressEvent.§[$$§,this.onUserProgressSaved);
            this.§=!n§(_loc2_);
            _loc8_ = § #v§.§,"§.§5!0§(mLevelManager.currentLevel,§2!-§.BIRD_BOT_1);
            _loc9_ = § #v§.§,"§.§5!0§(mLevelManager.currentLevel,§2!-§.BIRD_BOT_2);
            §0I§.§2"$§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §'##§.§0!V§();
         }
         else
         {
            this.§^#D§ = §7"L§.§`"H§.§9'§() as §]"%§;
            if(this.§^#D§)
            {
               if(this.§^#D§.§;$,§() > 0)
               {
                  this.§]!O§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).addEventListener(UserProgressEvent.§[$$§,this.onUserProgressSaved);
                  this.§=!n§(_loc1_);
                  §'##§.§0!V§();
               }
            }
         }
         (§[$5§.getItemByName("MovieClip_NewHighScoreBadge") as §'!`§).setVisibility(false);
         (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).mClip.gotoAndStop("UnLit");
         (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).mClip.gotoAndStop("UnLit");
         (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).mClip.gotoAndStop("UnLit");
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
         var _loc6_:* = this.§>#7§ == 0;
         var _loc7_:Boolean = this.§>#7§ < 3 && _loc5_ == 3;
         §!!K§.§%#S§().§'D§(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§(),§7n§.§6#K§.slingshot.§=!q§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§7n§.§6#K§ as §"#1§).§7$7§(),§7n§.§ "'§.getScore(),_loc6_,_loc7_);
         if(this.§>#7§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§!#B§(§'##§.§`"H§.levelIDs))
            {
               §!!K§.§%#S§().§[s§(§'##§.§`"H§.§;#Q§.id);
            }
         }
         if(§9"#§ && this.§+G§)
         {
            this.§+G§.§6"M§(_loc5_ - this.§>#7§);
         }
         this.initShareUI();
      }
      
      private function set §<#V§(param1:Boolean) : void
      {
         this.§>[§ = param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §9"G§(param1:Boolean) : void
      {
         this.§6" § = param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §;"A§(param1:Boolean) : void
      {
         this.§2"'§ = param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §[$5§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §8$>§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§+G§ || !this.§!!J§)
         {
            return;
         }
         var cls:Class = §6$A§.§1!m§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§<$B§)
         {
            this.§<$B§ = new Vector.<§7$C§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §[$5§.stage.stageWidth >> 1;
         startCoordinates.y = §[$5§.stage.stageHeight >> 1;
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
         var tween1:§0#m§ = §"!&§.§`"H§.§1"W§(dsp,{
            "x":this.§!!J§.x + (this.§!!J§.width >> 1),
            "y":this.§!!J§.y + (this.§!!J§.height >> 1)
         },startCoordinates,1,§"!&§.§%# §);
         var tween2:§0#m§ = §"!&§.§`"H§.§1"W§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§7$C§ = §"!&§.§`"H§.§;#r§(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            §;#;§ = true;
         };
         starAnimTween.onStart = function():void
         {
            §[$5§.movieClip.addChild(dsp);
         };
         starAnimTween.§=F§ = true;
         this.§<$B§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§^!Z§ = null;
         var _loc2_:Array = null;
         (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).mClip.gotoAndStop("Lit");
         if(!this.§>[§)
         {
            §[$5§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            §3Z§.playSound("star_1_coins",§0"M§);
            §0I§.§^!L§(§0I§.§]B§,§null§.§%l§,§`!F§);
            _loc1_ = new §^!Z§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §`!F§;
            _loc1_.currency = "IVC";
            _loc1_.§`"x§ = §!!K§.§9!t§;
            _loc1_.itemType = §null§.§%l§;
            _loc1_.§'$,§ = §null§.§%l§;
            _loc1_.level = §7n§.§6#K§.currentLevel.name;
            _loc1_.itemName = §null§.§%l§;
            _loc2_ = [_loc1_];
            §!!K§.§%#S§().§%!D§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§`"x§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§'$,§,_loc1_.§%#&§,_loc1_.currency,_loc1_.§#Z§);
            this.§,#Z§ += §`!F§;
            §#"F§.setCoinsAmountText(this.§,#Z§);
            §#"F§.animateGotCoins(§`!F§);
            this.§8$>§(0);
            return §7"Y§.§ !]§;
         }
         §3Z§.playSound("star_1_coins",§0"M§);
         return §7"Y§.§^#N§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§^!Z§ = null;
         var _loc3_:Array = null;
         (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).mClip.gotoAndStop("Lit");
         if(!this.§6" §)
         {
            §[$5§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§,#G§ + §>!V§;
            if(!this.§>[§)
            {
               _loc1_ += §`!F§;
            }
            §3Z§.playSound("star_2_coins",§0"M§);
            §0I§.§^!L§(§0I§.§]B§,§null§.§%l§,§>!V§);
            _loc2_ = new §^!Z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §>!V§;
            _loc2_.currency = "IVC";
            _loc2_.§`"x§ = §!!K§.§9!t§;
            _loc2_.itemType = §null§.§%l§;
            _loc2_.§'$,§ = §null§.§%l§;
            _loc2_.level = §7n§.§6#K§.currentLevel.name;
            _loc2_.itemName = §null§.§%l§;
            _loc3_ = [_loc2_];
            §!!K§.§%#S§().§%!D§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§`"x§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§'$,§,_loc2_.§%#&§,_loc2_.currency,_loc2_.§#Z§);
            this.§,#Z§ += §>!V§;
            §#"F§.setCoinsAmountText(this.§,#Z§);
            §#"F§.animateGotCoins(§>!V§);
            this.§8$>§(1);
            return §7"Y§.§ !]§;
         }
         §3Z§.playSound("star_2_coins",§0"M§);
         return §7"Y§.§^#N§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§^!Z§ = null;
         var _loc3_:Array = null;
         (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).mClip.gotoAndStop("Lit");
         if(!this.§2"'§)
         {
            §[$5§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§,#G§ + §2A§;
            if(!this.§>[§)
            {
               _loc1_ += §`!F§;
            }
            if(!this.§6" §)
            {
               _loc1_ += §>!V§;
            }
            §3Z§.playSound("star_3_coins",§0"M§);
            §0I§.§^!L§(§0I§.§]B§,§null§.§%l§,§2A§);
            _loc2_ = new §^!Z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §2A§;
            _loc2_.currency = "IVC";
            _loc2_.§`"x§ = §!!K§.§9!t§;
            _loc2_.itemType = §null§.§%l§;
            _loc2_.§'$,§ = §null§.§%l§;
            _loc2_.level = §7n§.§6#K§.currentLevel.name;
            _loc2_.itemName = §null§.§%l§;
            _loc3_ = [_loc2_];
            §!!K§.§%#S§().§%!D§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§`"x§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§'$,§,_loc2_.§%#&§,_loc2_.currency,_loc2_.§#Z§);
            this.§,#Z§ += §2A§;
            §#"F§.setCoinsAmountText(this.§,#Z§);
            §#"F§.animateGotCoins(§2A§);
            this.§8$>§(2);
            return §7"Y§.§ !]§;
         }
         §3Z§.playSound("star_3_coins",§0"M§);
         return §7"Y§.§^#N§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§ !>§ = null;
         var tournamentRules:§]_§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var leagueOrderNumber:int = 0;
         var fbPixelEventName:String = null;
         var sentEvent:Boolean = false;
         var alreadySentEvents:Object = null;
         var name:String = null;
         var previousState:String = param1;
         this.§+G§ = §7"L§.§`"H§.§9'§() as §>#O§;
         if(this.§+G§)
         {
            if(this.§+G§.§^#B§ >= this.§+G§.§1$=§ && !this.§+G§.§9"@§())
            {
               this.§+G§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §'##§.§`"H§.§8!i§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§[#m§.activate(nextLevel);
         }
         this.§^#D§ = §7"L§.§`"H§.§9'§() as §]"%§;
         if(this.§^#D§)
         {
            if(this.§^#D§.§;$,§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §[$5§.getItemByName(§#"7§) as § !>§;
               tournamentRules = §'##§.§`"H§.tournamentRules;
               brandName = tournamentRules.§3V§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = § $?§.§`"H§.§9!f§(§]"%§.§1"9§) + 1 + "";
               §;"x§.§<!E§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§[$5§.getItemByName("ItemDropMovieClip") as §'!`§).mClip;
               §;"x§.§<!E§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §[$5§.getItemByName("Hostess_CupCakes").visible = true;
               §3Z§.playSound("fortunewheel_block_remove",§3Z§.§8#R§);
               §[$5§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §[$5§.getItemByName(§#"7§).setVisibility(false);
            }
         }
         else
         {
            §[$5§.getItemByName(§#"7§).setVisibility(false);
         }
         if(§<$2§.§`"H§.currentLeague())
         {
            leagueOrderNumber = §'#N§.§'#_§(§<$2§.§`"H§.currentLeague().id);
            if(leagueOrderNumber > -1)
            {
               fbPixelEventName = "join_tier_" + leagueOrderNumber;
               sentEvent = true;
               alreadySentEvents = §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§'k§(§[$3§.§"_§);
               for each(name in alreadySentEvents)
               {
                  if(name == fbPixelEventName)
                  {
                     sentEvent = false;
                  }
               }
               if(sentEvent)
               {
                  § !+§.§>$%§("trackFBPixelEvent",fbPixelEventName);
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§"_§,[fbPixelEventName]);
               }
            }
         }
         if(§'##§.§`"H§.§;!q§())
         {
            §0!S§.§>!Q§();
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §%"R§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§7!J§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§^!b§ = §^!b§(_loc1_);
         for each(_loc3_ in PosterPopup.§^!v§)
         {
            if(_loc2_.§?Q§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§7n§.§-$<§ as § #v§).§?"_§.§>#V§();
               if(§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§#"l§.§?!b§,§]"Y§.TOP,_loc3_));
               §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§'"N§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§[#m§.update();
         this.§`!g§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §[$5§.getItemByName("Button_Menu").setVisibility(true);
         §[$5§.getItemByName("Button_Replay").setVisibility(true);
         §[$5§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §'##§.§`"H§.§>Q§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §[$5§.getItemByName("Button_NextLevel").setVisibility(true);
            §[$5§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §[$5§.getItemByName("Button_Menu").x = §,d§[0];
            §[$5§.getItemByName("Button_Replay").x = §,d§[1];
            §[$5§.getItemByName("Button_NextLevel").x = §,d§[2];
         }
         else
         {
            §[$5§.getItemByName("Button_NextLevel").setVisibility(false);
            §[$5§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §[$5§.getItemByName("Button_Menu").x = §,d§[0];
            §[$5§.getItemByName("Button_Replay").x = §,d§[1];
            §[$5§.getItemByName("Button_NextLevel_Orange").x = §,d§[2];
         }
         if(this.§+G§)
         {
            if(!this.§!!J§)
            {
               this.§>!8§ = this.§+G§.§^#B§;
               this.§9!j§ = this.§+G§.§ $7§();
               if(this.§>!8§ < this.§9!j§.starsNeeded)
               {
                  this.§""r§(§6$A§.§1!m§("ChestLocked" + this.§9!j§.ID));
                  this.§7Q§ = this.§!!J§.getChildByName("TextField_Value") as TextField;
                  this.§7Q§.text = this.§>!8§ + "/" + this.§9!j§.starsNeeded;
                  this.§!!J§.getChildByName("bgNormal").visible = false;
                  this.§!!J§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§""r§(§6$A§.§1!m§("ChestClaimable" + this.§9!j§.ID));
                  this.§7Q§ = null;
               }
               this.§;#;§ = false;
               this.§!!J§.addEventListener(MouseEvent.CLICK,this.§&!s§);
            }
         }
      }
      
      private function §`!g§() : void
      {
         if(this.§;#;§)
         {
            if(this.§>!8§ < this.§9!j§.starsNeeded && this.§>!8§ + 1 == this.§9!j§.starsNeeded)
            {
               this.§!!J§.parent.removeChild(this.§!!J§);
               this.§!!J§ = null;
               this.§""r§(§6$A§.§1!m§("ChestClaimable" + this.§9!j§.ID));
               this.§7Q§ = null;
               §3Z§.playSound("ABF_gift_open_01",§3Z§.§8#R§);
            }
            else
            {
               §3Z§.playSound("LeaguePromotionPuff",§3Z§.§8#R§);
            }
            ++this.§>!8§;
            if(this.§7Q§)
            {
               this.§7Q§.text = this.§>!8§ + "/" + this.§9!j§.starsNeeded;
            }
            this.§;#;§ = false;
         }
      }
      
      private function §""r§(param1:Class) : void
      {
         this.§!!J§ = new param1();
         this.§`#>§ = this.§!!J§.width + 16;
         this.§!!J§.x = (§7n§.§-$<§ as § #v§).§=#+§.x - this.§`#>§;
         this.§!!J§.y = 10;
         this.§!!J§.addEventListener(MouseEvent.CLICK,this.§&!s§);
         §[$5§.movieClip.addChild(this.§!!J§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§!!J§)
         {
            _loc1_ = 1;
            if((§7n§.§-$<§ as § #v§).§]#p§())
            {
               _loc1_ = §95§.§^"_§;
            }
            this.§!!J§.scaleX = _loc1_;
            this.§!!J§.scaleY = _loc1_;
            this.§!!J§.x = (§7n§.§-$<§ as § #v§).§=#+§.x - this.§`#>§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§]!O§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            § $?§.§`"H§.§ !t§(_loc2_,true);
         }
         if(this.§^#D§)
         {
            if(this.§^#D§.§;$,§() > 0)
            {
               if(!§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(§]"%§.§1"9§))
               {
                  this.§^#D§.§2!K§();
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§'"N§,[§]"%§.§1"9§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§]!O§)
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§'##§.§`"H§.§;!q§())
               {
                  if(§'##§.§`"H§.§'"^§() <= 0)
                  {
                     §1!L§(§0!S§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§[#m§.§;#W§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§[#m§.§-#j§)
                  {
                     this.§[#m§.§;!K§();
                  }
               }
               break;
            case "BRAG":
               § !+§.addCallback("permissionRequestComplete",this.§!#E§);
               § !+§.§>$%§("askForPublishStreamPermission");
               this.§1s§(true);
               §+!<§();
               break;
            case "SKIP_SHARE":
               this.§1s§(false);
               §+!<§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               §;!H§.§`$§();
               break;
            case "REPLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               if(§'##§.§`"H§.§;!q§())
               {
                  if(§'##§.§`"H§.§'"^§() <= 0)
                  {
                     §1!L§(§0!S§.STATE_NAME);
                  }
                  else
                  {
                     §1!L§(this.getStateLevelLoadState());
                  }
               }
               else
               {
                  §1!L§(this.getStateLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §&!s§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         §;!H§.§`$§();
         §!!K§.§%#S§().§`H§(§!!K§.§-$E§,this.§+G§.§9"@§());
      }
      
      protected function §!#E§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         § !+§.§?!§("permissionRequestComplete",this.§!#E§);
         if(param1 == "true" && this.§&"t§)
         {
            switch(this.§&"t§.shareModeId)
            {
               case §,j§:
                  _loc2_ = this.§&"t§.friendId.substr(0,this.§&"t§.friendId.indexOf("-"));
                  _loc3_ = §;#A§(mLevelManager).§`!-§(this.§&"t§.friendId);
                  § !+§.§>$%§("shareBrag",this.§&"t§.friendId,this.§&"t§.bragPhotoId,this.§&"t§.bragTitle,this.§&"t§.bragText,this.§&"t§.bragCaption,this.§&"t§.levelId);
            }
         }
      }
      
      protected function §1s§(param1:Boolean) : void
      {
         switch(this.§&"t§.shareModeId)
         {
            case §,j§:
               if(param1)
               {
                  §0I§.§,"o§(§!!K§.§ #r§);
                  §!!K§.§%#S§().§%$1§(§!!K§.§ #r§,§!!K§.§9#c§);
                  break;
               }
               §0I§.§4!p§(§!!K§.§ #r§);
               §!!K§.§%#S§().§%$1§(§!!K§.§ #r§,§!!K§.§-"S§);
               break;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§7$C§ = null;
         super.deActivate();
         this.§[#m§.deactivate();
         if(this.§!!J§)
         {
            this.§!!J§.parent.removeChild(this.§!!J§);
            this.§!!J§ = null;
            this.§9!j§ = null;
         }
         if(this.§<$B§)
         {
            for each(_loc1_ in this.§<$B§)
            {
               if(_loc1_)
               {
                  _loc1_.§%"#§();
               }
            }
            this.§<$B§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §7#t§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §+">§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §;!H§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §`!O§ = true;
         this.§&"t§ = new Object();
         if(this.§%#h§())
         {
            §[$5§.getItemByName("ButtonBrag").setVisibility(true);
            §[$5§.getItemByName("ButtonSkipShare").setVisibility(true);
            §6"N§();
            §'!F§();
         }
      }
      
      protected function §%#h§() : Boolean
      {
         var _loc4_:§;!$§ = null;
         if(§'##§.§`"H§.§;!q§())
         {
            return false;
         }
         var _loc1_:§;!$§ = null;
         var _loc2_:Array = (§7n§.§-$<§ as § #v§).§=#+§.§9$4§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§6#O§(_loc4_) && _loc4_.§,$&§ > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.§,$&§;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§`"$§;
         (_loc5_ = §[$5§.getItemByName("Textfield_SharingText") as §`"$§).setVisibility(true);
         §;"x§.§+>§(_loc5_.§2"<§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§-=§ = new §-=§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).avatarString,false,§6#b§.§?^§);
         var _loc7_:MovieClip;
         (_loc7_ = (§[$5§.getItemByName("BragFramePlayer") as §'!`§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§[$5§.getItemByName("BragFramePlayer") as §'!`§).setVisibility(true);
         var _loc8_:§-=§ = new §-=§(_loc1_.userId,_loc1_.avatarString,false,§6#b§.§?^§);
         var _loc9_:MovieClip;
         (_loc9_ = (§[$5§.getItemByName("BragFrameFriend") as §'!`§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§[$5§.getItemByName("BragFrameFriend") as §'!`§).setVisibility(true);
         this.§&"t§.shareModeId = §,j§;
         this.§&"t§.friendId = _loc1_.userId;
         this.§&"t§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§&"t§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName + " overtakes " + _loc1_.userName + "!";
         this.§&"t§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName + " just beat " + _loc1_.userName + " in level " + §'##§.§`"H§.§;p§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§&"t§.bragCaption = "CLICK TO JOIN THEM!";
         this.§&"t§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §;#A§(mLevelManager).§`!-§(mLevelManager.currentLevel);
         this.§&"t§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      private function §6#O§(param1:§;!$§) : Boolean
      {
         return §2!-§.§]"2§(param1.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(§'##§.§`"H§.§;#Q§)
         {
            return §'##§.§`"H§.§;#Q§.id;
         }
         return -1;
      }
   }
}
