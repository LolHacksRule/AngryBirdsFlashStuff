package §`!4§
{
   import §#+§.§6!C§;
   import §#+§.§7#§;
   import §#?§.§%!5§;
   import §#?§.§1m§;
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §%!E§.§-§;
   import §90§.Sprite;
   import §>c§.§1!>§;
   import §>c§.§6d§;
   import §?!8§.§#K§;
   import §?!8§.§^!-§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import flash.display.Stage;
   
   public class §8R§ extends §6l§
   {
       
      
      private var §!^§:Stage;
      
      public function §8R§(param1:Stage)
      {
         this.§!^§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §%!5§
      {
         return new §%!5§(this.§!^§.loaderInfo.parameters.assetsUrl || "",this.§!^§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §6!4§
      {
         if(§4!,§)
         {
            return §4!,§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§6!4§) : §=E§
      {
         return new §1m§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§6!4§, param4:Number) : §1!>§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §6d§(param1,param2,param3,param4);
         }
         return new §1!>§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§9?§) : §^H§
      {
         return new §<&§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§9?§) : §#K§
      {
         return new §^!-§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§9?§) : §-§
      {
         var _loc2_:String = §`R§.§7S§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §-§(this,param1,1.1);
         }
         return new §-§(this,param1,1);
      }
      
      override protected function initParticleManager(param1:§=E§, param2:§6!4§) : §6!C§
      {
         return new §7#§(param1,param2);
      }
   }
}
