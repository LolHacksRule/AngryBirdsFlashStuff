package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §9G§.§1!a§;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   
   public class §,!7§ extends §?!§
   {
       
      
      private var §&9§:Number = 0;
      
      public function §,!7§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §1!a§.§0R§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§&9§ != 0 && health < healthMax)
         {
            this.§&9§ = 0;
         }
         if(this.§&9§ != 0)
         {
            _loc3_ = §7J§().GetLinearVelocity().x;
            _loc4_ = §7J§().GetLinearVelocity().y;
            if(this.§&9§ < _loc3_)
            {
               §7J§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§&9§ >= _loc3_)
               {
                  this.§&9§ = 0;
               }
            }
            else if(this.§&9§ > _loc3_)
            {
               §7J§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§&9§ <= _loc3_)
               {
                  this.§&9§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §%"8§(§<"$§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §7J§().GetLinearVelocity().x) != 0)
         {
            this.§&9§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
