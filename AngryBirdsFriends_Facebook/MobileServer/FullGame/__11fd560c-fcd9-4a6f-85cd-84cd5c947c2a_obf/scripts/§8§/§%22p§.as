package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@0§.§4!_§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §"p§ extends §?$%§
   {
       
      
      private var §4!k§:Number = 0;
      
      public function §"p§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §4!_§.§@"=§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§4!k§ != 0 && health < §""5§)
         {
            this.§4!k§ = 0;
         }
         if(this.§4!k§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§4!k§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§4!k§ >= _loc3_)
               {
                  this.§4!k§ = 0;
               }
            }
            else if(this.§4!k§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§4!k§ <= _loc3_)
               {
                  this.§4!k§ = 0;
               }
            }
         }
         if(health == §""5§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §5#W§(§`$"§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §!"p§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§4!k§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
