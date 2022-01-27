package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   import §?!<§.§6"3§;
   
   public class §3!7§ extends §#!v§
   {
       
      
      private var §=!e§:Number = 0;
      
      public function §3!7§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §6"3§.§3K§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§=!e§ != 0 && health < healthMax)
         {
            this.§=!e§ = 0;
         }
         if(this.§=!e§ != 0)
         {
            _loc4_ = § <§().GetLinearVelocity().x;
            _loc5_ = § <§().GetLinearVelocity().y;
            if(this.§=!e§ < _loc4_)
            {
               § <§().SetLinearVelocity(new b2Vec2(_loc4_ - param1 / 10,_loc5_));
               if(this.§=!e§ >= _loc4_)
               {
                  this.§=!e§ = 0;
               }
            }
            else if(this.§=!e§ > _loc4_)
            {
               § <§().SetLinearVelocity(new b2Vec2(_loc4_ + param1 / 10,_loc5_));
               if(this.§=!e§ <= _loc4_)
               {
                  this.§=!e§ = 0;
               }
            }
         }
         var _loc3_:Number = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
         §[!9§(§@,§() - _loc3_);
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = § <§().GetLinearVelocity().x) != 0)
         {
            this.§=!e§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
