package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §9"J§ extends §9"k§
   {
      
      public static const §+"§:String = "BlackBird";
       
      
      protected var §+#9§:Number = 0.0;
      
      protected var §#+§:Number = 0.0;
      
      protected var §>#Q§:Number = 0.0;
      
      protected var §]#V§:Number = 0.0;
      
      protected var § !q§:Number = 0.0;
      
      protected var §#!;§:Number = 0.0;
      
      protected var §>"8§:Number = 0.0;
      
      protected var §^4§:Number = 0.0;
      
      protected var §%e§:Number;
      
      public function §9"J§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§+#9§ = param4.getNumberProperty("forceArcWidth");
         this.§#+§ = param4.getNumberProperty("explosionForce");
         this.§>#Q§ = param4.getNumberProperty("explosionMinForce");
         this.§]#V§ = param4.getNumberProperty("explosionRadius");
         this.§ !q§ = param4.getNumberProperty("explosionDamageRadius");
         this.§#!;§ = param4.getNumberProperty("smallExplosionForce");
         this.§>"8§ = param4.getNumberProperty("smallExplosionMinForce");
         this.§^4§ = param4.getNumberProperty("smallExplosionRadius");
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:§+c§ = new §+c§();
         var _loc5_:Number = §>#8§(param2,param3);
         this.§%e§ = _loc5_;
         _loc4_.angle = _loc5_;
         _loc4_.§5e§ = this.§+#9§;
         _loc4_.explosionForce = this.§#+§;
         _loc4_.explosionMinForce = this.§>#Q§;
         _loc4_.explosionRadius = this.§]#V§;
         _loc4_.explosionDamageRadius = this.§ !q§;
         _loc4_.smallExplosionForce = this.§#!;§;
         _loc4_.smallExplosionMinForce = this.§>"8§;
         _loc4_.smallExplosionRadius = this.§^4§;
         _loc4_.x = §3!t§().GetPosition().x;
         _loc4_.y = §3!t§().GetPosition().y;
         var _loc6_:§ [§;
         if(_loc6_ = param1 as § [§)
         {
            _loc6_.§&Q§(100,800,600,0.2);
            _loc6_.§4#>§(_loc4_);
            _loc6_.§ a§(this);
            param1.addObject(reticleSprite,param2,param3,0,§;=§.§""3§,false,false,false,1,true);
         }
      }
      
      override protected function updateFlying() : void
      {
         if(!isNaN(this.§%e§))
         {
            §8"r§(this.§%e§);
            §3!t§().SetAngle(this.§%e§);
         }
         else
         {
            super.updateFlying();
         }
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
