package §%"§
{
   import § "§.§5!E§;
   import § "§.§8i§;
   import §'D§.§3h§;
   import §'R§.§!Z§;
   import §'R§.§!m§;
   import §;!$§.§%!P§;
   import §;;§.§7U§;
   import §;;§.§9"§;
   import §<!N§.Sprite;
   import §?!;§.§;!,§;
   import §?!;§.§>w§;
   import §^'§.§ !C§;
   import §^'§.§ if§;
   import §^'§.§?!@§;
   import §^'§.§[!4§;
   import §^h§.§2l§;
   import flash.display.Stage;
   
   public class §"!-§ extends § do§
   {
       
      
      private var §3+§:Stage;
      
      private var §9!H§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §"!-§(param1:Stage)
      {
         this.§3+§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§9!H§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§9!H§)
         {
            param1 *= this.timeMultiplier;
            if(§2l§.§9!'§)
            {
               §2l§.§9!'§.speed = this.timeMultiplier;
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
         var _loc3_:§;!,§ = §?;§();
         var _loc4_:§>w§;
         (_loc4_ = new §>w§()).left = 0;
         _loc4_.top = -§3h§.§`!'§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §3h§.§`!'§ * 1.3;
         _loc4_.right = _loc4_.left + §3h§.§6!B§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §3h§.§6!B§;
         _loc4_.id = §3h§.§&!5§;
         _loc3_.§-!M§(_loc4_);
         var _loc5_:§>w§;
         (_loc5_ = new §>w§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §3h§.§6!B§;
         _loc5_.bottom = _loc5_.top + §3h§.§`!'§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §3h§.§6!B§ / 2;
         _loc5_.id = §3h§.§?4§;
         _loc3_.§-!M§(_loc5_);
         §<!%§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§>[§ != null)
         {
            _loc3_.theme = §>[§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §[!4§
      {
         return new §[!4§(this.§3+§.loaderInfo.parameters.assetsUrl || "",this.§3+§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : § !C§
      {
         if(§9P§)
         {
            return §9P§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§ !C§) : §?!@§
      {
         return new § if§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§ !C§, param4:Number) : §5!E§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §8i§(param1,param2,param3,param4);
         }
         return new §5!E§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§;!,§) : §7?§
      {
         return new §+3§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§;!,§) : §!m§
      {
         return new §!Z§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§?!@§, param2:§ !C§) : §9"§
      {
         return new §7U§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§;!,§) : §3h§
      {
         return new §%!P§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§96§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§5&§ = § !,§.§-w§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
