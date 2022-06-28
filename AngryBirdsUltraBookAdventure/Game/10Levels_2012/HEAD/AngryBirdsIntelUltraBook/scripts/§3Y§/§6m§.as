package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   
   public class §6m§ extends §[r§
   {
       
      
      private var §@U§:Number = 0;
      
      public function §6m§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§@U§ != 0 && §19§ != §^V§)
         {
            this.§@U§ = 0;
         }
         if(this.§@U§ != 0)
         {
            _loc2_ = §8!N§().GetLinearVelocity().x;
            _loc3_ = §8!N§().GetLinearVelocity().y;
            if(this.§@U§ < _loc2_)
            {
               §8!N§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§@U§ >= _loc2_)
               {
                  this.§@U§ = 0;
               }
            }
            else if(this.§@U§ > _loc2_)
            {
               §8!N§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§@U§ <= _loc2_)
               {
                  this.§@U§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §8!N§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§@U§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
