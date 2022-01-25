package §'!`§
{
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §^!%§.b2Vec2;
   
   public class §3!@§ extends §3C§
   {
       
      
      private var §"!m§:Number = 0;
      
      public function §3!@§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§"!m§ != 0 && §0!8§ != §6w§)
         {
            this.§"!m§ = 0;
         }
         if(this.§"!m§ != 0)
         {
            _loc2_ = §&!p§().GetLinearVelocity().x;
            _loc3_ = §&!p§().GetLinearVelocity().y;
            if(this.§"!m§ < _loc2_)
            {
               §&!p§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§"!m§ >= _loc2_)
               {
                  this.§"!m§ = 0;
               }
            }
            else if(this.§"!m§ > _loc2_)
            {
               §&!p§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§"!m§ <= _loc2_)
               {
                  this.§"!m§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §&!p§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§"!m§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
