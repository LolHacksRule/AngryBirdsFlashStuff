package §5"D§
{
   import §3R§.§;!h§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §?x§ extends §1"G§
   {
       
      
      private var §[!D§:Number = 0;
      
      public function §?x§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §;!h§.§5S§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§[!D§ != 0 && health < healthMax)
         {
            this.§[!D§ = 0;
         }
         if(this.§[!D§ != 0)
         {
            _loc4_ = §9B§().GetLinearVelocity().x;
            _loc5_ = §9B§().GetLinearVelocity().y;
            if(this.§[!D§ < _loc4_)
            {
               §9B§().SetLinearVelocity(new b2Vec2(_loc4_ - param1 / 10,_loc5_));
               if(this.§[!D§ >= _loc4_)
               {
                  this.§[!D§ = 0;
               }
            }
            else if(this.§[!D§ > _loc4_)
            {
               §9B§().SetLinearVelocity(new b2Vec2(_loc4_ + param1 / 10,_loc5_));
               if(this.§[!D§ <= _loc4_)
               {
                  this.§[!D§ = 0;
               }
            }
         }
         var _loc3_:Number = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
         §"!C§(§&!G§() - _loc3_);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §9B§().GetLinearVelocity().x) != 0)
         {
            this.§[!D§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
