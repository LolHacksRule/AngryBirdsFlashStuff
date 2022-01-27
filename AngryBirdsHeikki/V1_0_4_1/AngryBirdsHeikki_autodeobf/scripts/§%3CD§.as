package
{
   import § var§.§[!!§;
   import §%O§.§ !§;
   import §%O§.§"n§;
   import §%O§.§&t§;
   import §%O§.§`b§;
   import §,J§.§7!A§;
   import §,J§.§74§;
   import §3l§.§>!2§;
   import §7F§.§8u§;
   import §<!-§.Sprite;
   import §>!Z§.§`!S§;
   import §^!7§.§]H§;
   import §^!7§.§^A§;
   import §`!X§.§@!^§;
   import flash.display.Stage;
   
   public class §<D§ extends §^A§
   {
       
      
      private var §>>§:Stage;
      
      public function §<D§(param1:Stage)
      {
         this.§>>§ = param1;
         super(param1);
         super.§&!G§.simulateMultitouch = true;
      }
      
      override public function init(param1:§74§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §-!_§ = new §8u§(§7!A§.§ !A§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§^h§)
         {
            §<!Y§ = §8u§.initialize(§^h§);
            §<!Y§.speed = 1;
            §<!Y§.play();
            §+<§ = -1000;
            §^h§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§74§) : §]H§
      {
         return new §!E§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§74§) : §@!^§
      {
         return new §[!!§(this,param1,new Sprite());
      }
      
      public function §>Y§() : void
      {
         if(§-!_§)
         {
            (§-!_§ as §8u§).§>Y§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§ !§) : §`b§
      {
         return new §"n§(param1);
      }
      
      override protected function initialize(param1:§74§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §74§
      {
         return §>!$§;
      }
      
      override protected function initParticleManager(param1:§`b§, param2:§ !§) : §`!S§
      {
         return new §>!2§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §&t§
      {
         return new §&t§(this.§>>§.loaderInfo.parameters.assetsUrl || "",this.§>>§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : § !§
      {
         if(§+s§)
         {
            return §+s§.textureManager;
         }
         return null;
      }
   }
}
