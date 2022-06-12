package §]r§
{
   import §-!G§.b2Vec2;
   import §7q§.Sprite;
   import §=9§.b2World;
   import §=b§.§-!K§;
   
   public class §#a§ extends §<!$§
   {
       
      
      private var §-g§:Number = 0;
      
      public function §#a§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§-g§ != 0 && §7!D§ != §@!#§)
         {
            this.§-g§ = 0;
         }
         if(this.§-g§ != 0)
         {
            _loc2_ = getBody().GetLinearVelocity().x;
            _loc3_ = getBody().GetLinearVelocity().y;
            if(this.§-g§ < _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§-g§ >= _loc2_)
               {
                  this.§-g§ = 0;
               }
            }
            else if(this.§-g§ > _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§-g§ <= _loc2_)
               {
                  this.§-g§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§-g§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
