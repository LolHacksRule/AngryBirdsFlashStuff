package §%n§
{
   import §&a§.§1!Y§;
   import §,@§.§"!'§;
   import §-v§.§,!1§;
   import §32§.HighscoreSidebar;
   import §6!@§.§ !!§;
   import §6l§.§79§;
   import §7I§.§<!0§;
   import §7]§.§;T§;
   import §86§.§!!d§;
   import §8T§.§`!7§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import §`!+§.§,'§;
   
   public class §3v§ extends §91§
   {
      
      public static const §^6§:String = "ChapterSelectionState";
       
      
      private var §!2§:§,'§ = null;
      
      private var mChapterTween0:§3!2§ = null;
      
      private var mChapterTween2:§3!2§ = null;
      
      public function §3v§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5d§ = new §"!'§(75,0,0,1);
         §5!R§ = new §^R§(this);
         §5!R§.init(§7!^§.§`!E§.Views.View_ChapterSelection[0]);
         this.§!2§ = new §1!Y§(§,!1§.§2T§,"INGAME_THEME_3",false,3);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'! §.enableHighScoreTab(true);
         if(§79§.§#[§)
         {
            §79§.§#[§.start();
         }
         §,!1§.§2T§.§=!H§(true);
         §,!1§.§2T§.§&c§(true);
         §,!1§.§2T§.clearLevel();
         §,!1§.§2!L§(this.§!2§);
         this.§!2§.init();
         §"!@§.§>!$§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2![§();
         §5!R§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §5!R§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §5!R§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §5!R§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §'! §.changeState(HighscoreSidebar.§!!;§);
         §'! §.loadScoreTable(HighscoreSidebar.§@!=§);
         §'! §.enableLogOutButton(true);
      }
      
      private function §2![§() : void
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
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §,!1§.§>o§.update(param1);
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §8!_§.§^6§;
               break;
            case "CHAPTER2":
               §<!0§.playSound("Menu_Confirm");
               §!!d§.§&1§ = 1;
               mNextState = §[s§.§^6§;
               break;
            case "CHAPTER0":
               §<!0§.playSound("Menu_Confirm");
               §!!d§.§&1§ = 0;
               mNextState = §@t§.§^6§;
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §!!K§.§@!c§.§'!H§(§5!R§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween0 = §!!K§.§@!c§.§'!H§(§5!R§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween2 = §!!K§.§@!c§.§'!H§(§5!R§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§!!K§.§1<§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §!!K§.§@!c§.§'!H§(§5!R§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§!!K§.§1<§);
               this.mChapterTween0.play();
               break;
            case "VIDEOLINK":
               §"!@§.§8!I§(false);
               §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!@§.§6t§());
               this.§^l§();
         }
      }
      
      private function §^l§() : void
      {
         §`!7§.§-h§("openURL","html/video.jsp?v=XNDAzOTA0MzA0");
      }
   }
}
