package §]!D§
{
   import §3q§.b2Vec2;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   
   public class §%,§ extends §,!@§
   {
       
      
      private var §[!D§:Number = 0;
      
      public function §%,§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§[!D§ != 0 && §5h§ != §!e§)
         {
            this.§[!D§ = 0;
         }
         if(this.§[!D§ != 0)
         {
            _loc2_ = §^!_§().GetLinearVelocity().x;
            _loc3_ = §^!_§().GetLinearVelocity().y;
            if(this.§[!D§ < _loc2_)
            {
               §^!_§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§[!D§ >= _loc2_)
               {
                  this.§[!D§ = 0;
               }
            }
            else if(this.§[!D§ > _loc2_)
            {
               §^!_§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§[!D§ <= _loc2_)
               {
                  this.§[!D§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^!_§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§[!D§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
