package §_-fr§
{
   import §_-43§.b2World;
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   
   public class §_-aW§ extends §_-ZS§
   {
       
      
      private var §_-C§:Number = 0;
      
      public function §_-aW§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-C§ != 0 && §_-KZ§ != §_-EU§)
         {
            this.§_-C§ = 0;
         }
         if(this.§_-C§ != 0)
         {
            _loc2_ = §implements§().GetLinearVelocity().x;
            _loc3_ = §implements§().GetLinearVelocity().y;
            if(this.§_-C§ < _loc2_)
            {
               §implements§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-C§ >= _loc2_)
               {
                  this.§_-C§ = 0;
               }
            }
            else if(this.§_-C§ > _loc2_)
            {
               §implements§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-C§ <= _loc2_)
               {
                  this.§_-C§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §implements§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-C§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
