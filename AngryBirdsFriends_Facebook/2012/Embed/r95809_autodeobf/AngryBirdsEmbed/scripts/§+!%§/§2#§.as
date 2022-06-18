package §+!%§
{
   import § `§.§3F§;
   import §->§.Sprite;
   import §24§.§+§;
   import §24§.§6! §;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   import §<[§.§6q§;
   import §<[§.§?x§;
   import §[!$§.§"!%§;
   import §[!$§.§,2§;
   import §[!$§.§;"§;
   import §[!$§.§`d§;
   import flash.display.Stage;
   
   public class §2#§ extends §'!"§
   {
       
      
      private var §5R§:Stage;
      
      public function §2#§(param1:Stage)
      {
         this.§5R§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §;"§
      {
         return new §;"§(this.§5R§.loaderInfo.parameters.assetsUrl || "",this.§5R§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §"!%§
      {
         if(§!!3§)
         {
            return §!!3§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§"!%§) : §`d§
      {
         return new §,2§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§"!%§, param4:Number) : §6! §
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §+§(param1,param2,param3,param4);
         }
         return new §6! §(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§+!-§) : §-C§
      {
         return new §1+§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§+!-§) : §6q§
      {
         return new §?x§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§+!-§) : §3F§
      {
         var _loc2_:String = §!P§.§4R§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §3F§(this,param1,1.1);
         }
         return new §3F§(this,param1,1);
      }
   }
}
