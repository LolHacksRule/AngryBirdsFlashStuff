package §?b§
{
   import §!+§.§#-§;
   import §!+§.§5! §;
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §'k§.§2!3§;
   import §'k§.§;[§;
   import §6!'§.§2!<§;
   import §6!'§.§2i§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import flash.display.Stage;
   
   public class §8! § extends §7!,§
   {
       
      
      private var §%E§:Stage;
      
      public function §8! §(param1:Stage)
      {
         this.§%E§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §;[§
      {
         return new §;[§(this.§%E§.loaderInfo.parameters.assetsUrl || "",this.§%E§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : § >§
      {
         if(§1!B§)
         {
            return §1!B§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§ >§) : §#k§
      {
         return new §2!3§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§ >§, param4:Number) : §2!<§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §2i§(param1,param2,param3,param4);
         }
         return new §2!<§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§&!;§) : §4K§
      {
         return new §'D§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§&!;§) : §#-§
      {
         return new §5! §(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§&!;§) : §=_§
      {
         var _loc2_:String = §5j§.§%V§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §=_§(this,param1,1.1);
         }
         return new §=_§(this,param1,1);
      }
   }
}
