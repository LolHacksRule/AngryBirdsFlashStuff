package §3X§
{
   import §!!V§.§&I§;
   import §!!V§.§<!>§;
   import §&!5§.Sprite;
   import §&!S§.§]F§;
   import §&e§.§`!U§;
   import §&o§.§3!1§;
   import §9!2§.§'![§;
   import §9!2§.§0!5§;
   import §>8§.§#%§;
   import §>8§.§?2§;
   import §]!+§.§'§;
   import flash.display.Stage;
   
   public class §#!B§ extends §&I§
   {
       
      
      public function §#!B§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§#%§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §-!I§ = new §3!1§(§?2§.§=$§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§2!7§)
         {
            §[e§ = §3!1§.§?!V§(§2!7§);
            §[e§.speed = 1;
            §[e§.play();
            §?Q§ = -1000;
            §2!7§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§#%§) : §<!>§
      {
         return new §%+§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§'![§) : §0!5§
      {
         return new §`!U§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§#%§) : §'§
      {
         return new §]F§(this,param1,new Sprite());
      }
      
      public function §?H§() : void
      {
         if(§-!I§)
         {
            (§-!I§ as §3!1§).§'!0§(mLevelEngine.currentStep);
         }
      }
      
      public function §=!N§() : Boolean
      {
         return §?2§.§=$§ != "1-1" && §?2§.§=$§ != "1-2" && §?2§.§=$§ != "1-3";
      }
   }
}
