package §#B§
{
   import § y§.b2World;
   import §2!G§.§2!V§;
   import §;h§.b2Vec2;
   import §<!$§.Sprite;
   
   public class §5!>§ extends §!!_§
   {
       
      
      private var §4A§:Number = 0;
      
      public function §5!>§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§4A§ != 0 && §=1§ != §?G§)
         {
            this.§4A§ = 0;
         }
         if(this.§4A§ != 0)
         {
            _loc2_ = §4g§().GetLinearVelocity().x;
            _loc3_ = §4g§().GetLinearVelocity().y;
            if(this.§4A§ < _loc2_)
            {
               §4g§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§4A§ >= _loc2_)
               {
                  this.§4A§ = 0;
               }
            }
            else if(this.§4A§ > _loc2_)
            {
               §4g§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§4A§ <= _loc2_)
               {
                  this.§4A§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§ ! §) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §4g§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§4A§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
