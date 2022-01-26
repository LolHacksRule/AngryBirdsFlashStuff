package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   import §var§.b2Vec2;
   
   public class §_-g-§ extends §_-Xr§
   {
       
      
      private var §_-uX§:Number = 0;
      
      public function §_-g-§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-uX§ != 0 && §_-gg§ != §_-jW§)
         {
            this.§_-uX§ = 0;
         }
         if(this.§_-uX§ != 0)
         {
            _loc2_ = §_-vv§().GetLinearVelocity().x;
            _loc3_ = §_-vv§().GetLinearVelocity().y;
            if(this.§_-uX§ < _loc2_)
            {
               §_-vv§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-uX§ >= _loc2_)
               {
                  this.§_-uX§ = 0;
               }
            }
            else if(this.§_-uX§ > _loc2_)
            {
               §_-vv§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-uX§ <= _loc2_)
               {
                  this.§_-uX§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-vv§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-uX§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
