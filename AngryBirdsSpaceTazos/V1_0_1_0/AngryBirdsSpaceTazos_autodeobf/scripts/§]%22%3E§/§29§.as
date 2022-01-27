package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §29§ extends § 6§
   {
       
      
      private var §]!#§:Number = 0;
      
      public function §29§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §-T§.§@!z§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§]!#§ != 0 && health < healthMax)
         {
            this.§]!#§ = 0;
         }
         if(this.§]!#§ != 0)
         {
            _loc4_ = §^!z§().GetLinearVelocity().x;
            _loc5_ = §^!z§().GetLinearVelocity().y;
            if(this.§]!#§ < _loc4_)
            {
               §^!z§().SetLinearVelocity(new b2Vec2(_loc4_ - param1 / 10,_loc5_));
               if(this.§]!#§ >= _loc4_)
               {
                  this.§]!#§ = 0;
               }
            }
            else if(this.§]!#§ > _loc4_)
            {
               §^!z§().SetLinearVelocity(new b2Vec2(_loc4_ + param1 / 10,_loc5_));
               if(this.§]!#§ <= _loc4_)
               {
                  this.§]!#§ = 0;
               }
            }
         }
         var _loc3_:Number = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
         §^e§(§+!c§() - _loc3_);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §^!z§().GetLinearVelocity().x) != 0)
         {
            this.§]!#§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
