package §7f§
{
   import §"C§.§7s§;
   import §%b§.§0!Z§;
   import §%b§.§=!!§;
   import §&!#§.§^!'§;
   import §0C§.§"!T§;
   import §0C§.§;!Q§;
   import §7G§.§1d§;
   import §@!§.§;"§;
   import §@!§.§?! §;
   import §`!_§.§"[§;
   import flash.display.Stage;
   import §null §.Sprite;
   
   public class §@+§ extends §0!Z§
   {
       
      
      public function §@+§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§;!Q§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §7!%§ = new §^!'§(§"!T§.§-Q§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§#!3§)
         {
            §5f§ = §^!'§.§]!^§(§#!3§);
            §5f§.speed = 1;
            §5f§.play();
            §4!Q§ = -1000;
            §#!3§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§;!Q§) : §=!!§
      {
         return new §8!M§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§?! §) : §;"§
      {
         return new §"[§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§;!Q§) : §7s§
      {
         return new §1d§(this,param1,new Sprite());
      }
      
      public function §=G§() : void
      {
         if(§7!%§)
         {
            (§7!%§ as §^!'§).§;4§(mLevelEngine.currentStep);
         }
      }
      
      public function §[!7§() : Boolean
      {
         return §"!T§.§-Q§ != "1-1" && §"!T§.§-Q§ != "1-2" && §"!T§.§-Q§ != "1-3";
      }
   }
}
