package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!>§;
   import §&!"§.§`B§;
   import §+!F§.§1!D§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §6! §.§1"F§;
   import §6k§.§-#§;
   import §;n§.§&G§;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §>s§.§;"&§;
   import §>s§.§@c§;
   import §^!o§.§=1§;
   import §^!o§.§]p§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import §each §.§@x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&"2§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§!"&§ = null;
      
      private var mChapterTween1:§!"&§ = null;
      
      private var mChapterTween2:§!"&§ = null;
      
      private var mChapterTween3:§!"&§ = null;
      
      private var §-"5§:§!"&§ = null;
      
      private var §<"@§:§!"&§ = null;
      
      private var §&"<§:§!"&§ = null;
      
      private var §;!h§:§1"F§;
      
      public function §&"2§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_ChapterFacebookSelection[0]);
      }
      
      override public function activate() : void
      {
         var _loc7_:String = null;
         var _loc8_:§]p§ = null;
         super.activate();
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
         (§&2§.§5!k§ as §,"I§).§'"'§("");
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.start();
         }
         §&2§.§],§.§`!I§(false);
         §&2§.§],§.clearLevel();
         var _loc1_:§&G§ = §2!K§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§&G§ = §2!K§.getItemByName("AvatarSilhouette");
         if(_loc1_)
         {
            while(_loc1_.mClip.numChildren > 1)
            {
               _loc1_.mClip.removeChildAt(1);
            }
         }
         if(§,"I§.§&q§.§[y§ && §,"I§.§&q§.§[y§.§?"F§)
         {
            §`B§.§ if§();
         }
         if(this.§;!h§ == null)
         {
            this.§;!h§ = new §1"F§((AngryBirdsFP11.sUserProgress as §'y§).§;#§,(AngryBirdsFP11.sUserProgress as §'y§).avatarString,_loc2_.mClip,false,"240");
            this.§;!h§.scaleX = 0.75;
            this.§;!h§.scaleY = 0.75;
            this.§;!h§.x = -40;
            this.§;!h§.y = -50;
            _loc1_.mClip.addChild(this.§;!h§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§;!h§);
            this.§;!h§.§40§ = _loc2_.mClip;
            if(this.§;!h§.§<@§)
            {
               this.§;!h§.§40§.visible = false;
            }
         }
         this.playThemeMusic();
         var _loc3_:int = 0;
         while(_loc3_ <= 4)
         {
            this.§;v§(_loc3_);
            _loc3_++;
         }
         var _loc4_:§=!-§ = LevelManager.§9"&§(3);
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§9!C§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§!5§(_loc4_),"Textfield_CollectedStarsGE");
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§8!;§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§+"1§(_loc4_),"Textfield_ME_ScoreGE");
         this.§[!b§();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§&"5§);
         var _loc5_:§=!-§ = LevelManager.§2!p§("12");
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§9!C§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§!5§(_loc5_),"Textfield_CollectedStars3");
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§8!;§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§+"1§(_loc5_),"Textfield_ME_Score3");
         (§2!K§.getItemByName("Button_Tournament") as §]!<§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
         (§2!K§.getItemByName("MovieClip_BackGround") as §?!j§).mClip.gotoAndStop(0);
         if(§=1§.§1[§.§,!X§)
         {
            if(§=1§.§1[§.§,!X§.§4!`§)
            {
               (§2!K§.getItemByName("MovieClip_BackGround") as §?!j§).mClip.gotoAndStop(§=1§.§1[§.§,!X§.§4!`§);
            }
            if(§=1§.§1[§.§,!X§.§[!k§)
            {
               (§2!K§.getItemByName("Button_Tournament") as §]!<§).mClip.Button_Graphic.gotoAndStop(§=1§.§1[§.§,!X§.§[!k§);
            }
            this.§4a§(§=1§.§1[§.§,!X§);
            if(_loc7_ = §=1§.§1[§.§#"3§)
            {
               if((_loc8_ = §=1§.§1[§.§1^§(_loc7_)) && _loc8_.§>h§)
               {
                  if(_loc8_.§4!`§)
                  {
                     (§2!K§.getItemByName("MovieClip_BackGround") as §?!j§).mClip.gotoAndStop(_loc8_.§4!`§);
                  }
                  this.§4a§(_loc8_,true);
               }
            }
         }
         this.§?[§();
         (§2!K§.getItemByName("MovieClip_BackGround") as §?!j§).mClip.gotoAndStop("CHRISTMAS_BACKGROUND");
         var _loc6_:Boolean = §@x§.§11§();
         §2!K§.getItemByName("Container_Sale").visible = _loc6_;
      }
      
      private function §0E§(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§&"B§();
         }
      }
      
      private function §?[§() : void
      {
         var _loc1_:§?!j§ = §2!K§.getItemByName("Container_NewChapterSelection") as §?!j§;
         var _loc2_:§="0§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §="0§;
         _loc2_.mClip.gotoAndPlay(0);
         _loc2_.mClip.addEventListener(Event.ENTER_FRAME,this.§0E§);
         _loc2_.visible = true;
         var _loc3_:§]!<§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §]!<§;
         _loc3_.visible = false;
      }
      
      private function §&"B§() : void
      {
         var _loc1_:§?!j§ = §2!K§.getItemByName("Container_NewChapterSelection") as §?!j§;
         var _loc2_:§="0§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §="0§;
         _loc2_.mClip.stop();
         _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§0E§);
         _loc2_.visible = false;
         var _loc3_:§]!<§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §]!<§;
         _loc3_.visible = true;
      }
      
      private function §4a§(param1:§]p§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§&G§ = null;
         if(param1.§>"2§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§>"2§.length)
            {
               _loc4_ = param1.§>"2§[_loc3_];
               if(!(_loc5_ = §2!K§.getItemByName(_loc4_)))
               {
                  throw new Error("Tournament teaser graphic id was not found!");
               }
               _loc5_.setVisibility(true);
               if(!param2)
               {
                  _loc5_.setEnabled(true);
               }
               _loc3_++;
            }
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§;"&§ = §,"I§.§&q§.§1H§();
         _loc1_.§ 7§(§@c§.§?!M§);
      }
      
      protected function §[!b§() : void
      {
         var _loc1_:int = §=1§.§1[§.§&T§();
         var _loc2_:String = "Your Rank: " + _loc1_ + §"!>§.§,!5§(_loc1_);
         if(_loc1_ == §=1§.§!!"§)
         {
            _loc2_ = "Join the fun!";
         }
         §2!K§.setText(_loc2_,"Textfield_TournamentRank");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!7§();
         §2!K§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §2!K§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §2!K§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §2!K§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         §2!K§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_Tournament").mClip.scaleY = 1;
      }
      
      private function §-!7§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween1 != null)
         {
            this.mChapterTween1.stop();
            this.mChapterTween1 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
         if(this.mChapterTween3 != null)
         {
            this.mChapterTween3.stop();
            this.mChapterTween3 = null;
         }
         if(this.§-"5§ != null)
         {
            this.§-"5§.stop();
            this.§-"5§ = null;
         }
      }
      
      private function §;v§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§=!-§ = null;
         if(param3 == "")
         {
            _loc4_ = LevelManager.§9"&§(param1);
         }
         else
         {
            _loc4_ = LevelManager.§2!p§(param3);
         }
         if(_loc4_ == null)
         {
            return;
         }
         if(param2 == "")
         {
            param2 = param1 + "";
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§9!C§(_loc4_);
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§!5§(_loc4_);
         var _loc7_:int = AngryBirdsFP11.sUserProgress.§8!;§(_loc4_);
         var _loc8_:int = AngryBirdsFP11.sUserProgress.§+"1§(_loc4_);
         §2!K§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §2!K§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2!K§.setText(§=1§.§1[§.§&">§()[0],"Textfield_TimeLeft");
         var _loc3_:Boolean = §@x§.§11§();
         §2!K§.getItemByName("Container_Sale").visible = _loc3_;
         if(_loc3_)
         {
            §2!K§.setText(§@x§.§3!u§(),"Sale_Countdown");
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§^p§("1000-" + _loc5_);
            mNextState = StateCutScene.STATE_NAME;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               §`B§.§5C§();
               break;
            case "showCredits":
               mNextState = §`f§.STATE_NAME;
               break;
            case "CHAPTER2":
               §+m§.§]!N§("Menu_Confirm");
               LevelManager.§5"G§ = 2;
               mNextState = §[2§.STATE_NAME;
               break;
            case "CHAPTER3":
               §+m§.§]!N§("Menu_Confirm");
               LevelManager.§5"G§ = 5;
               mNextState = §[2§.STATE_NAME;
               break;
            case "CHAPTER0":
               §+m§.§]!N§("Menu_Confirm");
               LevelManager.§5"G§ = 0;
               mNextState = §[2§.STATE_NAME;
               break;
            case "CHAPTER1":
               §+m§.§]!N§("Menu_Confirm");
               LevelManager.§5"G§ = 1;
               mNextState = §[2§.STATE_NAME;
               break;
            case "CHAPTERGE":
               §+m§.§]!N§("Menu_Confirm");
               LevelManager.§5"G§ = 3;
               mNextState = §@W§.STATE_NAME;
               break;
            case "SALE":
               if(§@x§.§`e§ != null)
               {
                  §+m§.§]!N§("Menu_Confirm");
                  §`B§.§8m§();
               }
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween1.play();
               break;
            case "CHAPTER1OUT":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween3.play();
               break;
            case "CHAPTER3OUT":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§<"@§ != null)
               {
                  this.§<"@§.stop();
               }
               this.§<"@§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§<"@§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§<"@§ != null)
               {
                  this.§<"@§.stop();
               }
               this.§<"@§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.§<"@§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§-"5§ != null)
               {
                  this.§-"5§.stop();
               }
               this.§-"5§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§-"5§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§-"5§ != null)
               {
                  this.§-"5§.stop();
               }
               this.§-"5§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.§-"5§.play();
               break;
            case "SALEOVER":
               if(this.§&"<§ != null)
               {
                  this.§&"<§.stop();
               }
               this.§&"<§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§&"<§.play();
               break;
            case "SALEOUT":
               if(this.§&"<§ != null)
               {
                  this.§&"<§.stop();
               }
               this.§&"<§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&p§.§>!i§);
               this.§&"<§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               LevelManager.§5"G§ = 4;
               mNextState = §-#§.STATE_NAME;
               break;
            case "STAR_WARS_PROMO":
               §`B§.§?""§();
         }
      }
   }
}
