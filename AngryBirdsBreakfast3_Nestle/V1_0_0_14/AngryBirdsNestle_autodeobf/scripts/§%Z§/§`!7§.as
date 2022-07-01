package §%Z§
{
   import § 2§.§`!d§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   
   public class §`!7§ extends §=!V§
   {
       
      
      private var §2"!§:Number = 0;
      
      public function §`!7§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §`!d§.§7#§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§2"!§ != 0 && health < healthMax)
         {
            this.§2"!§ = 0;
         }
         if(this.§2"!§ != 0)
         {
            _loc3_ = §-!N§().GetLinearVelocity().x;
            _loc4_ = §-!N§().GetLinearVelocity().y;
            if(this.§2"!§ < _loc3_)
            {
               §-!N§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§2"!§ >= _loc3_)
               {
                  this.§2"!§ = 0;
               }
            }
            else if(this.§2"!§ > _loc3_)
            {
               §-!N§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§2"!§ <= _loc3_)
               {
                  this.§2"!§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §+V§(§[!o§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §-!N§().GetLinearVelocity().x) != 0)
         {
            this.§2"!§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
