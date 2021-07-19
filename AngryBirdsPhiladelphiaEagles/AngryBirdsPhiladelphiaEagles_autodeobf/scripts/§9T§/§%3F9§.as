package §9T§
{
   import § N§.Sprite;
   import §#e§.§"!J§;
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §#e§.§@!+§;
   import §-!&§.§20§;
   import §-!&§.§[J§;
   import §-!<§.§29§;
   import §-!<§.§5!5§;
   import §-!O§.§?Z§;
   import §1&§.§["§;
   import §1&§.§]T§;
   import §5Z§.§[Z§;
   import §<!A§.§,-§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   import flash.display.Stage;
   
   public class §?9§ extends §1r§
   {
       
      
      private var §@&§:Stage;
      
      private var §?$§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §?9§(param1:Stage)
      {
         this.§@&§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§?$§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§?$§)
         {
            param1 *= this.timeMultiplier;
            if(§[Z§.§[A§)
            {
               §[Z§.§[A§.speed = this.timeMultiplier;
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
         var _loc3_:§[z§ = §,o§();
         var _loc4_:§]X§;
         (_loc4_ = new §]X§()).left = 0;
         _loc4_.top = -§?Z§.§&5§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?Z§.§&5§ * 1.3;
         _loc4_.right = _loc4_.left + §?Z§.§@!C§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §?Z§.§@!C§;
         _loc4_.id = §?Z§.§2d§;
         _loc3_.§-!L§(_loc4_);
         var _loc5_:§]X§;
         (_loc5_ = new §]X§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?Z§.§@!C§;
         _loc5_.bottom = _loc5_.top + §?Z§.§&5§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?Z§.§@!C§ / 2;
         _loc5_.id = §?Z§.§`"§;
         _loc3_.§-!L§(_loc5_);
         §do §(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§2n§ != null)
         {
            _loc3_.theme = §2n§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §1b§
      {
         return new §1b§(this.§@&§.loaderInfo.parameters.assetsUrl || "",this.§@&§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §'?§
      {
         if(§&?§)
         {
            return §&?§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'?§) : §@!+§
      {
         return new §"!J§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'?§, param4:Number) : §["§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §]T§(param1,param2,param3,param4);
         }
         return new §["§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§[z§) : §97§
      {
         return new §9j§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§[z§) : §20§
      {
         return new §[J§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§@!+§, param2:§'?§) : §5!5§
      {
         return new §29§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§[z§) : §?Z§
      {
         return new §,-§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§>>§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§4!9§ = §6O§.§;v§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
