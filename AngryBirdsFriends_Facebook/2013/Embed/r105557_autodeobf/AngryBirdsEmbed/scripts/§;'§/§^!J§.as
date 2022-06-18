package §;'§
{
   import §,k§.§,!F§;
   import §,k§.§[A§;
   import §4n§.§'-§;
   import §4n§.§8y§;
   import §5B§.§6!>§;
   import §;^§.Sprite;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   import §=!K§.§3W§;
   import §=!K§.§5n§;
   import §=!K§.§]!%§;
   import §=!K§.§^Q§;
   import flash.display.Stage;
   
   public class §^!J§ extends §?!D§
   {
       
      
      private var § D§:Stage;
      
      public function §^!J§(param1:Stage)
      {
         this.§ D§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §5n§
      {
         return new §5n§(this.§ D§.loaderInfo.parameters.assetsUrl || "",this.§ D§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §^Q§
      {
         if(§]O§)
         {
            return §]O§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§^Q§) : §]!%§
      {
         return new §3W§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§^Q§, param4:Number) : §,!F§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §[A§(param1,param2,param3,param4);
         }
         return new §,!F§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§1!&§) : §8!;§
      {
         return new §`!7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§1!&§) : §8y§
      {
         return new §'-§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§1!&§) : §6!>§
      {
         var _loc2_:String = §[i§.§0A§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §6!>§(this,param1,1.1);
         }
         return new §6!>§(this,param1,1);
      }
   }
}
