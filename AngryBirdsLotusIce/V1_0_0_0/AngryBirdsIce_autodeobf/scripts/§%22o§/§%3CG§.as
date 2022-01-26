package §"o§
{
   import §&V§.§,w§;
   import §&V§.§;!B§;
   import §&V§.§^!8§;
   import §&V§.§`V§;
   import §2W§.§4!$§;
   import §;f§.§^o§;
   import §@!=§.Sprite;
   import §finally§.§3X§;
   import §finally§.§9+§;
   import flash.display.Stage;
   import §while§.§+!;§;
   import §while§.§>!$§;
   
   public class §<G§ extends § M§
   {
       
      
      private var §>t§:Stage;
      
      public function §<G§(param1:Stage)
      {
         this.§>t§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §`V§
      {
         return new §`V§(this.§>t§.loaderInfo.parameters.assetsUrl || "",this.§>t§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §,w§
      {
         if(§var§)
         {
            return §var§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§,w§) : §^!8§
      {
         return new §;!B§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§,w§, param4:Number) : §+!;§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §>!$§(param1,param2,param3,param4);
         }
         return new §+!;§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§^o§) : §<+§
      {
         return new §0-§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§^o§) : §3X§
      {
         return new §9+§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§^o§) : §4!$§
      {
         return new §4!$§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
   }
}
