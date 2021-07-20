package §&!T§
{
   import §!![§.§%!H§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §"h§.§1!5§;
   import §+!8§.§-!N§;
   import §2Y§.Sprite;
   import §;!E§.§1!X§;
   import §=!<§.§1!1§;
   import §=!<§.§7#§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §^!5§.§&!E§;
   import §^!5§.§,4§;
   import flash.display.Stage;
   
   public class §<!,§ extends §^!2§
   {
       
      
      private var §18§:Stage;
      
      public function §<!,§(param1:Stage)
      {
         this.§18§ = param1;
         super(param1);
         super.§-!C§.simulateMultitouch = true;
      }
      
      override public function init(param1:§&!E§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §?i§ = new §%!H§(§,4§.§0!$§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§;$§)
         {
            §;;§ = §%!H§.initialize(§;$§);
            §;;§.speed = 1;
            §;;§.play();
            §null § = -1000;
            §;$§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§&!E§) : §9§
      {
         return new §%%§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§&!E§) : §-!N§
      {
         return new §1!X§(this,param1,new Sprite());
      }
      
      public function §6!Z§() : void
      {
         if(§?i§)
         {
            (§?i§ as §%!H§).§6!Z§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§>a§) : §>"§
      {
         return new §7#§(param1);
      }
      
      override protected function initialize(param1:§&!E§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §&!E§
      {
         return §9C§;
      }
      
      override protected function initParticleManager(param1:§>"§, param2:§>a§) : §?F§
      {
         return new §1!5§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §1!1§
      {
         return new §1!1§(this.§18§.loaderInfo.parameters.assetsUrl || "",this.§18§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : §>a§
      {
         if(§2n§)
         {
            return §2n§.textureManager;
         }
         return null;
      }
   }
}
