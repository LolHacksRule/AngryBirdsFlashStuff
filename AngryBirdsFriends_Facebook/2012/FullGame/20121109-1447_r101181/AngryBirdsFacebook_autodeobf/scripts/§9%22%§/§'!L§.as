package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §'!L§ extends § H§
   {
       
      
      private var §0""§:Number = 0;
      
      public function §'!L§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§0""§ != 0 && §[" § != §@!h§)
         {
            this.§0""§ = 0;
         }
         if(this.§0""§ != 0)
         {
            _loc2_ = §=!y§().GetLinearVelocity().x;
            _loc3_ = §=!y§().GetLinearVelocity().y;
            if(this.§0""§ < _loc2_)
            {
               §=!y§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§0""§ >= _loc2_)
               {
                  this.§0""§ = 0;
               }
            }
            else if(this.§0""§ > _loc2_)
            {
               §=!y§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§0""§ <= _loc2_)
               {
                  this.§0""§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §=!y§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§0""§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
