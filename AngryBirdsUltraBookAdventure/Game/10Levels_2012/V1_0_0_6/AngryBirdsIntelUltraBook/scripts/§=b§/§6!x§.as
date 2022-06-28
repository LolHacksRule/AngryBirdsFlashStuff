package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   
   public class §6!x§ extends §0d§
   {
       
      
      private var §[!N§:Number = 0;
      
      public function §6!x§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§[!N§ != 0 && §&!>§ != §]l§)
         {
            this.§[!N§ = 0;
         }
         if(this.§[!N§ != 0)
         {
            _loc2_ = §3J§().GetLinearVelocity().x;
            _loc3_ = §3J§().GetLinearVelocity().y;
            if(this.§[!N§ < _loc2_)
            {
               §3J§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§[!N§ >= _loc2_)
               {
                  this.§[!N§ = 0;
               }
            }
            else if(this.§[!N§ > _loc2_)
            {
               §3J§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§[!N§ <= _loc2_)
               {
                  this.§[!N§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §3J§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§[!N§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
