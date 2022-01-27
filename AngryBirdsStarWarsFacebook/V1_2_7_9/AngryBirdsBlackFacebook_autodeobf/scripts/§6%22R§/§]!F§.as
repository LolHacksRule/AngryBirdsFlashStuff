package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§+e§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   
   public class §]!F§ extends §%!0§
   {
       
      
      private var §^"6§:Number = 0;
      
      public function §]!F§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §+e§.§!!"§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§^"6§ != 0 && health < healthMax)
         {
            this.§^"6§ = 0;
         }
         if(this.§^"6§ != 0)
         {
            _loc3_ = §?"Z§().GetLinearVelocity().x;
            _loc4_ = §?"Z§().GetLinearVelocity().y;
            if(this.§^"6§ < _loc3_)
            {
               §?"Z§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§^"6§ >= _loc3_)
               {
                  this.§^"6§ = 0;
               }
            }
            else if(this.§^"6§ > _loc3_)
            {
               §?"Z§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§^"6§ <= _loc3_)
               {
                  this.§^"6§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §#"c§(§4F§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §?"Z§().GetLinearVelocity().x) != 0)
         {
            this.§^"6§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
