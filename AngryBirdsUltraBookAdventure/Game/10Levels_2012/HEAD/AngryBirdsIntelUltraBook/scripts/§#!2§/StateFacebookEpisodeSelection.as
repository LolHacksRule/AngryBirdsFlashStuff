package §#!2§
{
   import §"$§.Starling;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §+R§.§""§;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §6!'§.BackGroundAnimator;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateLevelSelection;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class StateFacebookEpisodeSelection extends StateBase
   {
      
      public static var sPreviousState:String = "";
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§9h§ = null;
      
      private var mChapterTween1:§9h§ = null;
      
      private var mChapterTween2:§9h§ = null;
      
      private var §;!<§:§9h§ = null;
      
      private var §`!@§:§9h§ = null;
      
      private var § !W§:§""§;
      
      private var §-Z§:BackGroundAnimator;
      
      public function StateFacebookEpisodeSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         super(initObject,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_ChapterFacebookSelection[0]);
         this.§-Z§ = new BackGroundAnimator(§^,§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = false;
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§1!-§("");
         if(Starling.§'!A§)
         {
            Starling.§'!A§.start();
         }
         §4!T§.§1t§.§@!F§(false);
         §4!T§.§1t§.clearLevel();
         if(sPreviousState == "")
         {
            SoundEngine.§`B§("Intel_StartPlay",SoundEngine.§[2§,0,-1,this.§8!!§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         for(var chapterNum:int = 0; chapterNum <= 3; chapterNum++)
         {
            this.§&!7§(chapterNum);
         }
         §^,§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §^,§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         this.§-Z§.start();
      }
      
      private function §8!!§() : void
      {
         if(§'!f§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         sPreviousState == "";
         super.deActivate();
         this.§-Z§.stop();
         this.§87§();
         §^,§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §^,§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         StateLevelSelection.sPreviousState = STATE_NAME;
      }
      
      private function §87§() : void
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
         if(this.§;!<§ != null)
         {
            this.§;!<§.stop();
            this.§;!<§ = null;
         }
      }
      
      private function §&!7§(chapterNum:int) : void
      {
         var episode:ChapterModel = LevelManager.§ m§(chapterNum);
         if(episode == null)
         {
            return;
         }
         §^,§.setText(AngryBirdsFP11.sUserProgress.§8!2§(episode) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(episode),"Textfield_CollectedStars" + chapterNum);
         §^,§.setText(AngryBirdsFP11.sUserProgress.§]!$§(episode) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(episode),"Textfield_ME_Score" + chapterNum);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         this.§-Z§.run(deltaTime);
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
      
      private function §]q§() : void
      {
         trace("track pixel");
         ExternalInterfaceHandler.§!!@§("playClicked");
      }
      
      private function §;!$§(event:Event) : void
      {
         trace("Pixel Tracked");
      }
      
      private function §,!g§(event:ErrorEvent) : void
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
            LevelManager.§%<§("1000-" + eggNumber);
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
               this.§]q§();
               SoundEngine.§`B§("Menu_Confirm");
               LevelManager.§3V§ = 0;
               mNextState = StateLevelSelection.STATE_NAME;
               trace("Chapter 1");
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = TweenManager.§&!'§.§3L§(§^,§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = TweenManager.§&!'§.§3L§(§^,§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.§4!-§);
               this.mChapterTween0.play();
         }
      }
   }
}
