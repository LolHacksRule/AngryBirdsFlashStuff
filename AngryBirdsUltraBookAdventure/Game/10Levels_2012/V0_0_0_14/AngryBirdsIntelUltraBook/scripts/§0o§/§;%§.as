package §0o§
{
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.StateCutScene;
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §-2§.§[s§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §;!q§.§+F§;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import com.angrybirds.friendsbar.§&E§;
   
   public class §;%§ extends §+_§
   {
      
      public static var §2s§:String = "";
      
      public static const §3F§:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§4F§ = null;
      
      private var mChapterTween1:§4F§ = null;
      
      private var mChapterTween2:§4F§ = null;
      
      private var §^!0§:§4F§ = null;
      
      private var §>!b§:§4F§ = null;
      
      private var §0!d§:§+F§;
      
      private var §;5§:§[s§;
      
      public function §;%§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_ChapterFacebookSelection[0]);
         this.§;5§ = new §[s§(§`-§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!]§.§7!G§ as §[!m§).§7!6§.§?0§ = false;
         (§4!]§.§7!G§ as §[!m§).§ _§("");
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.start();
         }
         §4!]§.§8C§.§1B§(false);
         §4!]§.§8C§.clearLevel();
         if(§2s§ == "")
         {
            §6!H§.playSound("Intel_StartPlay",§6!H§.§8!$§,0,-1,this.§7d§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 3)
         {
            this.§33§(_loc1_);
            _loc1_++;
         }
         §`-§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §`-§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§'g§);
         this.§;5§.start();
      }
      
      private function §7d§() : void
      {
         if(§@!"§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         §2s§ == "";
         super.deActivate();
         this.§;5§.stop();
         this.§?6§();
         §`-§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §`-§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         §6!U§.§2s§ = §3F§;
      }
      
      private function §?6§() : void
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
         if(this.§^!0§ != null)
         {
            this.§^!0§.stop();
            this.§^!0§ = null;
         }
      }
      
      private function §33§(param1:int) : void
      {
         var _loc2_:§@+§ = LevelManager.§'v§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         §`-§.setText(AngryBirdsFP11.sUserProgress.§^!E§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc2_),"Textfield_CollectedStars" + param1);
         §`-§.setText(AngryBirdsFP11.sUserProgress.§<!=§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc2_),"Textfield_ME_Score" + param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§;5§.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§9!d§("1000-" + _loc5_);
            mNextState = StateCutScene.§3F§;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §6!5§.§3F§;
               break;
            case "CHAPTER0":
               §6!H§.playSound("Menu_Confirm");
               LevelManager.§;`§ = 0;
               mNextState = §6!U§.§3F§;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §5+§.§^Z§.§=!a§(§`-§.getItemByName("MovieClip_StartPlaying").mClip,{
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
               this.mChapterTween0 = §5+§.§^Z§.§=!a§(§`-§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5+§.§>!u§);
               this.mChapterTween0.play();
         }
      }
   }
}
