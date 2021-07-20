package §6A§
{
   import §!j§.§8!G§;
   import §!j§.§;[§;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §2k§.§`n§;
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   import §9K§.§9!E§;
   import §9K§.§`!H§;
   import §^!A§.§@H§;
   import §^!A§.§[Q§;
   import flash.display.Stage;
   
   public class §&>§ extends § !§
   {
       
      
      private var §]!M§:Stage;
      
      public function §&>§(param1:Stage)
      {
         this.§]!M§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §`!H§
      {
         return new §`!H§(this.§]!M§.loaderInfo.parameters.assetsUrl || "",this.§]!M§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §5!H§
      {
         if(§-!<§)
         {
            return §-!<§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§5!H§) : §"!?§
      {
         return new §9!E§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§5!H§, param4:Number) : §;[§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §8!G§(param1,param2,param3,param4);
         }
         return new §;[§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§@Z§) : §4!C§
      {
         return new §"T§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§@Z§) : §@H§
      {
         return new §[Q§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§@Z§) : §`n§
      {
         var _loc2_:String = §[4§.§"!>§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §`n§(this,param1,1.1);
         }
         return new §`n§(this,param1,1);
      }
   }
}
