package §]!q§
{
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §0I§.§3]§;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §8p§ extends §,6§
   {
       
      
      private var §?!Q§:Number = 0;
      
      public function §8p§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §3]§.§8!k§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§?!Q§ != 0 && health < healthMax)
         {
            this.§?!Q§ = 0;
         }
         if(this.§?!Q§ != 0)
         {
            _loc3_ = §4!7§().GetLinearVelocity().x;
            _loc4_ = §4!7§().GetLinearVelocity().y;
            if(this.§?!Q§ < _loc3_)
            {
               §4!7§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§?!Q§ >= _loc3_)
               {
                  this.§?!Q§ = 0;
               }
            }
            else if(this.§?!Q§ > _loc3_)
            {
               §4!7§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§?!Q§ <= _loc3_)
               {
                  this.§?!Q§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §5!L§(§-!q§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§5z§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §4!7§().GetLinearVelocity().x) != 0)
         {
            this.§?!Q§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
