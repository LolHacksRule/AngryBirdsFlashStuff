package §+!7§
{
   import §"!@§.§&;§;
   import §"!@§.§3!+§;
   import §#!P§.§#A§;
   import §+!,§.§&`§;
   import §0<§.§0s§;
   import §3E§.§6w§;
   import §3E§.§]Y§;
   import §7u§.Sprite;
   import §=!M§.§ ]§;
   import §`!B§.§'I§;
   import §`!B§.§=m§;
   import flash.display.Stage;
   
   public class §'u§ extends §6w§
   {
       
      
      public function §'u§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§&;§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §!K§ = new §0s§(§3!+§.§%2§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§0P§)
         {
            §,;§ = §0s§.§8j§(§0P§);
            §,;§.speed = 1;
            §,;§.play();
            §0N§ = -1000;
            §0P§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§&;§) : §]Y§
      {
         return new §[!]§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§=m§) : §'I§
      {
         return new §&`§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§&;§) : §#A§
      {
         return new § ]§(this,param1,new Sprite());
      }
      
      public function §"!8§() : void
      {
         if(§!K§)
         {
            (§!K§ as §0s§).§;![§(mLevelEngine.currentStep);
         }
      }
      
      public function §#!9§() : Boolean
      {
         return §3!+§.§%2§ != "1-1" && §3!+§.§%2§ != "1-2" && §3!+§.§%2§ != "1-3";
      }
   }
}
