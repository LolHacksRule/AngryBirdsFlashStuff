package §`i§
{
   import §#!1§.§!?§;
   import §#!1§.§;^§;
   import §+6§.§4j§;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §2$§.§+u§;
   import §2$§.§74§;
   import §6u§.§3W§;
   import §6u§.§67§;
   import §6u§.§;=§;
   import §6u§.§@N§;
   import §]!6§.Sprite;
   import flash.display.Stage;
   
   public class §1!=§ extends §2W§
   {
       
      
      private var §6Y§:Stage;
      
      public function §1!=§(param1:Stage)
      {
         this.§6Y§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §;=§
      {
         return new §;=§(this.§6Y§.loaderInfo.parameters.assetsUrl || "",this.§6Y§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §3W§
      {
         if(§<k§)
         {
            return §<k§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§3W§) : §@N§
      {
         return new §67§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§3W§, param4:Number) : §+u§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §74§(param1,param2,param3,param4);
         }
         return new §+u§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§3!H§) : §while§
      {
         return new §%!D§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§3!H§) : §;^§
      {
         return new §!?§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§3!H§) : §4j§
      {
         var _loc2_:String = §#!G§.§9C§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §4j§(this,param1,1.1);
         }
         return new §4j§(this,param1,1);
      }
   }
}
