package §9!?§
{
   import § "§.§8!3§;
   import § "§.§;4§;
   import §"§.§+C§;
   import §"§.§3o§;
   import §<k§.Sprite;
   import §[+§.§'!6§;
   import §[n§.§%@§;
   import §[n§.§5!!§;
   import §[n§.§7!@§;
   import §[n§.§?+§;
   import §`"§.§0!"§;
   import §`"§.§?!;§;
   import flash.display.Stage;
   
   public class §=X§ extends §^]§
   {
       
      
      private var § d§:Stage;
      
      public function §=X§(param1:Stage)
      {
         this.§ d§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §%@§
      {
         return new §%@§(this.§ d§.loaderInfo.parameters.assetsUrl || "",this.§ d§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §?+§
      {
         if(§0!4§)
         {
            return §0!4§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§?+§) : §7!@§
      {
         return new §5!!§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§?+§, param4:Number) : §3o§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §+C§(param1,param2,param3,param4);
         }
         return new §3o§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§;4§) : §%g§
      {
         return new §[_§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§;4§) : §?!;§
      {
         return new §0!"§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§;4§) : §'!6§
      {
         var _loc2_:String = §8!3§.§-[§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §'!6§(this,param1,1.1);
         }
         return new §'!6§(this,param1,1);
      }
   }
}
