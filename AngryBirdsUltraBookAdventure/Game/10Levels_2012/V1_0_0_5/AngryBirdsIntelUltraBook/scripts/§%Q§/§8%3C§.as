package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   
   public class §8<§ extends §3L§
   {
       
      
      private var §>T§:Number = 0;
      
      public function §8<§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§>T§ != 0 && §%!R§ != §-!!§)
         {
            this.§>T§ = 0;
         }
         if(this.§>T§ != 0)
         {
            _loc2_ = §5b§().GetLinearVelocity().x;
            _loc3_ = §5b§().GetLinearVelocity().y;
            if(this.§>T§ < _loc2_)
            {
               §5b§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§>T§ >= _loc2_)
               {
                  this.§>T§ = 0;
               }
            }
            else if(this.§>T§ > _loc2_)
            {
               §5b§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§>T§ <= _loc2_)
               {
                  this.§>T§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §5b§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§>T§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
