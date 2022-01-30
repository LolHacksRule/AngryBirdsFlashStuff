package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §]k§.§-! §;
   
   public class §5!X§ extends §6!-§
   {
       
      
      private var §@!=§:Number = 0;
      
      public function §5!X§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §-! §.§[!i§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§@!=§ != 0 && health < healthMax)
         {
            this.§@!=§ = 0;
         }
         if(this.§@!=§ != 0)
         {
            _loc3_ = §^",§().GetLinearVelocity().x;
            _loc4_ = §^",§().GetLinearVelocity().y;
            if(this.§@!=§ < _loc3_)
            {
               §^",§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§@!=§ >= _loc3_)
               {
                  this.§@!=§ = 0;
               }
            }
            else if(this.§@!=§ > _loc3_)
            {
               §^",§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§@!=§ <= _loc3_)
               {
                  this.§@!=§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §@T§(§6!j§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §^",§().GetLinearVelocity().x) != 0)
         {
            this.§@!=§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
