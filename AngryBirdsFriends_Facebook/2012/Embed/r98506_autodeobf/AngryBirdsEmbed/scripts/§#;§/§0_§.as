package §#;§
{
   import §"a§.§8P§;
   import §"a§.§=!,§;
   import §"a§.§>X§;
   import §"a§.§`9§;
   import §&1§.§35§;
   import §&1§.§4K§;
   import §&c§.§3n§;
   import §&c§.§<'§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §;!5§.§=y§;
   import §;q§.Sprite;
   import flash.display.Stage;
   
   public class §0_§ extends §4!8§
   {
       
      
      private var § j§:Stage;
      
      public function §0_§(param1:Stage)
      {
         this.§ j§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §`9§
      {
         return new §`9§(this.§ j§.loaderInfo.parameters.assetsUrl || "",this.§ j§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §>X§
      {
         if(§3!D§)
         {
            return §3!D§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§>X§) : §8P§
      {
         return new §=!,§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§>X§, param4:Number) : §35§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §4K§(param1,param2,param3,param4);
         }
         return new §35§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§1w§) : §!l§
      {
         return new §">§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§1w§) : §<'§
      {
         return new §3n§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§1w§) : §=y§
      {
         var _loc2_:String = §-Z§.§%s§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §=y§(this,param1,1.1);
         }
         return new §=y§(this,param1,1);
      }
   }
}
