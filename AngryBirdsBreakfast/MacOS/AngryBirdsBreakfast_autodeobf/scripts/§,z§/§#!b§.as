package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   import §@L§.§3!&§;
   
   public class §#!b§ extends §?!z§
   {
       
      
      private var §+!U§:Number = 0;
      
      public function §#!b§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §3!&§.§%"#§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§+!U§ != 0 && health < healthMax)
         {
            this.§+!U§ = 0;
         }
         if(this.§+!U§ != 0)
         {
            _loc3_ = §^`§().GetLinearVelocity().x;
            _loc4_ = §^`§().GetLinearVelocity().y;
            if(this.§+!U§ < _loc3_)
            {
               §^`§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§+!U§ >= _loc3_)
               {
                  this.§+!U§ = 0;
               }
            }
            else if(this.§+!U§ > _loc3_)
            {
               §^`§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§+!U§ <= _loc3_)
               {
                  this.§+!U§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §,3§(§[!G§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §^`§().GetLinearVelocity().x) != 0)
         {
            this.§+!U§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
