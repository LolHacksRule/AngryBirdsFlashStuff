package §?"&§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §`L§.Sprite;
   
   public class §5T§ extends §`!k§
   {
       
      
      private var §0"=§:Number = 0;
      
      public function §5T§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§0"=§ != 0 && §`X§ != §&<§)
         {
            this.§0"=§ = 0;
         }
         if(this.§0"=§ != 0)
         {
            _loc2_ = getBody().GetLinearVelocity().x;
            _loc3_ = getBody().GetLinearVelocity().y;
            if(this.§0"=§ < _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§0"=§ >= _loc2_)
               {
                  this.§0"=§ = 0;
               }
            }
            else if(this.§0"=§ > _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§0"=§ <= _loc2_)
               {
                  this.§0"=§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§5b§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§0"=§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
