package §_-u§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-fb§ extends §_-5j§
   {
       
      
      private var §_-ae§:Number = 0;
      
      public function §_-fb§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-ae§ != 0 && §_-c8§ != §_-gA§)
         {
            this.§_-ae§ = 0;
         }
         if(this.§_-ae§ != 0)
         {
            _loc2_ = §_-t9§().GetLinearVelocity().x;
            _loc3_ = §_-t9§().GetLinearVelocity().y;
            if(this.§_-ae§ < _loc2_)
            {
               §_-t9§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-ae§ >= _loc2_)
               {
                  this.§_-ae§ = 0;
               }
            }
            else if(this.§_-ae§ > _loc2_)
            {
               §_-t9§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-ae§ <= _loc2_)
               {
                  this.§_-ae§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-t9§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-ae§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
