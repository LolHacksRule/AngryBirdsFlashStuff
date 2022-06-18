package §6<§
{
   import §"k§.§02§;
   import §"k§.§1s§;
   import §+X§.§]D§;
   import §0H§.§0!&§;
   import §0H§.§7M§;
   import §8!`§.§%t§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §@$§.§9h§;
   import §]!D§.§?!9§;
   import §^!9§.§&5§;
   import flash.display.Stage;
   
   public class §9H§ extends §4J§
   {
       
      
      public function §9H§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§0!&§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §9!#§ = new §&5§(§7M§.§9-§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§#!+§)
         {
            §[!#§ = §&5§.§-W§(§#!+§);
            §[!#§.speed = 1;
            §[!#§.play();
            §=R§ = -1000;
            §#!+§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§0!&§) : §%t§
      {
         return new §=$§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§02§) : §1s§
      {
         return new §9h§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§0!&§) : §?!9§
      {
         return new §]D§(this,param1,new Sprite());
      }
      
      public function §#6§() : void
      {
         if(§9!#§)
         {
            (§9!#§ as §&5§).§1S§(mLevelEngine.currentStep);
         }
      }
      
      public function §8u§() : Boolean
      {
         return §7M§.§9-§ != "1-1" && §7M§.§9-§ != "1-2" && §7M§.§9-§ != "1-3";
      }
   }
}
