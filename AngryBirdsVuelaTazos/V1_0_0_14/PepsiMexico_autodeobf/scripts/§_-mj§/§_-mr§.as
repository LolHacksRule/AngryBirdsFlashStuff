package §_-mj§
{
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-yw§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-mr§ extends §_-8x§
   {
       
      
      private var §_-le§:Number = 0;
      
      public function §_-mr§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-le§ != 0 && §_-QY§ != §_-t6§)
         {
            this.§_-le§ = 0;
         }
         if(this.§_-le§ != 0)
         {
            _loc2_ = §_-oR§().GetLinearVelocity().x;
            _loc3_ = §_-oR§().GetLinearVelocity().y;
            if(this.§_-le§ < _loc2_)
            {
               §_-oR§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-le§ >= _loc2_)
               {
                  this.§_-le§ = 0;
               }
            }
            else if(this.§_-le§ > _loc2_)
            {
               §_-oR§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-le§ <= _loc2_)
               {
                  this.§_-le§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-oR§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-le§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
