package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   import §>2§.§>#!§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §#"c§ extends §,s§
   {
       
      
      private var §,$2§:Number = 0;
      
      public function §#"c§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §>#!§.§`>§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§,$2§ != 0 && health < §6"k§)
         {
            this.§,$2§ = 0;
         }
         if(this.§,$2§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§,$2§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§,$2§ >= _loc3_)
               {
                  this.§,$2§ = 0;
               }
            }
            else if(this.§,$2§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§,$2§ <= _loc3_)
               {
                  this.§,$2§ = 0;
               }
            }
         }
         if(health == §6"k§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §9"p§(§%#4§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §3Z§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§,$2§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
