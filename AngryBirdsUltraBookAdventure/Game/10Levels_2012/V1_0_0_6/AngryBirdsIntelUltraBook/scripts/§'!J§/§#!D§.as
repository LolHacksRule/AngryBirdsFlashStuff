package §'!J§
{
   import §!!K§.§else§;
   import §%t§.§3!d§;
   import §+0§.§,!E§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §5!c§.§try§;
   import §8!;§.§4I§;
   import §;!o§.§>!l§;
   import §;H§.§!y§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §#!D§ extends §,!E§
   {
      
      public static var §9!c§:String = "";
      
      public static const §"!s§:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§!q§ = null;
      
      private var mChapterTween1:§!q§ = null;
      
      private var mChapterTween2:§!q§ = null;
      
      private var §6!i§:§!q§ = null;
      
      private var §^!q§:§!q§ = null;
      
      private var §">§:§3!d§;
      
      private var §!!V§:§4I§;
      
      private var §55§:§try§;
      
      public function §#!D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_ChapterFacebookSelection[0]);
         this.§!!V§ = new §4I§(§&!m§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§^!c§.§2!w§ as §[!P§).§99§.§&§ = false;
         (§^!c§.§2!w§ as §[!P§).§;! §("");
         if(§else§.§^!A§)
         {
            §else§.§^!A§.start();
         }
         §^!c§.§5!Y§.§@!v§(false);
         §^!c§.§5!Y§.clearLevel();
         if(§9!c§ == "")
         {
            this.§55§ = §9'§.playSound("Intel_StartPlay",§9'§.§ ^§,0,-1);
            this.§55§.addEventListener(Event.SOUND_COMPLETE,this.§!b§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 3)
         {
            this.§2c§(_loc1_);
            _loc1_++;
         }
         §&!m§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §&!m§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§7!U§);
         this.§!!V§.start();
      }
      
      private function §!b§(param1:Event) : void
      {
         if(this.§55§)
         {
            this.§55§.removeEventListener(Event.SOUND_COMPLETE,this.§!b§);
         }
         if(§=F§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         §9!c§ == "";
         super.deActivate();
         this.§!!V§.stop();
         this.§3!1§();
         §&!m§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §&!m§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         §!y§.§9!c§ = §"!s§;
      }
      
      private function §3!1§() : void
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
         if(this.§6!i§ != null)
         {
            this.§6!i§.stop();
            this.§6!i§ = null;
         }
      }
      
      private function §2c§(param1:int) : void
      {
         var _loc2_:§<!#§ = LevelManager.§'J§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         §&!m§.setText(AngryBirdsFP11.sUserProgress.§^P§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§&!^§(_loc2_),"Textfield_CollectedStars" + param1);
         §&!m§.setText(AngryBirdsFP11.sUserProgress.§0,§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§'!8§(_loc2_),"Textfield_ME_Score" + param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§!!V§.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function §;!6§() : void
      {
         §>!l§.§ a§("playClicked");
      }
      
      private function §+4§(param1:Event) : void
      {
      }
      
      private function §0e§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§@3§("1000-" + _loc5_);
            mNextState = StateCutScene.§"!s§;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §9!3§.§"!s§;
               break;
            case "CHAPTER0":
               this.§;!6§();
               §9'§.playSound("Menu_Confirm");
               LevelManager.§>!$§ = 0;
               mNextState = §!y§.§"!s§;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§-!,§.§;!z§);
               this.mChapterTween0.play();
         }
      }
   }
}
