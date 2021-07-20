package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class § !B§ extends §3!5§
   {
       
      
      private var §@!x§:Number = 0;
      
      public function § !B§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§@!x§ != 0 && §0M§ != §]!3§)
         {
            this.§@!x§ = 0;
         }
         if(this.§@!x§ != 0)
         {
            _loc2_ = §63§().GetLinearVelocity().x;
            _loc3_ = §63§().GetLinearVelocity().y;
            if(this.§@!x§ < _loc2_)
            {
               §63§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§@!x§ >= _loc2_)
               {
                  this.§@!x§ = 0;
               }
            }
            else if(this.§@!x§ > _loc2_)
            {
               §63§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§@!x§ <= _loc2_)
               {
                  this.§@!x§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §63§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§@!x§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
