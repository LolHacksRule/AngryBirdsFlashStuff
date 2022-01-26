package §_-ST§
{
   import §_-WW§.b2World;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-40§ extends §_-GF§
   {
       
      
      private var §_-I-§:Number = 0;
      
      public function §_-40§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-I-§ != 0 && §_-Sy§ != §_-JQ§)
         {
            this.§_-I-§ = 0;
         }
         if(this.§_-I-§ != 0)
         {
            _loc2_ = §_-Nu§().GetLinearVelocity().x;
            _loc3_ = §_-Nu§().GetLinearVelocity().y;
            if(this.§_-I-§ < _loc2_)
            {
               §_-Nu§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-I-§ >= _loc2_)
               {
                  this.§_-I-§ = 0;
               }
            }
            else if(this.§_-I-§ > _loc2_)
            {
               §_-Nu§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-I-§ <= _loc2_)
               {
                  this.§_-I-§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Nu§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-I-§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
