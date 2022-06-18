package §[>§
{
   import §4]§.b2World;
   import §9!a§.Sprite;
   import §9T§.§=!^§;
   import §[R§.b2Vec2;
   
   public class §9!M§ extends §;J§
   {
       
      
      private var §4!3§:Number = 0;
      
      public function §9!M§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§4!3§ != 0 && §8!?§ != §6!_§)
         {
            this.§4!3§ = 0;
         }
         if(this.§4!3§ != 0)
         {
            _loc2_ = §7!<§().GetLinearVelocity().x;
            _loc3_ = §7!<§().GetLinearVelocity().y;
            if(this.§4!3§ < _loc2_)
            {
               §7!<§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§4!3§ >= _loc2_)
               {
                  this.§4!3§ = 0;
               }
            }
            else if(this.§4!3§ > _loc2_)
            {
               §7!<§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§4!3§ <= _loc2_)
               {
                  this.§4!3§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§'!'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §7!<§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§4!3§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
