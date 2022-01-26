package §5N§
{
   import §+D§.§5!P§;
   import §+D§.§5@§;
   import §,!R§.§%'§;
   import §,y§.§+K§;
   import §9!T§.§;!_§;
   import §=X§.§"!6§;
   import §=X§.§7!4§;
   import §?!B§.§[,§;
   import §[=§.Sprite;
   import §`!H§.§+3§;
   import §`!H§.§0B§;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   import flash.display.Stage;
   import §while§.§6a§;
   
   public class §7,§ extends §5!P§
   {
       
      
      private var §8I§:Stage;
      
      public function §7,§(param1:Stage)
      {
         this.§8I§ = param1;
         super(param1);
         super.§28§.simulateMultitouch = true;
      }
      
      override public function init(param1:§"!6§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         dynamic = new §6a§(§7!4§.§"P§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§?!;§)
         {
            §1%§ = §6a§.initialize(§?!;§);
            §1%§.speed = 1;
            §1%§.play();
            §=!K§ = -1000;
            §?!;§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§"!6§) : §5@§
      {
         return new §!!I§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§"!6§) : §;!_§
      {
         return new §+K§(this,param1,new Sprite());
      }
      
      public function §9!P§() : void
      {
         if(dynamic)
         {
            (dynamic as §6a§).§9!P§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§@!E§) : §9;§
      {
         return new §0B§(param1);
      }
      
      override protected function initialize(param1:§"!6§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §"!6§
      {
         return § !D§;
      }
      
      override protected function initParticleManager(param1:§9;§, param2:§@!E§) : §[,§
      {
         return new §%'§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §+3§
      {
         return new §+3§(this.§8I§.loaderInfo.parameters.assetsUrl || "",this.§8I§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : §@!E§
      {
         if(§^I§)
         {
            return §^I§.textureManager;
         }
         return null;
      }
   }
}
