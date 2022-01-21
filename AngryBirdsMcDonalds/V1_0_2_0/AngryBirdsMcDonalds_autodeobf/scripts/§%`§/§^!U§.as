package §%`§
{
   import §"U§.b2Vec2;
   import §'a§.§0!f§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class §^!U§ extends override
   {
       
      
      private var §`!7§:Number = 0;
      
      public function §^!U§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§`!7§ != 0 && §%!a§ != §"!j§)
         {
            this.§`!7§ = 0;
         }
         if(this.§`!7§ != 0)
         {
            _loc2_ = §%9§().GetLinearVelocity().x;
            _loc3_ = §%9§().GetLinearVelocity().y;
            if(this.§`!7§ < _loc2_)
            {
               §%9§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§`!7§ >= _loc2_)
               {
                  this.§`!7§ = 0;
               }
            }
            else if(this.§`!7§ > _loc2_)
            {
               §%9§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§`!7§ <= _loc2_)
               {
                  this.§`!7§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §%9§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§`!7§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
