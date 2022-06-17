package §-!!§
{
   import § !D§.§;M§;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §;!r§ extends §5"W§
   {
       
      
      private var §[!D§:Number = 0;
      
      public function §;!r§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §;M§.§&#y§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§[!D§ != 0 && health < §1#H§)
         {
            this.§[!D§ = 0;
         }
         if(this.§[!D§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§[!D§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§[!D§ >= _loc3_)
               {
                  this.§[!D§ = 0;
               }
            }
            else if(this.§[!D§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§[!D§ <= _loc3_)
               {
                  this.§[!D§ = 0;
               }
            }
         }
         if(health == §1#H§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §=z§(§30§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §[#%§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§[!D§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
