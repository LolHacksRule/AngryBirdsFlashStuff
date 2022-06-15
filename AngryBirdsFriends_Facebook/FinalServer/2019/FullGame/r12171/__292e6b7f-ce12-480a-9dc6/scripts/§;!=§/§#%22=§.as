package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§1§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §#"=§ extends §[!k§
   {
       
      
      private var §8#f§:Number = 0;
      
      public function §#"=§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §1#0§.§]$&§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§8#f§ != 0 && health < §+#_§)
         {
            this.§8#f§ = 0;
         }
         if(this.§8#f§ != 0)
         {
            _loc3_ = getBody().GetLinearVelocity().x;
            _loc4_ = getBody().GetLinearVelocity().y;
            if(this.§8#f§ < _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§8#f§ >= _loc3_)
               {
                  this.§8#f§ = 0;
               }
            }
            else if(this.§8#f§ > _loc3_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§8#f§ <= _loc3_)
               {
                  this.§8#f§ = 0;
               }
            }
         }
         if(health == §+#_§)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §#"&§(§3"W§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         § b§.playSound("boomerang_swish");
         var _loc4_:Number;
         if((_loc4_ = getBody().GetLinearVelocity().x) != 0)
         {
            this.§8#f§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
