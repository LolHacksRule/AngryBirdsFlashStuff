package §9!T§
{
   import §+D§.§5!P§;
   import §,!3§.b2Vec2;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §0?§ extends §5g§
   {
       
      
      private var §-!M§:Number = 0;
      
      public function §0?§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§-!M§ != 0 && §1K§ != §0!a§)
         {
            this.§-!M§ = 0;
         }
         if(this.§-!M§ != 0)
         {
            _loc2_ = §<k§().GetLinearVelocity().x;
            _loc3_ = §<k§().GetLinearVelocity().y;
            if(this.§-!M§ < _loc2_)
            {
               §<k§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§-!M§ >= _loc2_)
               {
                  this.§-!M§ = 0;
               }
            }
            else if(this.§-!M§ > _loc2_)
            {
               §<k§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§-!M§ <= _loc2_)
               {
                  this.§-!M§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<k§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§-!M§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
