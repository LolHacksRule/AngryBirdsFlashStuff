package §0q§
{
   import §,!2§.§-!S§;
   import §4y§.§`L§;
   import §9!a§.Sprite;
   import §9T§.§#!4§;
   import §9T§.§=!^§;
   import §=0§.§ !C§;
   import §=0§.§>O§;
   import §?z§.§"[§;
   import §[>§.§'!'§;
   import §^9§.§3A§;
   import §^9§.§[!L§;
   import flash.display.Stage;
   
   public class §7+§ extends §=!^§
   {
       
      
      public function §7+§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§3A§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §;;§ = new §`L§(§[!L§.§^!X§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§,?§)
         {
            §%u§ = §`L§.§!f§(§,?§);
            §%u§.speed = 1;
            §%u§.play();
            §3-§ = -1000;
            §,?§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§3A§) : §#!4§
      {
         return new §#!_§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§>O§) : § !C§
      {
         return new §"[§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§3A§) : §'!'§
      {
         return new §-!S§(this,param1,new Sprite());
      }
      
      public function §26§() : void
      {
         if(§;;§)
         {
            (§;;§ as §`L§).§><§(mLevelEngine.currentStep);
         }
      }
      
      public function §^!G§() : Boolean
      {
         return §[!L§.§^!X§ != "1-1" && §[!L§.§^!X§ != "1-2" && §[!L§.§^!X§ != "1-3";
      }
   }
}
