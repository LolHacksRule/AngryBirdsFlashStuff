package §,F§
{
   import § d§.§'!"§;
   import § d§.§3§;
   import §"§.§"@§;
   import §"W§.§?!T§;
   import §#!f§.Sprite;
   import §+s§.§?2§;
   import §3!§.§'!?§;
   import §3!§.§-e§;
   import §3!§.§9!#§;
   import §3!§.§9i§;
   import §8! §.§#z§;
   import §8! §.§1_§;
   import §['§.§!!#§;
   import §^B§.§ M§;
   import flash.display.Stage;
   
   public class §4!N§ extends §'!"§
   {
       
      
      private var §%!$§:Stage;
      
      public function §4!N§(param1:Stage)
      {
         this.§%!$§ = param1;
         super(param1);
         super.§60§.simulateMultitouch = true;
      }
      
      override public function init(param1:§1_§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §7!9§ = new §?2§(§#z§.§@k§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§,_§)
         {
            §2@§ = §?2§.initialize(§,_§);
            §2@§.speed = 1;
            §2@§.play();
            §8@§ = -1000;
            §,_§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§1_§) : §3§
      {
         return new §=x§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§1_§) : §?!T§
      {
         return new §!!#§(this,param1,new Sprite());
      }
      
      public function §'Z§() : void
      {
         if(§7!9§)
         {
            (§7!9§ as §?2§).§'Z§(mLevelEngine.currentStep);
         }
      }
      
      override protected function initAnimationManager(param1:§-e§) : §9i§
      {
         return new §9!#§(param1);
      }
      
      override protected function initialize(param1:§1_§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §1_§
      {
         return §+!e§;
      }
      
      override protected function initParticleManager(param1:§9i§, param2:§-e§) : §"@§
      {
         return new § M§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §'!?§
      {
         return new §'!?§(this.§%!$§.loaderInfo.parameters.assetsUrl || "",this.§%!$§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override public function get backgroundTextureManager() : §-e§
      {
         if(§;§)
         {
            return §;§.textureManager;
         }
         return null;
      }
   }
}
