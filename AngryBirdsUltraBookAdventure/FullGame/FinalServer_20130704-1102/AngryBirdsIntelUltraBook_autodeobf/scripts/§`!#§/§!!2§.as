package §`!#§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2!U§.§2!=§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2m§.§<!?§;
   import §8!H§.§9![§;
   import §9j§.§6!G§;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!b§.§,!W§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import §^`§.§#!5§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §!!2§ extends §9![§
   {
      
      public static var §%!i§:String = "";
      
      public static const §'!q§:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§^v§ = null;
      
      private var mChapterTween1:§^v§ = null;
      
      private var mChapterTween2:§^v§ = null;
      
      private var §?p§:§^v§ = null;
      
      private var §<!G§:§^v§ = null;
      
      private var §2!<§:§#!5§;
      
      private var §;!9§:§6!G§;
      
      private var §=z§:§,!W§;
      
      public function §!!2§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_ChapterFacebookSelection[0]);
         this.§;!9§ = new §6!G§(§'!Q§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = false;
         (§,!s§.§]!J§ as §<t§).§;!T§("");
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.start();
         }
         §,!s§.§=!I§.§!C§(false);
         §,!s§.§=!I§.clearLevel();
         if(§%!i§ == "")
         {
            this.§=z§ = §-!Q§.§#3§("Intel_StartPlay",§-!Q§.§3Q§,0,-1);
            this.§=z§.addEventListener(Event.SOUND_COMPLETE,this.§'g§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 3)
         {
            this.§!>§(_loc1_);
            _loc1_++;
         }
         §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§,b§);
         this.§;!9§.start();
      }
      
      private function §'g§(param1:Event) : void
      {
         if(this.§=z§)
         {
            this.§=z§.removeEventListener(Event.SOUND_COMPLETE,this.§'g§);
         }
         if(§7!#§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         §%!i§ == "";
         super.deActivate();
         this.§;!9§.stop();
         this.§%!!§();
         §'!Q§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §'!Q§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         §2!=§.§%!i§ = §'!q§;
      }
      
      private function §%!!§() : void
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
         if(this.§?p§ != null)
         {
            this.§?p§.stop();
            this.§?p§ = null;
         }
      }
      
      private function §!>§(param1:int) : void
      {
         var _loc2_:§8K§ = LevelManager.§!!A§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         §'!Q§.setText(AngryBirdsFP11.sUserProgress.§0q§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc2_),"Textfield_CollectedStars" + param1);
         §'!Q§.setText(AngryBirdsFP11.sUserProgress.§;C§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc2_),"Textfield_ME_Score" + param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§;!9§.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function §-3§() : void
      {
         §+!i§.§>!y§("playClicked");
      }
      
      private function §98§(param1:Event) : void
      {
      }
      
      private function §<!&§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§`!O§("1000-" + _loc5_);
            mNextState = StateCutScene.§'!q§;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §<&§.§'!q§;
               break;
            case "CHAPTER0":
               this.§-3§();
               §-!Q§.§#3§("Menu_Confirm");
               LevelManager.§`^§ = 0;
               mNextState = §2!=§.§'!q§;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§`!G§.§<W§);
               this.mChapterTween0.play();
         }
      }
   }
}
