package §#!P§
{
   import §!!B§.b2World;
   import §3E§.§6w§;
   import §7u§.Sprite;
   import §;U§.b2Vec2;
   
   public class §-!9§ extends §`v§
   {
       
      
      private var §%!E§:Number = 0;
      
      public function §-!9§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§%!E§ != 0 && §1!L§ != §!w§)
         {
            this.§%!E§ = 0;
         }
         if(this.§%!E§ != 0)
         {
            _loc2_ = §84§().GetLinearVelocity().x;
            _loc3_ = §84§().GetLinearVelocity().y;
            if(this.§%!E§ < _loc2_)
            {
               §84§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§%!E§ >= _loc2_)
               {
                  this.§%!E§ = 0;
               }
            }
            else if(this.§%!E§ > _loc2_)
            {
               §84§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§%!E§ <= _loc2_)
               {
                  this.§%!E§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§#A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §84§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§%!E§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
