package §40§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §3!8§.§5!C§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §7=§.§&,§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §@i§.§=r§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class §'!j§ extends §?Y§
   {
      
      public static var §`]§:String = "";
      
      public static const §?h§:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§4!Z§ = null;
      
      private var mChapterTween1:§4!Z§ = null;
      
      private var mChapterTween2:§4!Z§ = null;
      
      private var §',§:§4!Z§ = null;
      
      private var §9!Y§:§4!Z§ = null;
      
      private var §;!n§:§5!C§;
      
      private var §#A§:§&,§;
      
      public function §'!j§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_ChapterFacebookSelection[0]);
         this.§#A§ = new §&,§(§5!P§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ _§.§1s§ as §@!9§).§6!H§.§default§ = false;
         (§ _§.§1s§ as §@!9§).§>!+§("");
         if(§^b§.§9E§)
         {
            §^b§.§9E§.start();
         }
         § _§.§!6§.§2!d§(false);
         § _§.§!6§.clearLevel();
         if(§`]§ == "")
         {
            § !Q§.playSound("Intel_StartPlay",§ !Q§.§[!c§,0,-1,this.§!!H§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 3)
         {
            this.§@!R§(_loc1_);
            _loc1_++;
         }
         §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§`j§);
         this.§#A§.start();
      }
      
      private function §!!H§() : void
      {
         if(§2c§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         §`]§ == "";
         super.deActivate();
         this.§#A§.stop();
         this.§&q§();
         §5!P§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §5!P§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         § B§.§`]§ = §?h§;
      }
      
      private function §&q§() : void
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
         if(this.§',§ != null)
         {
            this.§',§.stop();
            this.§',§ = null;
         }
      }
      
      private function §@!R§(param1:int) : void
      {
         var _loc2_:§4n§ = LevelManager.§`!-§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         §5!P§.setText(AngryBirdsFP11.sUserProgress.§&!N§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc2_),"Textfield_CollectedStars" + param1);
         §5!P§.setText(AngryBirdsFP11.sUserProgress.§`!8§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc2_),"Textfield_ME_Score" + param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§#A§.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function §8!F§() : void
      {
         §=r§.§[!3§("playClicked");
      }
      
      private function §]7§(param1:Event) : void
      {
      }
      
      private function §3!H§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§1!+§("1000-" + _loc5_);
            mNextState = StateCutScene.§?h§;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §!1§.§?h§;
               break;
            case "CHAPTER0":
               this.§8!F§();
               § !Q§.playSound("Menu_Confirm");
               LevelManager.§>!§ = 0;
               mNextState = § B§.§?h§;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §,!b§.§<d§.§>a§(§5!P§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = §,!b§.§<d§.§>a§(§5!P§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§,!b§.§8!k§);
               this.mChapterTween0.play();
         }
      }
   }
}
