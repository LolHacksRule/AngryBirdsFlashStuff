package §3G§
{
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§+q§;
   import §5`§.§1p§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §8u§.§,!<§;
   import §8u§.§6a§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import §@§.§ f§;
   import §@§.§5r§;
   import flash.display.Stage;
   
   public class §null § extends §!E§
   {
       
      
      private var §?$§:Stage;
      
      public function §null §(param1:Stage)
      {
         this.§?$§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §@B§
      {
         return new §@B§(this.§?$§.loaderInfo.parameters.assetsUrl || "",this.§?$§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §?y§
      {
         if(§<!?§)
         {
            return §<!?§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§?y§) : §+q§
      {
         return new §1p§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§?y§, param4:Number) : §5r§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new § f§(param1,param2,param3,param4);
         }
         return new §5r§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§^!9§) : §3X§
      {
         return new §!!I§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§^!9§) : §6a§
      {
         return new §,!<§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§^!9§) : §^z§
      {
         var _loc2_:String = §59§.§%j§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §^z§(this,param1,1.1);
         }
         return new §^z§(this,param1,1);
      }
   }
}
