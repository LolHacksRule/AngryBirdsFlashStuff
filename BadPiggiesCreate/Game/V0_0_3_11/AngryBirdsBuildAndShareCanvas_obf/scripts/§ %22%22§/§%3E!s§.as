package § ""§
{
   import §+L§.b2Vec2;
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §7z§.b2World;
   
   public class §>!s§ extends §0"2§
   {
       
      
      private var §%K§:Number = 0;
      
      public function §>!s§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§%K§ != 0 && §=!,§ != §,!f§)
         {
            this.§%K§ = 0;
         }
         if(this.§%K§ != 0)
         {
            _loc2_ = getBody().GetLinearVelocity().x;
            _loc3_ = getBody().GetLinearVelocity().y;
            if(this.§%K§ < _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§%K§ >= _loc2_)
               {
                  this.§%K§ = 0;
               }
            }
            else if(this.§%K§ > _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§%K§ <= _loc2_)
               {
                  this.§%K§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§6!u§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§%K§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
