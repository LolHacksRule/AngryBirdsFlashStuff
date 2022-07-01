package §<!<§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §1=§.§'F§;
   import §1=§.§-d§;
   import §=U§.§&!U§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §=U§.§<!f§;
   import §>!'§.§'!Y§;
   import §>!'§.§;T§;
   import §`a§.§ !U§;
   import flash.display.Stage;
   
   public class §#!H§ extends §7E§
   {
       
      
      private var §"$§:Stage;
      
      public function §#!H§(param1:Stage)
      {
         this.§"$§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §-b§
      {
         return new §-b§(this.§"$§.loaderInfo.parameters.assetsUrl || "",this.§"$§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §3p§
      {
         if(§%^§)
         {
            return §%^§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§3p§) : §&!U§
      {
         return new §<!f§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§3p§, param4:Number) : §-d§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §'F§(param1,param2,param3,param4);
         }
         return new §-d§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§2! §) : §;§
      {
         return new §5!Y§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§2! §) : §'!Y§
      {
         return new §;T§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§2! §) : § !U§
      {
         var _loc2_:String = §1^§.§ ]§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new § !U§(this,param1,1.1);
         }
         return new § !U§(this,param1,1);
      }
   }
}
