package §!I§
{
   import § !$§.§7!!§;
   import § z§.§5+§;
   import §!#§.§;E§;
   import §+!]§.§!,§;
   import §+!]§.§#l§;
   import §+!]§.§0!B§;
   import §+!]§.§7'§;
   import §,!A§.§0i§;
   import §6!;§.Sprite;
   import §7e§.§#w§;
   import §7e§.§8!P§;
   import §8y§.§3!f§;
   import §9!'§.§0!%§;
   import §9!'§.§@!U§;
   import flash.display.Stage;
   
   public class §18§ extends §0!%§
   {
       
      
      private var §"!J§:Stage;
      
      public function §18§(param1:Stage)
      {
         this.§"!J§ = param1;
         super(param1);
         super.§0!2§.simulateMultitouch = true;
      }
      
      override public function init(param1:§8!P§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §09§ = new §;E§(§#w§.§ !'§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§=O§)
         {
            §5!A§ = §;E§.initialize(§=O§);
            §5!A§.speed = 1;
            §5!A§.play();
            §>§ = -1000;
            §=O§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§8!P§) : §@!U§
      {
         return new §8!!§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§8!P§) : §7!!§
      {
         return new §5+§(this,param1,new Sprite());
      }
      
      public function §#4§() : void
      {
         if(§09§)
         {
            (§09§ as §;E§).§#4§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§!,§) : §0!B§
      {
         return new §#l§(param1);
      }
      
      override protected function initialize(param1:§8!P§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §8!P§
      {
         return §6!S§;
      }
      
      override protected function initParticleManager(param1:§0!B§, param2:§!,§) : §0i§
      {
         return new §3!f§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §7'§
      {
         return new §7'§(this.§"!J§.loaderInfo.parameters.assetsUrl || "",this.§"!J§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : §!,§
      {
         if(§#M§)
         {
            return §#M§.textureManager;
         }
         return null;
      }
   }
}
