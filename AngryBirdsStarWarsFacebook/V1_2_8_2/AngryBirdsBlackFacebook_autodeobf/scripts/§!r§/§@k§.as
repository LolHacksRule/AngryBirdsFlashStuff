package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§1!T§;
   import §#g§.§["%§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §@k§ extends §;!T§
   {
       
      
      private var § "Q§:Number = 0;
      
      public function §@k§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §1!T§.§9"y§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§ "Q§ != 0 && health < healthMax)
         {
            this.§ "Q§ = 0;
         }
         if(this.§ "Q§ != 0)
         {
            _loc3_ = §3"s§().GetLinearVelocity().x;
            _loc4_ = §3"s§().GetLinearVelocity().y;
            if(this.§ "Q§ < _loc3_)
            {
               §3"s§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§ "Q§ >= _loc3_)
               {
                  this.§ "Q§ = 0;
               }
            }
            else if(this.§ "Q§ > _loc3_)
            {
               §3"s§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§ "Q§ <= _loc3_)
               {
                  this.§ "Q§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            § "H§(§<"g§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §3"s§().GetLinearVelocity().x) != 0)
         {
            this.§ "Q§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
