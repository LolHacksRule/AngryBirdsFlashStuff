package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   
   public class §'u§ extends § !v§
   {
      
      public static const §^!3§:String = "BlackBird";
       
      
      protected var §-3§:Number = 0.0;
      
      protected var §^!$§:Number = 0.0;
      
      protected var §%X§:Number = 0.0;
      
      protected var §>[§:Number = 0.0;
      
      protected var §,#7§:Number = 0.0;
      
      protected var §2^§:Number = 0.0;
      
      protected var §8,§:Number = 0.0;
      
      protected var §3!d§:Number = 0.0;
      
      protected var §`v§:Number;
      
      public function §'u§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§-3§ = param4.getNumberProperty("forceArcWidth");
         this.§^!$§ = param4.getNumberProperty("explosionForce");
         this.§%X§ = param4.getNumberProperty("explosionMinForce");
         this.§>[§ = param4.getNumberProperty("explosionRadius");
         this.§,#7§ = param4.getNumberProperty("explosionDamageRadius");
         this.§2^§ = param4.getNumberProperty("smallExplosionForce");
         this.§8,§ = param4.getNumberProperty("smallExplosionMinForce");
         this.§3!d§ = param4.getNumberProperty("smallExplosionRadius");
      }
      
      override protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:§7"7§ = new §7"7§();
         var _loc5_:Number = §3!+§(param2,param3);
         this.§`v§ = _loc5_;
         _loc4_.angle = _loc5_;
         _loc4_.§-"e§ = this.§-3§;
         _loc4_.explosionForce = this.§^!$§;
         _loc4_.explosionMinForce = this.§%X§;
         _loc4_.explosionRadius = this.§>[§;
         _loc4_.explosionDamageRadius = this.§,#7§;
         _loc4_.smallExplosionForce = this.§2^§;
         _loc4_.smallExplosionMinForce = this.§8,§;
         _loc4_.smallExplosionRadius = this.§3!d§;
         _loc4_.x = §?"Z§().GetPosition().x;
         _loc4_.y = §?"Z§().GetPosition().y;
         var _loc6_:§4"d§;
         if(_loc6_ = param1 as §4"d§)
         {
            _loc6_.§8#3§(100,800,600,0.2);
            _loc6_.§-!c§(_loc4_);
            _loc6_.§]o§(this);
            param1.addObject(reticleSprite,param2,param3,0,§super§.§4"D§,false,false,false,1,true);
         }
      }
      
      override protected function updateFlying() : void
      {
         if(!isNaN(this.§`v§))
         {
            §!L§(this.§`v§);
            §?"Z§().SetAngle(this.§`v§);
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
