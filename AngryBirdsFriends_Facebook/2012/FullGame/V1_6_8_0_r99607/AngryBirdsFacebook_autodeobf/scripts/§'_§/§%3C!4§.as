package §'_§
{
   import § !k§.b2World;
   import §!"8§.b2Vec2;
   import §3,§.§[!;§;
   import §]&§.Sprite;
   
   public class §<!4§ extends §5!P§
   {
       
      
      private var §=N§:Number = 0;
      
      public function §<!4§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§=N§ != 0 && §9"8§ != § i§)
         {
            this.§=N§ = 0;
         }
         if(this.§=N§ != 0)
         {
            _loc2_ = §2"7§().GetLinearVelocity().x;
            _loc3_ = §2"7§().GetLinearVelocity().y;
            if(this.§=N§ < _loc2_)
            {
               §2"7§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§=N§ >= _loc2_)
               {
                  this.§=N§ = 0;
               }
            }
            else if(this.§=N§ > _loc2_)
            {
               §2"7§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§=N§ <= _loc2_)
               {
                  this.§=N§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§=!&§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §2"7§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§=N§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
