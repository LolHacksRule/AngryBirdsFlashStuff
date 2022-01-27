package §>2§
{
   import § !N§.§#!O§;
   import § !N§.§[>§;
   import § !N§.§]!P§;
   import § !N§.§`v§;
   import §#n§.§1!D§;
   import §#n§.§2m§;
   import §3F§.§0z§;
   import §3F§.§[e§;
   import §3H§.Sprite;
   import §5=§.§8G§;
   import §5=§.§@!§;
   import §5J§.§>$§;
   import §64§.§,!E§;
   import §7E§.§!!$§;
   import §7E§.§@u§;
   import §^Q§.§<a§;
   import flash.display.Stage;
   
   public class §00§ extends §4h§
   {
       
      
      private var §<!#§:Stage;
      
      private var §]#§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §00§(param1:Stage)
      {
         this.§<!#§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§]#§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§]#§)
         {
            param1 *= this.timeMultiplier;
            if(§>$§.§3D§)
            {
               §>$§.§3D§.speed = this.timeMultiplier;
            }
         }
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(mReadyToRun)
         {
            clearLevel();
         }
         var _loc3_:§8G§ = §`!#§();
         var _loc4_:§@!§;
         (_loc4_ = new §@!§()).left = 0;
         _loc4_.top = -§<a§.§%N§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §<a§.§%N§ * 1.3;
         _loc4_.right = _loc4_.left + §<a§.§;!K§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §<a§.§;!K§;
         _loc4_.id = §<a§.§+B§;
         _loc3_.§#B§(_loc4_);
         var _loc5_:§@!§;
         (_loc5_ = new §@!§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §<a§.§;!K§;
         _loc5_.bottom = _loc5_.top + §<a§.§%N§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §<a§.§;!K§ / 2;
         _loc5_.id = §<a§.§%!+§;
         _loc3_.§#B§(_loc5_);
         §7!;§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§5Z§ != null)
         {
            _loc3_.theme = §5Z§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §#!O§
      {
         return new §#!O§(this.§<!#§.loaderInfo.parameters.assetsUrl || "",this.§<!#§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §`v§
      {
         if(§3!'§)
         {
            return §3!'§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§`v§) : §]!P§
      {
         return new §[>§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§`v§, param4:Number) : §2m§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §1!D§(param1,param2,param3,param4);
         }
         return new §2m§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§8G§) : §+!E§
      {
         return new §2$§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§8G§) : §0z§
      {
         return new §[e§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§]!P§, param2:§`v§) : §@u§
      {
         return new §!!$§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§8G§) : §<a§
      {
         return new §,!E§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§#!<§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§4!B§ = §!6§.§%!;§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
