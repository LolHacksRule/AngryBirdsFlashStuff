package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §;" § extends §2!a§
   {
      
      public static const §5!L§:String = "BlackBird";
       
      
      protected var §-"h§:Number = 0.0;
      
      protected var §!"5§:Number = 0.0;
      
      protected var §@">§:Number = 0.0;
      
      protected var §'&§:Number = 0.0;
      
      protected var §1##§:Number = 0.0;
      
      protected var §8!x§:Number = 0.0;
      
      protected var §'!,§:Number = 0.0;
      
      protected var §9"=§:Number = 0.0;
      
      protected var §?"F§:Number;
      
      public function §;" §(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§-"h§ = param4.getNumberProperty("forceArcWidth");
         this.§!"5§ = param4.getNumberProperty("explosionForce");
         this.§@">§ = param4.getNumberProperty("explosionMinForce");
         this.§'&§ = param4.getNumberProperty("explosionRadius");
         this.§1##§ = param4.getNumberProperty("explosionDamageRadius");
         this.§8!x§ = param4.getNumberProperty("smallExplosionForce");
         this.§'!,§ = param4.getNumberProperty("smallExplosionMinForce");
         this.§9"=§ = param4.getNumberProperty("smallExplosionRadius");
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:§`!7§ = new §`!7§();
         var _loc5_:Number = §'#7§(param2,param3);
         this.§?"F§ = _loc5_;
         _loc4_.angle = _loc5_;
         _loc4_.§0#'§ = this.§-"h§;
         _loc4_.explosionForce = this.§!"5§;
         _loc4_.explosionMinForce = this.§@">§;
         _loc4_.explosionRadius = this.§'&§;
         _loc4_.explosionDamageRadius = this.§1##§;
         _loc4_.smallExplosionForce = this.§8!x§;
         _loc4_.smallExplosionMinForce = this.§'!,§;
         _loc4_.smallExplosionRadius = this.§9"=§;
         _loc4_.x = §3"s§().GetPosition().x;
         _loc4_.y = §3"s§().GetPosition().y;
         var _loc6_:§;"9§;
         if(_loc6_ = param1 as §;"9§)
         {
            _loc6_.§["a§(100,800,600,0.2);
            _loc6_.§,!m§(_loc4_);
            _loc6_.§'"X§(this);
            param1.addObject(reticleSprite,param2,param3,0,§9"f§.§["_§,false,false,false,1,true);
         }
      }
      
      override protected function updateFlying() : void
      {
         if(!isNaN(this.§?"F§))
         {
            §'!G§(this.§?"F§);
            §3"s§().SetAngle(this.§?"F§);
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
