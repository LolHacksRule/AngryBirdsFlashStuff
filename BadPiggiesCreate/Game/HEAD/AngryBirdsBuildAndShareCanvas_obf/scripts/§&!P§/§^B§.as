package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<!a§.b2Vec2;
   
   public class §^B§ extends §9`§
   {
       
      
      private var §5b§:Number = 0;
      
      public function §^B§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§5b§ != 0 && §8W§ != §%5§)
         {
            this.§5b§ = 0;
         }
         if(this.§5b§ != 0)
         {
            _loc2_ = getBody().GetLinearVelocity().x;
            _loc3_ = getBody().GetLinearVelocity().y;
            if(this.§5b§ < _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§5b§ >= _loc2_)
               {
                  this.§5b§ = 0;
               }
            }
            else if(this.§5b§ > _loc2_)
            {
               getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§5b§ <= _loc2_)
               {
                  this.§5b§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§5b§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
