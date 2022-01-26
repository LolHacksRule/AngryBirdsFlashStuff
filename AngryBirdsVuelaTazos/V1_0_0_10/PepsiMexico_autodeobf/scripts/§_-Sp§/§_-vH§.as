package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-vH§ extends §_-FR§
   {
       
      
      private var §_-ND§:Number = 0;
      
      public function §_-vH§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-ND§ != 0 && §null § != §_-8S§)
         {
            this.§_-ND§ = 0;
         }
         if(this.§_-ND§ != 0)
         {
            _loc2_ = §_-dZ§().GetLinearVelocity().x;
            _loc3_ = §_-dZ§().GetLinearVelocity().y;
            if(this.§_-ND§ < _loc2_)
            {
               §_-dZ§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-ND§ >= _loc2_)
               {
                  this.§_-ND§ = 0;
               }
            }
            else if(this.§_-ND§ > _loc2_)
            {
               §_-dZ§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-ND§ <= _loc2_)
               {
                  this.§_-ND§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-dZ§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-ND§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
