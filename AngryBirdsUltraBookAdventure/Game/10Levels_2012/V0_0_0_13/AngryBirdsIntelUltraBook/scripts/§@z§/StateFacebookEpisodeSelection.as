package §@z§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §0P§.Starling;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §5!'§.§0<§;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateLevelSelection;
   import §=?§.SoundEngine;
   import §>!-§.UIEventListenerRovio;
   import §?t§.BackGroundAnimator;
   import com.angrybirds.friendsbar.FriendsBar;
   
   public class StateFacebookEpisodeSelection extends StateBase
   {
      
      public static var sPreviousState:String = "";
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§!T§ = null;
      
      private var mChapterTween1:§!T§ = null;
      
      private var mChapterTween2:§!T§ = null;
      
      private var §'5§:§!T§ = null;
      
      private var §%!f§:§!T§ = null;
      
      private var §<M§:§0<§;
      
      private var §8#§:BackGroundAnimator;
      
      public function StateFacebookEpisodeSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_ChapterFacebookSelection[0]);
         this.§8#§ = new BackGroundAnimator(§5!M§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§]!B§.§%h§ as AngryBirdsUltraBook).§56§.§5^§ = false;
         (§]!B§.§%h§ as AngryBirdsUltraBook).§81§("");
         if(Starling.§!!F§)
         {
            Starling.§!!F§.start();
         }
         §]!B§.§>F§.§,>§(false);
         §]!B§.§>F§.clearLevel();
         if(sPreviousState == "")
         {
            SoundEngine.§9!X§("Intel_StartPlay",SoundEngine.§0R§,0,-1,this.§<l§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         for(var chapterNum:int = 0; chapterNum <= 3; chapterNum++)
         {
            this.§54§(chapterNum);
         }
         §5!M§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §5!M§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         this.§8#§.start();
      }
      
      private function §<l§() : void
      {
         if(§;!M§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         sPreviousState == "";
         super.deActivate();
         this.§8#§.stop();
         this.§"M§();
         §5!M§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §5!M§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         StateLevelSelection.sPreviousState = STATE_NAME;
      }
      
      private function §"M§() : void
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
         if(this.§'5§ != null)
         {
            this.§'5§.stop();
            this.§'5§ = null;
         }
      }
      
      private function §54§(chapterNum:int) : void
      {
         var episode:ChapterModel = LevelManager.§;![§(chapterNum);
         if(episode == null)
         {
            return;
         }
         §5!M§.setText(AngryBirdsFP11.sUserProgress.§,l§(episode) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(episode),"Textfield_CollectedStars" + chapterNum);
         §5!M§.setText(AngryBirdsFP11.sUserProgress.§6Y§(episode) + "/" + AngryBirdsFP11.sUserProgress.§`=§(episode),"Textfield_ME_Score" + chapterNum);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         this.§8#§.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var eggNumber:int = 0;
         var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
         if(isEggEvent != -1)
         {
            eggNumber = int(eventName.substr("EASTER_EGG_".length));
            LevelManager.§]!R§("1000-" + eggNumber);
            mNextState = StateCutScene.STATE_NAME;
         }
         super.uiInteractionHandler(eventIndex,eventName,component);
         switch(eventName)
         {
            case "showCredits":
               mNextState = StateCreditsNew.STATE_NAME;
               trace("Really going to credits screen");
               break;
            case "CHAPTER0":
               SoundEngine.§9!X§("Menu_Confirm");
               LevelManager.§?Q§ = 0;
               mNextState = StateLevelSelection.STATE_NAME;
               trace("Chapter 1");
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.§0D§);
               this.mChapterTween0.play();
         }
      }
   }
}
