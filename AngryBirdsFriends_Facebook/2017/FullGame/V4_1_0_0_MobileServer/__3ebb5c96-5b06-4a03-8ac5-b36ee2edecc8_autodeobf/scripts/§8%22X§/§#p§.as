package §8"X§
{
   import § o§.§%"!§;
   import § o§.PosterPopup;
   import §!@§.§,!z§;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§^!4§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§4"n§;
   import §&"J§.§6$0§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §+#t§.§>J§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8" §.§<"e§;
   import §8" §.§]#&§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import §94§.§7!x§;
   import §94§.§>!&§;
   import §;#r§.§"g§;
   import §<!b§.§>#&§;
   import §<"1§.§'"S§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §@#§.§7!O§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §[0§.§;$-§;
   import §]#K§.§>#x§;
   import §];§.§&'§;
   import §];§.§-!t§;
   import §];§.§;!r§;
   import §^#]§.§@!g§;
   import §`!R§.§&"8§;
   import §`M§.UserProgressEvent;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class §#p§ extends §7!x§
   {
      
      public static const §0!0§:int = 2;
      
      public static const §>"=§:int = 4;
      
      public static const §="I§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §@!e§:int = 0;
      
      private static const §%!F§:int = 1;
      
      private static const §%#U§:int = 2;
      
      private static const §1!4§:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var §"#$§:Object;
      
      private var §#"A§:Boolean;
      
      private var §1@§:Boolean;
      
      private var §7#$§:int;
      
      private var §!!w§:Boolean = false;
      
      private var §-!6§:Boolean = false;
      
      private var §7!Y§:Boolean = false;
      
      private var §-"C§:int;
      
      private var §'#W§:§&'§;
      
      private var §7w§:int;
      
      private var §>$'§:§]#&§;
      
      private var §%#f§:§>#x§;
      
      private var §+#e§:§<"e§;
      
      private var §^#Z§:DisplayObjectContainer;
      
      private var §;!=§:Number;
      
      private var §`#B§:TextField;
      
      private var §+#S§:int;
      
      private var §,#^§:Boolean;
      
      private var §0"L§:Vector.<§-#C§>;
      
      public function §#p§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
         §8!x§ = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'#W§ = new §&'§(this,§,#w§(§?Q§.getItemByName("Button_NextLevel")),§-!t§.§ "D§,§`]§(AngryBirdsBase.singleton.dataModel).§#"r§,§`]§(AngryBirdsBase.singleton.dataModel).§>p§);
      }
      
      protected function §2"z§(param1:int) : void
      {
         this.§-"C§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§25§(mLevelManager.currentLevel,param1);
         var _loc2_:Boolean = (§!#A§.§>q§ as §-#+§).§7&§(mLevelManager.currentLevel,param1);
         (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).saveLevelProgress(mLevelManager.currentLevel,false,true,_loc2_);
         §;$-§.§ "D§.§;m§(param1);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §-!t§.§ "D§.§%#p§(mLevelManager.currentLevel);
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §`!Q§).previousLevel = mLevelManager.currentLevel;
         }
         §5"p§(this.getCutSceneState());
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+!q§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         §?Q§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.§7w§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         var _loc1_:int = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§ =§(mLevelManager.currentLevel);
         var _loc2_:int = §!#A§.§=![§.getScore();
         §<!v§ = _loc2_ > _loc1_;
         this.§#"A§ = _loc1_ == 0;
         this.§7#$§ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc1_);
         §=$!§(_loc2_,_loc1_);
         this.§!&§ = false;
         this.§5$§ = false;
         this.§-7§ = false;
         switch(this.§7#$§)
         {
            case 0:
               break;
            case 1:
               this.§!&§ = true;
               break;
            case 2:
               this.§!&§ = true;
               this.§5$§ = true;
               break;
            case 3:
               this.§!&§ = true;
               this.§5$§ = true;
               this.§-7§ = true;
         }
         §]!H§();
         this.§1@§ = true;
         if(§<!v§)
         {
            this.§1@§ = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).addEventListener(UserProgressEvent.§!!_§,this.onUserProgressSaved);
            this.§2"z§(_loc2_);
            _loc8_ = §-#+§.§03§.§"#4§(mLevelManager.currentLevel,§>J§.BIRD_BOT_1);
            _loc9_ = §-#+§.§03§.§"#4§(mLevelManager.currentLevel,§>J§.BIRD_BOT_2);
            §`"5§.§9$=§(mLevelManager.currentLevel,_loc2_ > _loc8_,_loc2_ > _loc9_,_loc2_ - _loc8_,_loc2_ - _loc9_);
            §-!t§.§+" §();
         }
         else
         {
            this.§%#f§ = § "a§.§ "D§.§^W§() as §>#x§;
            if(this.§%#f§)
            {
               if(this.§%#f§.§4!b§() > 0)
               {
                  this.§1@§ = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).addEventListener(UserProgressEvent.§!!_§,this.onUserProgressSaved);
                  this.§2"z§(_loc1_);
                  §-!t§.§+" §();
               }
            }
         }
         (§?Q§.getItemByName("MovieClip_NewHighScoreBadge") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).mClip.gotoAndStop("UnLit");
         (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).mClip.gotoAndStop("UnLit");
         (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).mClip.gotoAndStop("UnLit");
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
         var _loc6_:* = this.§7#$§ == 0;
         var _loc7_:Boolean = this.§7#$§ < 3 && _loc5_ == 3;
         §?!=§.§3!q§().§?l§(true,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§(),§!#A§.§#F§.slingshot.§ "+§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§!#A§.§#F§ as §#!L§).§>#Z§(),§!#A§.§=![§.getScore(),_loc6_,_loc7_);
         if(this.§7#$§ == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§##R§(§-!t§.§ "D§.levelIDs))
            {
               §?!=§.§3!q§().§4#[§(§-!t§.§ "D§.§;"_§.id);
            }
         }
         if(§<!v§ && this.§>$'§)
         {
            this.§>$'§.§"!Z§(_loc5_ - this.§7#$§);
         }
         this.initShareUI();
      }
      
      private function set §!&§(param1:Boolean) : void
      {
         this.§!!w§ = param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §5$§(param1:Boolean) : void
      {
         this.§-!6§ = param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §-7§(param1:Boolean) : void
      {
         this.§7!Y§ = param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §?Q§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function §=!=§(param1:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         var starIndex:int = param1;
         if(!this.§>$'§ || !this.§^#Z§)
         {
            return;
         }
         var cls:Class = §+$#§.§["`§("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.§0"L§)
         {
            this.§0"L§ = new Vector.<§-#C§>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = §?Q§.stage.stageWidth >> 1;
         startCoordinates.y = §?Q§.stage.stageHeight >> 1;
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
         var tween1:§`!s§ = §6"w§.§ "D§.§""3§(dsp,{
            "x":this.§^#Z§.x + (this.§^#Z§.width >> 1),
            "y":this.§^#Z§.y + (this.§^#Z§.height >> 1)
         },startCoordinates,1,§6"w§.§'#v§);
         var tween2:§`!s§ = §6"w§.§ "D§.§""3§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:§-#C§ = §6"w§.§ "D§.§5"L§(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            §,#^§ = true;
         };
         starAnimTween.onStart = function():void
         {
            §?Q§.movieClip.addChild(dsp);
         };
         starAnimTween.§+"+§ = true;
         this.§0"L§.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var _loc1_:§"g§ = null;
         var _loc2_:Array = null;
         (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).mClip.gotoAndStop("Lit");
         if(!this.§!!w§)
         {
            §?Q§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            §!#&§.playSound("star_1_coins",§<!"§);
            §`"5§.§'!;§(§`"5§.§5#b§,§6$0§.§3#j§,§0!0§);
            _loc1_ = new §"g§();
            _loc1_.screen = STATE_NAME;
            _loc1_.amount = §0!0§;
            _loc1_.currency = "IVC";
            _loc1_.§>"j§ = §?!=§.§6"k§;
            _loc1_.itemType = §6$0§.§3#j§;
            _loc1_.§;!1§ = §6$0§.§3#j§;
            _loc1_.level = §!#A§.§#F§.currentLevel.name;
            _loc1_.itemName = §6$0§.§3#j§;
            _loc2_ = [_loc1_];
            §?!=§.§3!q§().§%"X§(false,_loc1_.itemType,_loc1_.amount,_loc1_.§>"j§,_loc1_.screen,_loc1_.level,_loc1_.itemName,_loc1_.§;!1§,_loc1_.§^$9§,_loc1_.currency,_loc1_.§]$9§);
            this.§7w§ += §0!0§;
            §2",§.setCoinsAmountText(this.§7w§);
            §2",§.animateGotCoins(§0!0§);
            this.§=!=§(0);
            return §>#&§.§[e§;
         }
         §!#&§.playSound("star_1_coins",§<!"§);
         return §>#&§.§'!4§;
      }
      
      override protected function setStarCenterLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§"g§ = null;
         var _loc3_:Array = null;
         (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).mClip.gotoAndStop("Lit");
         if(!this.§-!6§)
         {
            §?Q§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = this.§-"C§ + §>"=§;
            if(!this.§!!w§)
            {
               _loc1_ += §0!0§;
            }
            §!#&§.playSound("star_2_coins",§<!"§);
            §`"5§.§'!;§(§`"5§.§5#b§,§6$0§.§3#j§,§>"=§);
            _loc2_ = new §"g§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §>"=§;
            _loc2_.currency = "IVC";
            _loc2_.§>"j§ = §?!=§.§6"k§;
            _loc2_.itemType = §6$0§.§3#j§;
            _loc2_.§;!1§ = §6$0§.§3#j§;
            _loc2_.level = §!#A§.§#F§.currentLevel.name;
            _loc2_.itemName = §6$0§.§3#j§;
            _loc3_ = [_loc2_];
            §?!=§.§3!q§().§%"X§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§>"j§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§;!1§,_loc2_.§^$9§,_loc2_.currency,_loc2_.§]$9§);
            this.§7w§ += §>"=§;
            §2",§.setCoinsAmountText(this.§7w§);
            §2",§.animateGotCoins(§>"=§);
            this.§=!=§(1);
            return §>#&§.§[e§;
         }
         §!#&§.playSound("star_2_coins",§<!"§);
         return §>#&§.§'!4§;
      }
      
      override protected function setStarRightLit() : String
      {
         var _loc1_:int = 0;
         var _loc2_:§"g§ = null;
         var _loc3_:Array = null;
         (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).mClip.gotoAndStop("Lit");
         if(!this.§7!Y§)
         {
            §?Q§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = this.§-"C§ + §="I§;
            if(!this.§!!w§)
            {
               _loc1_ += §0!0§;
            }
            if(!this.§-!6§)
            {
               _loc1_ += §>"=§;
            }
            §!#&§.playSound("star_3_coins",§<!"§);
            §`"5§.§'!;§(§`"5§.§5#b§,§6$0§.§3#j§,§="I§);
            _loc2_ = new §"g§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = §="I§;
            _loc2_.currency = "IVC";
            _loc2_.§>"j§ = §?!=§.§6"k§;
            _loc2_.itemType = §6$0§.§3#j§;
            _loc2_.§;!1§ = §6$0§.§3#j§;
            _loc2_.level = §!#A§.§#F§.currentLevel.name;
            _loc2_.itemName = §6$0§.§3#j§;
            _loc3_ = [_loc2_];
            §?!=§.§3!q§().§%"X§(false,_loc2_.itemType,_loc2_.amount,_loc2_.§>"j§,_loc2_.screen,_loc2_.level,_loc2_.itemName,_loc2_.§;!1§,_loc2_.§^$9§,_loc2_.currency,_loc2_.§]$9§);
            this.§7w§ += §="I§;
            §2",§.setCoinsAmountText(this.§7w§);
            §2",§.animateGotCoins(§="I§);
            this.§=!=§(2);
            return §>#&§.§[e§;
         }
         §!#&§.playSound("star_3_coins",§<!"§);
         return §>#&§.§'!4§;
      }
      
      override public function activate(param1:String) : void
      {
         var collectionItemName:String = null;
         var button:§,#w§ = null;
         var tournamentRules:§;!r§ = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         var previousState:String = param1;
         this.§>$'§ = § "a§.§ "D§.§^W§() as §]#&§;
         if(this.§>$'§)
         {
            if(this.§>$'§.§!#H§ >= this.§>$'§.§9"D§ && !this.§>$'§.§7"3§())
            {
               this.§>$'§ = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = §-!t§.§ "D§.§4!y§(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.§'#W§.activate(nextLevel);
         }
         this.§%#f§ = § "a§.§ "D§.§^W§() as §>#x§;
         if(this.§%#f§)
         {
            if(this.§%#f§.§4!b§() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = §?Q§.getItemByName(§1!4§) as §,#w§;
               tournamentRules = §-!t§.§ "D§.tournamentRules;
               brandName = tournamentRules.§@!l§;
               (button.mClip.getChildByName("txtAmount") as TextField).text = §4"W§.§ "D§.§5!@§(§>#x§.§8!D§) + 1 + "";
               §@!g§.§?$5§(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (§?Q§.getItemByName("ItemDropMovieClip") as §'=§).mClip;
               §@!g§.§?$5§(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               §?Q§.getItemByName("Hostess_CupCakes").visible = true;
               §!#&§.playSound("fortunewheel_block_remove",§!#&§.§>#c§);
               §?Q§.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               §?Q§.getItemByName(§1!4§).setVisibility(false);
            }
         }
         else
         {
            §?Q§.getItemByName(§1!4§).setVisibility(false);
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function §!#s§() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§]#B§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var _loc2_:§7!O§ = §7!O§(_loc1_);
         for each(_loc3_ in PosterPopup.§%!2§)
         {
            if(_loc2_.§^"0§(_loc3_))
            {
               _loc4_ = _loc3_ + "_" + (§!#A§.§>q§ as §-#+§).§[#G§.§;#O§();
               if(§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(_loc4_))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(§%"!§.§4!P§,§^#o§.TOP,_loc3_));
               §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§^!?§,[_loc4_]);
               break;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'#W§.update();
         this.§'#L§();
      }
      
      override protected function showButtonsNormal() : void
      {
         §?Q§.getItemByName("Button_Menu").setVisibility(true);
         §?Q§.getItemByName("Button_Replay").setVisibility(true);
         §?Q§.getItemByName("Button_CutScene").setVisibility(false);
         var _loc1_:String = §-!t§.§ "D§.§%#p§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            §?Q§.getItemByName("Button_NextLevel").setVisibility(true);
            §?Q§.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            §?Q§.getItemByName("Button_Menu").x = §49§[0];
            §?Q§.getItemByName("Button_Replay").x = §49§[1];
            §?Q§.getItemByName("Button_NextLevel").x = §49§[2];
         }
         else
         {
            §?Q§.getItemByName("Button_NextLevel").setVisibility(false);
            §?Q§.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            §?Q§.getItemByName("Button_Menu").x = §49§[0];
            §?Q§.getItemByName("Button_Replay").x = §49§[1];
            §?Q§.getItemByName("Button_NextLevel_Orange").x = §49§[2];
         }
         if(this.§>$'§)
         {
            if(!this.§^#Z§)
            {
               this.§+#S§ = this.§>$'§.§!#H§;
               this.§+#e§ = this.§>$'§.§;#Q§();
               if(this.§+#S§ < this.§+#e§.starsNeeded)
               {
                  this.§'m§(§+$#§.§["`§("ChestLocked" + this.§+#e§.ID));
                  this.§`#B§ = this.§^#Z§.getChildByName("TextField_Value") as TextField;
                  this.§`#B§.text = this.§+#S§ + "/" + this.§+#e§.starsNeeded;
                  this.§^#Z§.getChildByName("bgNormal").visible = false;
                  this.§^#Z§.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.§'m§(§+$#§.§["`§("ChestClaimable" + this.§+#e§.ID));
                  this.§`#B§ = null;
               }
               this.§,#^§ = false;
               this.§^#Z§.addEventListener(MouseEvent.CLICK,this.§ "K§);
            }
         }
      }
      
      private function §'#L§() : void
      {
         if(this.§,#^§)
         {
            if(this.§+#S§ < this.§+#e§.starsNeeded && this.§+#S§ + 1 == this.§+#e§.starsNeeded)
            {
               this.§^#Z§.parent.removeChild(this.§^#Z§);
               this.§^#Z§ = null;
               this.§'m§(§+$#§.§["`§("ChestClaimable" + this.§+#e§.ID));
               this.§`#B§ = null;
               §!#&§.playSound("ABF_gift_open_01",§!#&§.§>#c§);
            }
            else
            {
               §!#&§.playSound("LeaguePromotionPuff",§!#&§.§>#c§);
            }
            ++this.§+#S§;
            if(this.§`#B§)
            {
               this.§`#B§.text = this.§+#S§ + "/" + this.§+#e§.starsNeeded;
            }
            this.§,#^§ = false;
         }
      }
      
      private function §'m§(param1:Class) : void
      {
         this.§^#Z§ = new param1();
         this.§;!=§ = this.§^#Z§.width + 16;
         this.§^#Z§.x = (§!#A§.§>q§ as §-#+§).§'M§.x - this.§;!=§;
         this.§^#Z§.y = 10;
         this.§^#Z§.addEventListener(MouseEvent.CLICK,this.§ "K§);
         §?Q§.movieClip.addChild(this.§^#Z§);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = NaN;
         super.updateUIScale();
         if(this.§^#Z§)
         {
            _loc1_ = 1;
            if((§!#A§.§>q§ as §-#+§).§3#3§())
            {
               _loc1_ = §>!&§.§<!3§;
            }
            this.§^#Z§.scaleX = _loc1_;
            this.§^#Z§.scaleY = _loc1_;
            this.§^#Z§.x = (§!#A§.§>q§ as §-#+§).§'M§.x - this.§;!=§ * _loc1_;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§1@§ = true;
         var _loc2_:Object = param1.data;
         if(_loc2_)
         {
            §4"W§.§ "D§.§+#<§(_loc2_,true);
         }
         if(this.§%#f§)
         {
            if(this.§%#f§.§4!b§() > 0)
            {
               if(!§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(§>#x§.§8!D§))
               {
                  this.§%#f§.§;=§();
                  §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§^!?§,[§>#x§.§8!D§]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         if(!this.§1@§)
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
               else if(this.§'#W§.§`K§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§'#W§.§<"+§)
               {
                  this.§'#W§.§0"r§();
               }
               break;
            case "SHARE":
            case "BRAG":
               § "8§.addCallback("permissionRequestComplete",this.§6!s§);
               § "8§.§ "§("askForPublishStreamPermission");
               this.§?#4§(true);
               §2!R§();
               break;
            case "SKIP_SHARE":
               this.§?#4§(false);
               §2!R§();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               §^!E§.§2z§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function § "K§(param1:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         §^!E§.§2z§();
         §?!=§.§3!q§().§?"8§(§?!=§.§5!f§,this.§>$'§.§7"3§());
      }
      
      protected function §6!s§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         § "8§.§+#R§("permissionRequestComplete",this.§6!s§);
         if(param1 == "true" && this.§"#$§)
         {
            switch(this.§"#$§.shareModeId)
            {
               case §%!F§:
                  _loc2_ = this.§"#$§.friendId.substr(0,this.§"#$§.friendId.indexOf("-"));
                  _loc3_ = §`!Q§(mLevelManager).§+#O§(this.§"#$§.friendId);
                  § "8§.§ "§("shareBrag",this.§"#$§.friendId,this.§"#$§.bragPhotoId,this.§"#$§.bragTitle,this.§"#$§.bragText,this.§"#$§.bragCaption,this.§"#$§.levelId);
                  break;
               case §@!e§:
                  § "8§.§ "§("shareBragCrown",this.§"#$§.crownPhotoId,this.§"#$§.shareTitle,this.§"#$§.shareText,this.§"#$§.shareCaption,this.§"#$§.rank,this.§"#$§.levelId);
                  break;
               case §%#U§:
                  § "8§.§ "§("shareBragThreeStars",this.§"#$§.starsPhotoId,this.§"#$§.shareTitle,this.§"#$§.shareText,this.§"#$§.shareCaption,this.§"#$§.tournamentId);
            }
         }
      }
      
      protected function §?#4§(param1:Boolean) : void
      {
         switch(this.§"#$§.shareModeId)
         {
            case §%!F§:
               if(param1)
               {
                  §`"5§.§"$%§(§?!=§.§&$7§);
                  §?!=§.§3!q§().§9#G§(§?!=§.§&$7§,§?!=§.§2R§);
               }
               else
               {
                  §`"5§.§!3§(§?!=§.§&$7§);
                  §?!=§.§3!q§().§9#G§(§?!=§.§&$7§,§?!=§.§7<§);
               }
               break;
            case §@!e§:
               if(param1)
               {
                  §`"5§.§"$%§(§?!=§.§5#Z§);
                  §?!=§.§3!q§().§9#G§(§?!=§.§5#Z§,§?!=§.§2R§);
               }
               else
               {
                  §`"5§.§!3§(§?!=§.§5#Z§);
                  §?!=§.§3!q§().§9#G§(§?!=§.§5#Z§,§?!=§.§7<§);
               }
               break;
            case §%#U§:
               if(param1)
               {
                  §`"5§.§"$%§(§?!=§.§53§);
                  §?!=§.§3!q§().§9#G§(§?!=§.§53§,§?!=§.§2R§);
                  break;
               }
               §`"5§.§!3§(§?!=§.§53§);
               §?!=§.§3!q§().§9#G§(§?!=§.§53§,§?!=§.§7<§);
               break;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§-#C§ = null;
         super.deActivate();
         this.§'#W§.deactivate();
         if(this.§^#Z§)
         {
            this.§^#Z§.parent.removeChild(this.§^#Z§);
            this.§^#Z§ = null;
            this.§+#e§ = null;
         }
         if(this.§0"L§)
         {
            for each(_loc1_ in this.§0"L§)
            {
               if(_loc1_)
               {
                  _loc1_.§=`§();
               }
            }
            this.§0"L§ = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §1!a§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §`$>§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §^!E§.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         §8!x§ = true;
         this.§"#$§ = new Object();
         if(this.§!!$§() || this.§ #>§())
         {
            §?Q§.getItemByName("ButtonBrag").setVisibility(false);
            §?Q§.getItemByName("ButtonSkipShare").setVisibility(true);
            §?Q§.getItemByName("ButtonShare").setVisibility(true);
            §0q§();
            §+#$§();
         }
         else if(this.§3$&§())
         {
            §?Q§.getItemByName("ButtonBrag").setVisibility(true);
            §?Q§.getItemByName("ButtonSkipShare").setVisibility(true);
            §?Q§.getItemByName("ButtonShare").setVisibility(false);
            §0q§();
            §+#$§();
         }
      }
      
      protected function §3$&§() : Boolean
      {
         var _loc4_:§4"n§ = null;
         var _loc1_:§4"n§ = null;
         var _loc2_:Array = (§!#A§.§>q§ as §-#+§).§'M§.§`#X§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!this.§#$1§(_loc4_) && _loc4_.levelScore > _loc3_)
            {
               _loc1_ = _loc4_;
               _loc3_ = _loc4_.levelScore;
            }
         }
         if(!_loc1_)
         {
            return false;
         }
         var _loc5_:§^!4§;
         (_loc5_ = §?Q§.getItemByName("Textfield_SharingText") as §^!4§).setVisibility(true);
         §@!g§.§["1§(_loc5_.§[!&§,"You beat " + _loc1_.userName + "!",250);
         var _loc6_:§-"3§ = new §-"3§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).avatarString,false,§5V§.§1$$§);
         var _loc7_:MovieClip;
         (_loc7_ = (§?Q§.getItemByName("BragFramePlayer") as §'=§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc7_.addChild(_loc6_);
         (§?Q§.getItemByName("BragFramePlayer") as §'=§).setVisibility(true);
         var _loc8_:§-"3§ = new §-"3§(_loc1_.userId,_loc1_.avatarString,false,§5V§.§1$$§);
         var _loc9_:MovieClip;
         (_loc9_ = (§?Q§.getItemByName("BragFrameFriend") as §'=§).mClip.getChildByName("imagePositioner") as MovieClip).removeChildren();
         _loc9_.addChild(_loc8_);
         (§?Q§.getItemByName("BragFrameFriend") as §'=§).setVisibility(true);
         this.§"#$§.shareModeId = §%!F§;
         this.§"#$§.friendId = _loc1_.userId;
         this.§"#$§.bragPhotoId = "01_sharing_level_beat_friend";
         this.§"#$§.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName + " overtakes " + _loc1_.userName + "!";
         this.§"#$§.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName + " just beat " + _loc1_.userName + " in level " + §-!t§.§ "D§.§@2§(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.§"#$§.bragCaption = "CLICK TO JOIN THEM!";
         this.§"#$§.levelId = mLevelManager.currentLevel;
         var _loc10_:String = §`!Q§(mLevelManager).§+#O§(mLevelManager.currentLevel);
         this.§"#$§.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + _loc10_;
         return true;
      }
      
      protected function § #>§() : Boolean
      {
         var _loc1_:int = (§!#A§.§>q§ as §-#+§).§'M§.§##T§(!this.§#"A§);
         var _loc2_:§^!4§ = §?Q§.getItemByName("Textfield_SharingText") as §^!4§;
         _loc2_.§[!&§.embedFonts = true;
         _loc2_.§[!&§.setTextFormat(_loc2_.§[!&§.defaultTextFormat);
         switch(_loc1_)
         {
            case 1:
               this.§"#$§.shareModeId = §@!e§;
               _loc2_.setText("You won the gold crown!");
               this.§"#$§.crownPhotoId = "02_sharing_level_1st_place";
               this.§"#$§.shareTitle = "1st place score!";
               this.§"#$§.shareText = "I just got the gold crown in level " + §-!t§.§ "D§.§@2§(mLevelManager.currentLevel) + ". I\'m unstoppable!";
               _loc2_.setVisibility(true);
               var _loc3_:§'=§ = §?Q§.getItemByName("ShareCrowns") as §'=§;
               _loc3_.goToFrame(_loc1_,false);
               _loc3_.visible = true;
               this.§"#$§.shareCaption = "CLICK TO PLAY THE LEVEL!";
               this.§"#$§.rank = _loc1_;
               this.§"#$§.levelId = mLevelManager.currentLevel;
               return true;
            default:
               return false;
         }
      }
      
      protected function §!!$§() : Boolean
      {
         if(§!#A§.§=![§.getScore() < mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel))
         {
            return false;
         }
         if(this.§7#$§ == 3)
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§##R§(§-!t§.§ "D§.levelIDs))
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§6]§())
         {
            return false;
         }
         var _loc1_:§^!4§ = §?Q§.getItemByName("Textfield_SharingText") as §^!4§;
         _loc1_.§[!&§.embedFonts = true;
         _loc1_.§[!&§.setTextFormat(_loc1_.§[!&§.defaultTextFormat);
         _loc1_.setText("Three Star Tournament!");
         _loc1_.setVisibility(true);
         this.§"#$§.shareModeId = §%#U§;
         this.§"#$§.starsPhotoId = "05_sharing_level_3_star_score";
         this.§"#$§.shareTitle = "Three Star Club!";
         this.§"#$§.shareText = "I got three stars in all of this week\'s tournament levels! Can you do it too?";
         this.§"#$§.shareCaption = "CLICK TO PLAY TOURNAMENT!";
         this.§"#$§.tournamentId = §-!t§.§ "D§.§;"_§.id;
         (§?Q§.getItemByName("ShareThreeStars") as §'=§).setVisibility(true);
         return true;
      }
      
      private function §#$1§(param1:§4"n§) : Boolean
      {
         return §>J§.§7!;§(param1.userId);
      }
   }
}
