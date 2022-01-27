package §4!-§
{
   import §1E§.§5T§;
   import §1E§.§`_§;
   import §3B§.§6]§;
   import §3B§.§;w§;
   import §4!0§.§"e§;
   import §4!0§.§+!,§;
   import §4!0§.§3§;
   import §4!0§.§]u§;
   import §6h§.§?!I§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§#!F§;
   import §=h§.§9%§;
   import §>Y§.§-]§;
   import §>Y§.§2>§;
   import §@g§.§4!@§;
   import flash.display.Stage;
   
   public class §9!H§ extends §%o§
   {
       
      
      private var §,^§:Stage;
      
      private var §8!N§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §9!H§(param1:Stage)
      {
         this.§,^§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§8!N§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§8!N§)
         {
            param1 *= this.timeMultiplier;
            if(§4!@§.§<!!§)
            {
               §4!@§.§<!!§.speed = this.timeMultiplier;
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
         var _loc3_:§5T§ = §8<§();
         var _loc4_:§`_§;
         (_loc4_ = new §`_§()).left = 0;
         _loc4_.top = -§?!I§.§@^§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?!I§.§@^§ * 1.3;
         _loc4_.right = _loc4_.left + §?!I§.§-i§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §?!I§.§-i§;
         _loc4_.id = §?!I§.§6!<§;
         _loc3_.§^c§(_loc4_);
         var _loc5_:§`_§;
         (_loc5_ = new §`_§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?!I§.§-i§;
         _loc5_.bottom = _loc5_.top + §?!I§.§@^§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?!I§.§-i§ / 2;
         _loc5_.id = §?!I§.§3!P§;
         _loc3_.§^c§(_loc5_);
         §3!1§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[N§ != null)
         {
            _loc3_.theme = §[N§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §]u§
      {
         return new §]u§(this.§,^§.loaderInfo.parameters.assetsUrl || "",this.§,^§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §3§
      {
         if(§%'§)
         {
            return §%'§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§3§) : §+!,§
      {
         return new §"e§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§3§, param4:Number) : §;w§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §6]§(param1,param2,param3,param4);
         }
         return new §;w§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§5T§) : §2s§
      {
         return new §;!N§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§5T§) : §2>§
      {
         return new §-]§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§+!,§, param2:§3§) : § try§
      {
         return new §#!F§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§5T§) : §?!I§
      {
         return new §9%§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§;d§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§'!F§ = §,2§.§<!I§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
