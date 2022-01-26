package §[x§
{
   import §1n§.§,!0§;
   import §1n§.§4!>§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §3"§.§8+§;
   import §9_§.§6!B§;
   import §9_§.§?!!§;
   import §[K§.§2!1§;
   import §^V§.Sprite;
   import §`6§.§0J§;
   import §`6§.§8!!§;
   import flash.display.Stage;
   
   public class §else§ extends §2^§
   {
       
      
      private var §8!G§:Stage;
      
      public function §else§(param1:Stage)
      {
         this.§8!G§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §try §
      {
         return new §try §(this.§8!G§.loaderInfo.parameters.assetsUrl || "",this.§8!G§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §5#§
      {
         if(§2!$§)
         {
            return §2!$§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§5#§) : §,!0§
      {
         return new §4!>§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§5#§, param4:Number) : §8!!§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §0J§(param1,param2,param3,param4);
         }
         return new §8!!§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§8+§) : §9"§
      {
         return new §+4§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§8+§) : §?!!§
      {
         return new §6!B§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§8+§) : §2!1§
      {
         return new §2!1§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
   }
}
