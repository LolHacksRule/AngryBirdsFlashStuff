package §"!-§
{
   import §!!<§.§>"4§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   import §@"1§.§8L§;
   
   public class §<!Z§ extends § !§
   {
       
      
      private var §5E§:Number = 0;
      
      public function §<!Z§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §8L§.§!_§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§5E§ != 0 && health < healthMax)
         {
            this.§5E§ = 0;
         }
         if(this.§5E§ != 0)
         {
            _loc3_ = §9l§().GetLinearVelocity().x;
            _loc4_ = §9l§().GetLinearVelocity().y;
            if(this.§5E§ < _loc3_)
            {
               §9l§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§5E§ >= _loc3_)
               {
                  this.§5E§ = 0;
               }
            }
            else if(this.§5E§ > _loc3_)
            {
               §9l§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§5E§ <= _loc3_)
               {
                  this.§5E§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §'!!§(§?!>§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §9l§().GetLinearVelocity().x) != 0)
         {
            this.§5E§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
