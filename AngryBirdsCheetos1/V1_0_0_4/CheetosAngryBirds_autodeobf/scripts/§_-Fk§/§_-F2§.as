package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §_-Vn§.b2Vec2;
   import §case §.Sprite;
   
   public class §_-F2§ extends §_-ON§
   {
       
      
      private var §_-wT§:Number = 0;
      
      public function §_-F2§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-wT§ != 0 && §_-tR§ != §_-m1§)
         {
            this.§_-wT§ = 0;
         }
         if(this.§_-wT§ != 0)
         {
            _loc2_ = §_-Zv§().GetLinearVelocity().x;
            _loc3_ = §_-Zv§().GetLinearVelocity().y;
            if(this.§_-wT§ < _loc2_)
            {
               §_-Zv§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-wT§ >= _loc2_)
               {
                  this.§_-wT§ = 0;
               }
            }
            else if(this.§_-wT§ > _loc2_)
            {
               §_-Zv§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-wT§ <= _loc2_)
               {
                  this.§_-wT§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Zv§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-wT§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
