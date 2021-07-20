package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-PY§ extends §_-zf§
   {
       
      
      private var §_-N9§:Number = 0;
      
      public function §_-PY§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§_-N9§ != 0 && §_-Qm§ != §_-FF§)
         {
            this.§_-N9§ = 0;
         }
         if(this.§_-N9§ != 0)
         {
            _loc2_ = §_-zq§().GetLinearVelocity().x;
            _loc3_ = §_-zq§().GetLinearVelocity().y;
            if(this.§_-N9§ < _loc2_)
            {
               §_-zq§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§_-N9§ >= _loc2_)
               {
                  this.§_-N9§ = 0;
               }
            }
            else if(this.§_-N9§ > _loc2_)
            {
               §_-zq§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§_-N9§ <= _loc2_)
               {
                  this.§_-N9§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-zq§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§_-N9§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
