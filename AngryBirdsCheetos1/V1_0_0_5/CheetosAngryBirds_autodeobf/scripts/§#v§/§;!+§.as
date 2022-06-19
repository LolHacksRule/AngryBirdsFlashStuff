package §#v§
{
   import §!!R§.Sprite;
   import §=E§.b2Vec2;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class §;!+§ extends §!!!§
   {
       
      
      private var §^7§:Number = 0;
      
      public function §;!+§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§^7§ != 0 && §;!A§ != §]p§)
         {
            this.§^7§ = 0;
         }
         if(this.§^7§ != 0)
         {
            _loc2_ = §#a§().GetLinearVelocity().x;
            _loc3_ = §#a§().GetLinearVelocity().y;
            if(this.§^7§ < _loc2_)
            {
               §#a§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§^7§ >= _loc2_)
               {
                  this.§^7§ = 0;
               }
            }
            else if(this.§^7§ > _loc2_)
            {
               §#a§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§^7§ <= _loc2_)
               {
                  this.§^7§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §#a§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§^7§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
