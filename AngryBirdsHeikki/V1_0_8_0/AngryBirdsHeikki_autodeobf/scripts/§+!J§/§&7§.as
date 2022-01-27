package §+!J§
{
   import §+!#§.§"!6§;
   import §0!&§.§!'§;
   import §0!&§.§@=§;
   import §2z§.§2!U§;
   import §2z§.§@!N§;
   import §4!O§.§%F§;
   import §=!E§.Sprite;
   import §=8§.§"^§;
   import §]!C§.§!y§;
   import §]!C§.§0!d§;
   import §]!C§.§1R§;
   import §]!C§.§2<§;
   import §^t§.§<;§;
   import §`!@§.§`'§;
   import flash.display.Stage;
   
   public class §&7§ extends §2!U§
   {
       
      
      private var §8_§:Stage;
      
      public function §&7§(param1:Stage)
      {
         this.§8_§ = param1;
         super(param1);
         super.§5K§.simulateMultitouch = true;
      }
      
      override public function init(param1:§!'§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §9!,§ = new §"^§(§@=§.§!!S§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§2!A§)
         {
            §6![§ = §"^§.initialize(§2!A§);
            §6![§.speed = 1;
            §6![§.play();
            §use § = -1000;
            §2!A§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§!'§) : §@!N§
      {
         return new §#7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§!'§) : §"!6§
      {
         return new §%F§(this,param1,new Sprite());
      }
      
      public function §3!-§() : void
      {
         if(§9!,§)
         {
            (§9!,§ as §"^§).§3!-§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§0!d§) : §!y§
      {
         return new §1R§(param1);
      }
      
      override protected function initialize(param1:§!'§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §!'§
      {
         return §[n§;
      }
      
      override protected function initParticleManager(param1:§!y§, param2:§0!d§) : §<;§
      {
         return new §`'§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §2<§
      {
         return new §2<§(this.§8_§.loaderInfo.parameters.assetsUrl || "",this.§8_§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : §0!d§
      {
         if(§7!V§)
         {
            return §7!V§.textureManager;
         }
         return null;
      }
   }
}
