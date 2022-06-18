package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§;![§;
   import §@"v§.§@$<§;
   
   public class §5!8§ extends §[# §
   {
       
      
      private var §@H§:Number = 0;
      
      public function §5!8§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §;![§.§"#C§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§@H§ != 0 && health < §,D§)
         {
            this.§@H§ = 0;
         }
         if(this.§@H§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§@H§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§@H§ >= _loc3_)
               {
                  this.§@H§ = 0;
               }
            }
            else if(this.§@H§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§@H§ <= _loc3_)
               {
                  this.§@H§ = 0;
               }
            }
         }
         if(health == §,D§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §%"C§(§<!C§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §4$4§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§@H§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
