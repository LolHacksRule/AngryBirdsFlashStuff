package §7"@§
{
   import § " §.§0&§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §6!B§.§>!E§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§=1§;
   import §[!K§.§-k§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §@"D§ extends §1-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      public static const §]!j§:String = "GreenDay";
       
      
      private var mChapterTween0:§"m§ = null;
      
      private var mChapterTween1:§"m§ = null;
      
      private var mChapterTween2:§"m§ = null;
      
      private var §#!1§:§"m§ = null;
      
      private var mChapterTween3:§"m§ = null;
      
      private var §-!n§:§"m§ = null;
      
      private var §;D§:§"m§ = null;
      
      private var §!"$§:§0&§;
      
      public function §@"D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_ChapterFacebookSelection[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
         (§#6§.§ q§ as §3T§).§?D§("");
         if(§"]§.§!X§)
         {
            §"]§.§!X§.start();
         }
         §#6§.§6!z§.§3H§(false);
         §#6§.§6!z§.clearLevel();
         var _loc1_:§7'§ = §6w§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§7'§ = §6w§.getItemByName("AvatarSilhouette");
         if(_loc1_)
         {
            while(_loc1_.mClip.numChildren > 1)
            {
               _loc1_.mClip.removeChildAt(1);
            }
         }
         if(§3T§.§67§.§0+§ && §3T§.§67§.§0+§.§3"F§)
         {
            §%?§.§-!?§();
         }
         if(this.§!"$§ == null)
         {
            this.§!"$§ = new §0&§((AngryBirdsFP11.sUserProgress as §[<§).§4v§,(AngryBirdsFP11.sUserProgress as §[<§).avatarString,_loc2_.mClip,false,"240");
            this.§!"$§.scaleX = 0.75;
            this.§!"$§.scaleY = 0.75;
            this.§!"$§.x = -40;
            this.§!"$§.y = -50;
            _loc1_.mClip.addChild(this.§!"$§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§!"$§);
            this.§!"$§.§-u§ = _loc2_.mClip;
            if(this.§!"$§.§,!m§)
            {
               this.§!"$§.§-u§.visible = false;
            }
         }
         this.playThemeMusic();
         var _loc3_:int = 0;
         while(_loc3_ <= 4)
         {
            this.§8"<§(_loc3_);
            _loc3_++;
         }
         this.§8"<§(3000,§]!j§,"3000");
         var _loc4_:§>x§ = LevelManager.§;X§(3);
         §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc4_),"Textfield_CollectedStarsGE");
         §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc4_),"Textfield_ME_ScoreGE");
         this.§4!6§();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
         var _loc5_:§>x§ = LevelManager.§5!W§("12");
         §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc5_),"Textfield_CollectedStars3");
         §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc5_),"Textfield_ME_Score3");
         var _loc6_:String = String(§,!C§.§;"§.§0!&§).toUpperCase();
         var _loc7_:String = String(§,!C§.§;"§.nextTournamentBrand).toUpperCase();
         if(_loc6_ == §,!C§.§1!G§)
         {
            (§6w§.getItemByName("MovieClip_BackGround") as §08§).mClip.gotoAndStop("BRANDED_BACKGROUND");
            if(_loc6_ == §,!C§.§1!G§)
            {
               (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("BRANDED_BUTTON");
            }
            else
            {
               (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
            }
         }
         else
         {
            (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
            (§6w§.getItemByName("MovieClip_BackGround") as §08§).mClip.gotoAndStop(0);
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         _loc1_.§"!r§(§&!7§.§3V§);
      }
      
      protected function §4!6§() : void
      {
         var _loc1_:int = §,!C§.§;"§.§<>§();
         var _loc2_:String = "Your Rank: " + _loc1_ + §=1§.§,A§(_loc1_);
         if(_loc1_ == §,!C§.§'W§)
         {
            _loc2_ = "Join the fun!";
         }
         §6w§.setText(_loc2_,"Textfield_TournamentRank");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7%§();
         §6w§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §6w§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §6w§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §6w§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §6w§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §6w§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §6w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §6w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         §6w§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §6w§.getItemByName("Container_Tournament").mClip.scaleY = 1;
      }
      
      private function §7%§() : void
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
         if(this.§-!n§ != null)
         {
            this.§-!n§.stop();
            this.§-!n§ = null;
         }
         if(this.§#!1§ != null)
         {
            this.§#!1§.stop();
            this.§#!1§ = null;
         }
      }
      
      private function §8"<§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§>x§ = null;
         var _loc9_:§>x§ = null;
         if(param3 == "")
         {
            _loc4_ = LevelManager.§;X§(param1);
         }
         else
         {
            _loc4_ = LevelManager.§5!W§(param3);
         }
         if(_loc4_ == null)
         {
            return;
         }
         if(param2 == "")
         {
            param2 = param1 + "";
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§9o§(_loc4_);
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§`!g§(_loc4_);
         var _loc7_:int = AngryBirdsFP11.sUserProgress.§7L§(_loc4_);
         var _loc8_:int = AngryBirdsFP11.sUserProgress.§,!b§(_loc4_);
         if(param2 == §]!j§)
         {
            _loc9_ = LevelManager.§5!W§(§]!K§.EPISODE_GREEN_DAY_EGG);
            _loc5_ += AngryBirdsFP11.sUserProgress.§9o§(_loc9_);
            _loc6_ += AngryBirdsFP11.sUserProgress.§`!g§(_loc9_);
            _loc7_ += AngryBirdsFP11.sUserProgress.§7L§(_loc9_);
            _loc8_ += AngryBirdsFP11.sUserProgress.§,!b§(_loc9_);
         }
         §6w§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §6w§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §6w§.setText(§,!C§.§;"§.§0!V§()[0],"Textfield_TimeLeft");
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§-!4§("1000-" + _loc5_);
            mNextState = StateCutScene.STATE_NAME;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               §%?§.§9$§();
               break;
            case "showCredits":
               mNextState = §9<§.STATE_NAME;
               break;
            case "CHAPTERGREENDAY":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 6;
               mNextState = §1!J§.STATE_NAME;
               break;
            case "CHAPTER2":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 2;
               mNextState = §8"D§.STATE_NAME;
               break;
            case "CHAPTER3":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 5;
               mNextState = §8"D§.STATE_NAME;
               break;
            case "CHAPTER0":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 0;
               mNextState = §8"D§.STATE_NAME;
               break;
            case "CHAPTER1":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 1;
               mNextState = §8"D§.STATE_NAME;
               break;
            case "CHAPTERGE":
               §>!E§.§7N§("Menu_Confirm");
               LevelManager.§2?§ = 3;
               mNextState = §9!X§.STATE_NAME;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGREENDAYOVER":
               if(this.§#!1§ != null)
               {
                  this.§#!1§.stop();
               }
               this.§#!1§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGreenDay").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§#!1§.play();
               break;
            case "CHAPTERGREENDAYOUT":
               if(this.§#!1§ != null)
               {
                  this.§#!1§.stop();
               }
               this.§#!1§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGreenDay").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.§#!1§.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§;D§ != null)
               {
                  this.§;D§.stop();
               }
               this.§;D§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§;D§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§;D§ != null)
               {
                  this.§;D§.stop();
               }
               this.§;D§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.§;D§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§-!n§ != null)
               {
                  this.§-!n§.stop();
               }
               this.§-!n§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§-!n§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§-!n§ != null)
               {
                  this.§-!n§.stop();
               }
               this.§-!n§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§>!+§.§%%§);
               this.§-!n§.play();
               break;
            case "TOURNAMENT":
               LevelManager.§2?§ = 4;
               mNextState = §-k§.STATE_NAME;
         }
      }
   }
}
