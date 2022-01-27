package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§`"]§;
   
   public class §0"u§ extends §?"N§
   {
       
      
      private var §[#4§:Number = 0;
      
      public function §0"u§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §`"]§.§6#a§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§[#4§ != 0 && health < healthMax)
         {
            this.§[#4§ = 0;
         }
         if(this.§[#4§ != 0)
         {
            _loc3_ = §3!t§().GetLinearVelocity().x;
            _loc4_ = §3!t§().GetLinearVelocity().y;
            if(this.§[#4§ < _loc3_)
            {
               §3!t§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§[#4§ >= _loc3_)
               {
                  this.§[#4§ = 0;
               }
            }
            else if(this.§[#4§ > _loc3_)
            {
               §3!t§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§[#4§ <= _loc3_)
               {
                  this.§[#4§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §6#<§(§"#,§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §3!t§().GetLinearVelocity().x) != 0)
         {
            this.§[#4§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
