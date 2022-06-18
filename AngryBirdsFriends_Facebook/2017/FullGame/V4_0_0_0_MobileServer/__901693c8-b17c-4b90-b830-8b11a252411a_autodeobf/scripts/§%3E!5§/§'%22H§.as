package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§@"@§;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §'"H§ extends §"7§
   {
       
      
      private var §3B§:Number = 0;
      
      public function §'"H§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §@"@§.§,"g§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§3B§ != 0 && health < §##6§)
         {
            this.§3B§ = 0;
         }
         if(this.§3B§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§3B§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§3B§ >= _loc3_)
               {
                  this.§3B§ = 0;
               }
            }
            else if(this.§3B§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§3B§ <= _loc3_)
               {
                  this.§3B§ = 0;
               }
            }
         }
         if(health == §##6§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §"#o§(§%D§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §!#&§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§3B§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
