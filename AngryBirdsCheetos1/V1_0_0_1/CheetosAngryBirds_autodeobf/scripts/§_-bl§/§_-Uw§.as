package §_-bl§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-cP§.b2Vec2;
   import §try§.b2World;
   
   public class §_-Uw§ extends §_-ag§
   {
       
      
      private var §_-P5§:Number = 0;
      
      public function §_-Uw§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-P5§ != 0 && §_-T5§ != §_-Rj§)
         {
            this.§_-P5§ = 0;
         }
         if(this.§_-P5§ != 0)
         {
            _loc2_ = §_-BO§().GetLinearVelocity().x;
            _loc3_ = §_-BO§().GetLinearVelocity().y;
            if(this.§_-P5§ < _loc2_)
            {
               §_-BO§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-P5§ >= _loc2_)
               {
                  this.§_-P5§ = 0;
               }
            }
            else if(this.§_-P5§ > _loc2_)
            {
               §_-BO§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-P5§ <= _loc2_)
               {
                  this.§_-P5§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-BO§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-P5§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
