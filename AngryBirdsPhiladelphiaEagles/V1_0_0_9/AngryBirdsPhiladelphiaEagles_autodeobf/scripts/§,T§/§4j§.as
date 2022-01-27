package §,T§
{
   import §"g§.§;,§;
   import §"g§.§@!!§;
   import §&8§.§0Y§;
   import §&8§.§5P§;
   import §'!3§.§&!H§;
   import §-!'§.Sprite;
   import §0=§.§6!M§;
   import §0=§.§>!0§;
   import §5!6§.§&!!§;
   import §6!L§.§#!M§;
   import §6!L§.§4!5§;
   import §<A§.§ H§;
   import §<A§.§'K§;
   import §<A§.§'n§;
   import §<A§.§8t§;
   import flash.display.Stage;
   import §use §.§-!#§;
   
   public class §4j§ extends §[-§
   {
       
      
      private var §+<§:Stage;
      
      private var §=C§:Boolean = false;
      
      public var timeMultiplier:Number = 0.2;
      
      public function §4j§(param1:Stage)
      {
         this.§+<§ = param1;
         super(param1);
      }
      
      override public function set slowMotion(param1:Boolean) : void
      {
         this.§=C§ = param1;
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§=C§)
         {
            param1 *= this.timeMultiplier;
            if(§&!H§.§9o§)
            {
               §&!H§.§9o§.speed = this.timeMultiplier;
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
         var _loc3_:§#!M§ = §[!"§();
         var _loc4_:§4!5§;
         (_loc4_ = new §4!5§()).left = 0;
         _loc4_.top = -§&!!§.§+!P§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §&!!§.§+!P§ * 1.3;
         _loc4_.right = _loc4_.left + §&!!§.§0T§ * 1.3;
         _loc4_.y = -13.929;
         _loc4_.x = §&!!§.§0T§;
         _loc4_.id = §&!!§.§@K§;
         _loc3_.§9d§(_loc4_);
         var _loc5_:§4!5§;
         (_loc5_ = new §4!5§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §&!!§.§0T§;
         _loc5_.bottom = _loc5_.top + §&!!§.§+!P§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §&!!§.§0T§ / 2;
         _loc5_.id = §&!!§.§&a§;
         _loc3_.§9d§(_loc5_);
         §"+§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§['§ != null)
         {
            _loc3_.theme = §['§;
         }
         init(_loc3_);
      }
      
      override protected function initThemeGraphicsManager() : §8t§
      {
         return new §8t§(this.§+<§.loaderInfo.parameters.assetsUrl || "",this.§+<§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §'K§
      {
         if(§;8§)
         {
            return §;8§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'K§) : §'n§
      {
         return new § H§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'K§, param4:Number) : §@!!§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §;,§(param1,param2,param3,param4);
         }
         return new §@!!§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§#!M§) : §@6§
      {
         return new §;H§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§#!M§) : §6!M§
      {
         return new §>!0§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§'n§, param2:§'K§) : §5P§
      {
         return new §0Y§(param1,param2);
      }
      
      override protected function initLevelCamera(param1:§#!M§) : §&!!§
      {
         return new §-!#§(this,param1,1);
      }
      
      override public function get damageParticleLimit() : int
      {
         return 5;
      }
      
      override public function shootBird(param1:§4!<§, param2:Number, param3:Number) : void
      {
         if(param1.name == "BIRD_SARDINE")
         {
            param1.§"A§ = §2`§.§'P§;
         }
         super.shootBird(param1,param2,param3);
      }
   }
}
