package §[!$§
{
   import §!!0§.SoundEngine;
   import §&"§.ExternalInterfaceHandler;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6v§.§,=§;
   import §7!>§.Starling;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateLevelSelection;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import §]B§.BackGroundAnimator;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class StateFacebookEpisodeSelection extends StateBase
   {
      
      public static var sPreviousState:String = "";
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§?W§ = null;
      
      private var mChapterTween1:§?W§ = null;
      
      private var mChapterTween2:§?W§ = null;
      
      private var §<=§:§?W§ = null;
      
      private var §[§:§?W§ = null;
      
      private var §>!R§:§,=§;
      
      private var §[]§:BackGroundAnimator;
      
      public function StateFacebookEpisodeSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_ChapterFacebookSelection[0]);
         this.§[]§ = new BackGroundAnimator(§`=§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§`S§.§=F§ as AngryBirdsUltraBook).§^!c§.§8!k§ = false;
         (§`S§.§=F§ as AngryBirdsUltraBook).§,!@§("");
         if(Starling.§7!+§)
         {
            Starling.§7!+§.start();
         }
         §`S§.§[o§.§#!$§(false);
         §`S§.§[o§.clearLevel();
         if(sPreviousState == "")
         {
            SoundEngine.§-!h§("Intel_StartPlay",SoundEngine.§5!g§,0,-1,this.§5![§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         for(var chapterNum:int = 0; chapterNum <= 3; chapterNum++)
         {
            this.§>!$§(chapterNum);
         }
         §`=§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §`=§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         this.§[]§.start();
      }
      
      private function §5![§() : void
      {
         if(§]`§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         sPreviousState == "";
         super.deActivate();
         this.§[]§.stop();
         this.§%!8§();
         §`=§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §`=§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         StateLevelSelection.sPreviousState = STATE_NAME;
      }
      
      private function §%!8§() : void
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
         if(this.§<=§ != null)
         {
            this.§<=§.stop();
            this.§<=§ = null;
         }
      }
      
      private function §>!$§(chapterNum:int) : void
      {
         var episode:ChapterModel = LevelManager.§7Z§(chapterNum);
         if(episode == null)
         {
            return;
         }
         §`=§.setText(AngryBirdsFP11.sUserProgress.§]J§(episode) + "/" + AngryBirdsFP11.sUserProgress.§7!d§(episode),"Textfield_CollectedStars" + chapterNum);
         §`=§.setText(AngryBirdsFP11.sUserProgress.§`!E§(episode) + "/" + AngryBirdsFP11.sUserProgress.§#!c§(episode),"Textfield_ME_Score" + chapterNum);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         this.§[]§.run(deltaTime);
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
      
      private function §5@§() : void
      {
         trace("track pixel");
         ExternalInterfaceHandler.§`F§("playClicked");
      }
      
      private function §0Z§(event:Event) : void
      {
         trace("Pixel Tracked");
      }
      
      private function §^=§(event:ErrorEvent) : void
      {
         trace("Tracking Pixel error, error ID[" + event.errorID + "]");
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var eggNumber:int = 0;
         var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
         if(isEggEvent != -1)
         {
            eggNumber = int(eventName.substr("EASTER_EGG_".length));
            LevelManager.§?h§("1000-" + eggNumber);
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
               this.§5@§();
               SoundEngine.§-!h§("Menu_Confirm");
               LevelManager.§]!U§ = 0;
               mNextState = StateLevelSelection.STATE_NAME;
               trace("Chapter 1");
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = TweenManager.§7!E§.§5§(§`=§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = TweenManager.§7!E§.§5§(§`=§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.§&=§);
               this.mChapterTween0.play();
         }
      }
   }
}
