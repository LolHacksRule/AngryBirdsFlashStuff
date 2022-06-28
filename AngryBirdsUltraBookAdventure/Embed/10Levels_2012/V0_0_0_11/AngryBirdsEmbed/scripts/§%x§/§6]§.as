package §%x§
{
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §-!0§.§<@§;
   import §-!0§.§`Q§;
   import §6!@§.§5l§;
   import §6!@§.§;Y§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §?^§.Sprite;
   import §[F§.§`m§;
   import §]!9§.§75§;
   import §]!9§.§]!H§;
   import flash.display.Stage;
   
   public class §6]§ extends §#;§
   {
       
      
      private var §<!1§:Stage;
      
      public function §6]§(param1:Stage)
      {
         this.§<!1§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §2h§
      {
         return new §2h§(this.§<!1§.loaderInfo.parameters.assetsUrl || "",this.§<!1§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §'!3§
      {
         if(§-!"§)
         {
            return §-!"§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'!3§) : §`Q§
      {
         return new §<@§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'!3§, param4:Number) : §5l§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §;Y§(param1,param2,param3,param4);
         }
         return new §5l§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§9R§) : §3=§
      {
         return new §,6§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§9R§) : §]!H§
      {
         return new §75§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§9R§) : §`m§
      {
         var _loc2_:String = §6M§.§[z§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §`m§(this,param1,1.1);
         }
         return new §`m§(this,param1,1);
      }
   }
}
