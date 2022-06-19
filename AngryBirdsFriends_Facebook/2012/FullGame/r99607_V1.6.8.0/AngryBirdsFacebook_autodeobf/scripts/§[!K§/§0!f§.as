package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§<?§;
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§#z§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §1k§.§;W§;
   import §1k§.§`!d§;
   import §1o§.§`0§;
   import §7N§.§43§;
   import §<!<§.§?@§;
   import §<!e§.§[!t§;
   import §<G§.§5w§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.AngryBirds.friendsbar.§2!h§;
   
   public class §0!f§ extends §,-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      public static const §;!U§:String = "GreenDay";
       
      
      private var mChapterTween0:§-!F§ = null;
      
      private var mChapterTween1:§-!F§ = null;
      
      private var mChapterTween2:§-!F§ = null;
      
      private var §5"1§:§-!F§ = null;
      
      private var mChapterTween3:§-!F§ = null;
      
      private var §@H§:§-!F§ = null;
      
      private var §4e§:§-!F§ = null;
      
      private var §"!L§:§`0§;
      
      public function §0!f§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_ChapterFacebookSelection[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
         (§9!%§.§ !W§ as § W§).§+!9§("");
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.start();
         }
         §9!%§.§!!M§.§5"!§(false);
         §9!%§.§!!M§.clearLevel();
         var _loc1_:§#z§ = §2"-§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§#z§ = §2"-§.getItemByName("AvatarSilhouette");
         if(_loc1_)
         {
            while(_loc1_.mClip.numChildren > 1)
            {
               _loc1_.mClip.removeChildAt(1);
            }
         }
         if(§ W§.§%!y§.§2Q§.§&b§)
         {
            §43§.§`!N§();
         }
         if(this.§"!L§ == null)
         {
            this.§"!L§ = new §`0§((AngryBirdsFP11.sUserProgress as §2!P§).§!!'§,(AngryBirdsFP11.sUserProgress as §2!P§).avatarString,_loc2_.mClip,false,"240");
            this.§"!L§.scaleX = 0.75;
            this.§"!L§.scaleY = 0.75;
            this.§"!L§.x = -40;
            this.§"!L§.y = -50;
            _loc1_.mClip.addChild(this.§"!L§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§"!L§);
            this.§"!L§.§^!U§ = _loc2_.mClip;
            if(this.§"!L§.§%T§)
            {
               this.§"!L§.§^!U§.visible = false;
            }
         }
         this.playThemeMusic();
         var _loc3_:int = 0;
         while(_loc3_ <= 4)
         {
            this.§2!7§(_loc3_);
            _loc3_++;
         }
         this.§2!7§(3000,§;!U§,"3000");
         var _loc4_:§]f§ = LevelManager.§3"1§(3);
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§@y§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§56§(_loc4_),"Textfield_CollectedStarsGE");
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§8!^§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§6!X§(_loc4_),"Textfield_ME_ScoreGE");
         this.§]" §();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§if §);
         var _loc5_:§]f§ = LevelManager.§,4§("12");
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§@y§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§56§(_loc5_),"Textfield_CollectedStars3");
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§8!^§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§6!X§(_loc5_),"Textfield_ME_Score3");
         if(String(§[!t§.§8c§.§&!>§).toUpperCase() == "LOTUS")
         {
            (§2"-§.getItemByName("Button_Tournament") as §<?§).mClip.Button_Graphic.gotoAndStop("LOTUS_BUTTON");
         }
         else
         {
            (§2"-§.getItemByName("Button_Tournament") as §<?§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§;W§ = § W§.§%!y§.§1`§();
         _loc1_.§>4§(§`!d§.§90§);
      }
      
      protected function §]" §() : void
      {
         var _loc1_:int = §[!t§.§8c§.§0!2§();
         var _loc2_:String = "Your Rank: " + _loc1_ + §?@§.§`!x§(_loc1_);
         if(_loc1_ == §[!t§.§9!K§)
         {
            _loc2_ = "Join the fun!";
         }
         §2"-§.setText(_loc2_,"Textfield_TournamentRank");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!-§();
         §2"-§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §2"-§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §2"-§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §2"-§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         §2"-§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_Tournament").mClip.scaleY = 1;
      }
      
      private function §]!-§() : void
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
         if(this.§@H§ != null)
         {
            this.§@H§.stop();
            this.§@H§ = null;
         }
         if(this.§5"1§ != null)
         {
            this.§5"1§.stop();
            this.§5"1§ = null;
         }
      }
      
      private function §2!7§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§]f§ = null;
         var _loc9_:§]f§ = null;
         if(param3 == "")
         {
            _loc4_ = LevelManager.§3"1§(param1);
         }
         else
         {
            _loc4_ = LevelManager.§,4§(param3);
         }
         if(_loc4_ == null)
         {
            return;
         }
         if(param2 == "")
         {
            param2 = param1 + "";
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§@y§(_loc4_);
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§56§(_loc4_);
         var _loc7_:int = AngryBirdsFP11.sUserProgress.§8!^§(_loc4_);
         var _loc8_:int = AngryBirdsFP11.sUserProgress.§6!X§(_loc4_);
         if(param2 == §;!U§)
         {
            _loc9_ = LevelManager.§,4§(§%!_§.EPISODE_GREEN_DAY_EGG);
            _loc5_ += AngryBirdsFP11.sUserProgress.§@y§(_loc9_);
            _loc6_ += AngryBirdsFP11.sUserProgress.§56§(_loc9_);
            _loc7_ += AngryBirdsFP11.sUserProgress.§8!^§(_loc9_);
            _loc8_ += AngryBirdsFP11.sUserProgress.§6!X§(_loc9_);
         }
         §2"-§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §2"-§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2"-§.setText(§[!t§.§8c§.§@§()[0],"Textfield_TimeLeft");
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§'!"§("1000-" + _loc5_);
            mNextState = StateCutScene.STATE_NAME;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               §43§.§;!9§();
               break;
            case "showCredits":
               mNextState = §2&§.STATE_NAME;
               break;
            case "CHAPTERGREENDAY":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 6;
               mNextState = §4E§.STATE_NAME;
               break;
            case "CHAPTER2":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 2;
               mNextState = §=B§.STATE_NAME;
               break;
            case "CHAPTER3":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 5;
               mNextState = §=B§.STATE_NAME;
               break;
            case "CHAPTER0":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 0;
               mNextState = §=B§.STATE_NAME;
               break;
            case "CHAPTER1":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 1;
               mNextState = §=B§.STATE_NAME;
               break;
            case "CHAPTERGE":
               §%4§.§>f§("Menu_Confirm");
               LevelManager.§@O§ = 3;
               mNextState = §6!%§.STATE_NAME;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGREENDAYOVER":
               if(this.§5"1§ != null)
               {
                  this.§5"1§.stop();
               }
               this.§5"1§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_ChapterGreenDay").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§5"1§.play();
               break;
            case "CHAPTERGREENDAYOUT":
               if(this.§5"1§ != null)
               {
                  this.§5"1§.stop();
               }
               this.§5"1§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_ChapterGreenDay").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.§5"1§.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§4e§ != null)
               {
                  this.§4e§.stop();
               }
               this.§4e§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§4e§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§4e§ != null)
               {
                  this.§4e§.stop();
               }
               this.§4e§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.§4e§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§@H§ != null)
               {
                  this.§@H§.stop();
               }
               this.§@H§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§@H§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§@H§ != null)
               {
                  this.§@H§.stop();
               }
               this.§@H§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§7!b§.§5E§);
               this.§@H§.play();
               break;
            case "TOURNAMENT":
               mNextState = §5w§.STATE_NAME;
         }
      }
   }
}
