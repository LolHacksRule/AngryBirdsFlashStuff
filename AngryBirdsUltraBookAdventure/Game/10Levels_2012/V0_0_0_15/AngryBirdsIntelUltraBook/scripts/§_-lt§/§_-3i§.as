package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-3i§ extends §_-Fh§
   {
       
      
      private var §_-0Cw§:Number = 0;
      
      public function §_-3i§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-0Cw§ != 0 && §_-Kh§ != §_-8l§)
         {
            this.§_-0Cw§ = 0;
         }
         if(this.§_-0Cw§ != 0)
         {
            _loc2_ = §_-SJ§().GetLinearVelocity().x;
            _loc3_ = §_-SJ§().GetLinearVelocity().y;
            if(this.§_-0Cw§ < _loc2_)
            {
               §_-SJ§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-0Cw§ >= _loc2_)
               {
                  this.§_-0Cw§ = 0;
               }
            }
            else if(this.§_-0Cw§ > _loc2_)
            {
               §_-SJ§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-0Cw§ <= _loc2_)
               {
                  this.§_-0Cw§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-SJ§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-0Cw§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
