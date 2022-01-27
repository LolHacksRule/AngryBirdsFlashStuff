package §,!F§
{
   import §+f§.§2!C§;
   import §+f§.§4!8§;
   import §+f§.§=T§;
   import §+f§.§@d§;
   import §3!%§.§#!K§;
   import §3!%§.§3P§;
   import §4G§.Sprite;
   import §8!;§.§+!N§;
   import §8x§.§4A§;
   import §8x§.§>A§;
   import §='§.§ s§;
   import §='§.§7A§;
   import §>w§.;
   import §[!1§.§,!'§;
   import §[!1§.§-!0§;
   import §[!A§.§+!!§;
   import flash.display.Stage;
   
   public class §0f§ extends §#§
   {
       
      
      private var §`v§:Stage;
      
      private var §%!1§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §0f§(param1:Stage)
      {
         this.§`v§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§%!1§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§%!1§)
         {
            param1 *= this.timeMultiplier;
            if(§#0§.§]!=§)
            {
               §#0§.§]!=§.speed = this.timeMultiplier;
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
         var _loc3_:§#!K§ = §0!#§();
         var _loc4_:§3P§;
         (_loc4_ = new §3P§()).left = 0;
         _loc4_.top = -§+!!§.§>"§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §+!!§.§>"§ * 1.3;
         _loc4_.right = _loc4_.left + §+!!§.§;!K§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §+!!§.§;!K§;
         _loc4_.id = §+!!§.§;!#§;
         _loc3_.§8c§(_loc4_);
         var _loc5_:§3P§;
         (_loc5_ = new §3P§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §+!!§.§;!K§;
         _loc5_.bottom = _loc5_.top + §+!!§.§>"§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §+!!§.§;!K§ / 2;
         _loc5_.id = §+!!§.§[y§;
         _loc3_.§8c§(_loc5_);
         §>!0§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§8B§ != null)
         {
            _loc3_.theme = §8B§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §2!C§
      {
         return new §2!C§(this.§`v§.loaderInfo.parameters.assetsUrl || "",this.§`v§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §4!8§
      {
         if(§,!O§)
         {
            return §,!O§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§4!8§) : §@d§
      {
         return new §=T§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§4!8§, param4:Number) : §7A§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new § s§(param1,param2,param3,param4);
         }
         return new §7A§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§#!K§) : §,!7§
      {
         return new §6c§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§#!K§) : §>A§
      {
         return new §4A§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§@d§, param2:§4!8§) : §,!'§
      {
         return new §-!0§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§#!K§) : §+!!§
      {
         return new §+!N§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§]!6§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§+!>§ = §1J§.§1F§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
