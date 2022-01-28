package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-SE§.Sprite;
   import §_-bA§.b2Vec2;
   import §_-vk§.b2World;
   
   public class §_-cY§ extends §_-f5§
   {
       
      
      private var §_-LU§:Number = 0;
      
      public function §_-cY§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-LU§ != 0 && §_-hs§ != §_-eV§)
         {
            this.§_-LU§ = 0;
         }
         if(this.§_-LU§ != 0)
         {
            _loc2_ = §_-UF§().GetLinearVelocity().x;
            _loc3_ = §_-UF§().GetLinearVelocity().y;
            if(this.§_-LU§ < _loc2_)
            {
               §_-UF§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-LU§ >= _loc2_)
               {
                  this.§_-LU§ = 0;
               }
            }
            else if(this.§_-LU§ > _loc2_)
            {
               §_-UF§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-LU§ <= _loc2_)
               {
                  this.§_-LU§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-UF§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-LU§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
