package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   
   public class §@"7§ extends §2"L§
   {
       
      
      private var §"W§:Number = 0;
      
      public function §@"7§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§"W§ != 0 && § d§ != §^!2§)
         {
            this.§"W§ = 0;
         }
         if(this.§"W§ != 0)
         {
            _loc2_ = getBody().GetLinearVelocity().x;
            _loc3_ = getBody().GetLinearVelocity().y;
            if(this.§"W§ < _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§"W§ >= _loc2_)
               {
                  this.§"W§ = 0;
               }
            }
            else if(this.§"W§ > _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§"W§ <= _loc2_)
               {
                  this.§"W§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§"W§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
