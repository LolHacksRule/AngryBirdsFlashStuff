package §,H§
{
   import §!N§.§68§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §+!6§.HighscoreSidebar;
   import §3U§.§2!%§;
   import §4!W§.§@R§;
   import §6A§.§"g§;
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import §=L§.§@E§;
   import §@W§.§2!_§;
   import §^!&§.§?!N§;
   
   public class §`$§ extends §1!a§
   {
      
      public static const §^!O§:String = "ChapterSelectionState";
       
      
      private var §0t§:§?!N§ = null;
      
      private var mChapterTween0:§'!9§ = null;
      
      private var mChapterTween2:§'!9§ = null;
      
      public function §`$§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`! § = new §@R§(75,0,0,1);
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_ChapterSelection[0]);
         this.§0t§ = new §68§(§7!K§.§=j§,"INGAME_THEME_3",false,3);
      }
      
      override public function activate() : void
      {
         super.activate();
         §+D§.enableHighScoreTab(true);
         if(§9J§.§?X§)
         {
            §9J§.§?X§.start();
         }
         §7!K§.§=j§.§ i§(true);
         §7!K§.§=j§.§6z§(true);
         §7!K§.§=j§.clearLevel();
         §7!K§.§,'§(this.§0t§);
         this.§0t§.init();
         §6T§.§"t§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§55§();
         §=!I§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §=!I§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §=!I§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §=!I§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §+D§.changeState(HighscoreSidebar.§#P§);
         §+D§.loadScoreTable(HighscoreSidebar.§`!0§);
         §+D§.enableLogOutButton(true);
      }
      
      private function §55§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §7!K§.§0!9§.update(param1);
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §<Z§.§^!O§;
               break;
            case "CHAPTER2":
               §@E§.playSound("Menu_Confirm");
               §2!%§.§[!=§ = 1;
               mNextState = §8E§.§^!O§;
               break;
            case "CHAPTER0":
               §@E§.playSound("Menu_Confirm");
               §2!%§.§[!=§ = 0;
               mNextState = §;!S§.§^!O§;
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §;!a§.§0%§.§,w§(§=!I§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §;!a§.§0%§.§,w§(§=!I§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §;!a§.§0%§.§,w§(§=!I§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§;!a§.§^!;§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §;!a§.§0%§.§,w§(§=!I§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§;!a§.§^!;§);
               this.mChapterTween0.play();
               break;
            case "VIDEOLINK":
               §6T§.§+!3§(false);
               §=!I§.getItemByName("MovieClip_SoundOff").setVisibility(!§6T§.§=_§());
               this.§,?§();
         }
      }
      
      private function §,?§() : void
      {
         §"g§.§`!@§("openURL","html/video.jsp?v=XNDAzOTA0MzA0");
      }
   }
}
