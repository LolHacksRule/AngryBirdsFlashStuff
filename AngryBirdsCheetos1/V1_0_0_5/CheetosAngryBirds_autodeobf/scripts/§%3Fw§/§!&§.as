package §?w§
{
   import §!!R§.Sprite;
   import §#!1§.§1A§;
   import §#K§.§<!+§;
   import §#K§.§?I§;
   import §#v§.§-!7§;
   import §&!W§.§2z§;
   import §&!W§.§8!K§;
   import §,!+§.§;!1§;
   import §?'§.§'L§;
   import §?'§.§9N§;
   import flash.display.Stage;
   import §package§.§'!"§;
   
   public class §!&§ extends §9N§
   {
       
      
      public function §!&§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§?I§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §'O§ = new §;!1§(§<!+§.§^R§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§^=§)
         {
            §&q§ = §;!1§.§<!E§(§^=§);
            §&q§.speed = 1;
            §&q§.play();
            §`@§ = -1000;
            §^=§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§?I§) : §'L§
      {
         return new §null§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§8!K§) : §2z§
      {
         return new §1A§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§?I§) : §-!7§
      {
         return new §'!"§(this,param1,new Sprite());
      }
      
      public function §@!,§() : void
      {
         if(§'O§)
         {
            (§'O§ as §;!1§).§]I§(mLevelEngine.currentStep);
         }
      }
      
      public function §`!P§() : Boolean
      {
         return §<!+§.§^R§ != "1-1" && §<!+§.§^R§ != "1-2" && §<!+§.§^R§ != "1-3";
      }
   }
}
