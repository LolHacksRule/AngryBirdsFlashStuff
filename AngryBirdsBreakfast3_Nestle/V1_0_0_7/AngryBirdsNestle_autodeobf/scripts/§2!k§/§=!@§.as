package §2!k§
{
   import § !=§.Sprite;
   import §-!2§.b2Vec2;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   import §]A§.§0n§;
   
   public class §=!@§ extends §6",§
   {
       
      
      private var §56§:Number = 0;
      
      public function §=!@§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §0n§.§`B§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§56§ != 0 && health < healthMax)
         {
            this.§56§ = 0;
         }
         if(this.§56§ != 0)
         {
            _loc3_ = § 2§().GetLinearVelocity().x;
            _loc4_ = § 2§().GetLinearVelocity().y;
            if(this.§56§ < _loc3_)
            {
               § 2§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§56§ >= _loc3_)
               {
                  this.§56§ = 0;
               }
            }
            else if(this.§56§ > _loc3_)
            {
               § 2§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§56§ <= _loc3_)
               {
                  this.§56§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §9Z§(§<_§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = § 2§().GetLinearVelocity().x) != 0)
         {
            this.§56§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
