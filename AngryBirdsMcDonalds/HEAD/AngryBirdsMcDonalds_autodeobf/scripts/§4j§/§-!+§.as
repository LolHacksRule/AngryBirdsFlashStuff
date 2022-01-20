package §4j§
{
   import § !J§.§%M§;
   import §+S§.b2Vec2;
   import §8T§.b2World;
   import §`!n§.Sprite;
   
   public class §-!+§ extends §@!K§
   {
       
      
      private var §,p§:Number = 0;
      
      public function §-!+§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§,p§ != 0 && §4!6§ != §%!^§)
         {
            this.§,p§ = 0;
         }
         if(this.§,p§ != 0)
         {
            _loc2_ = §3H§().GetLinearVelocity().x;
            _loc3_ = §3H§().GetLinearVelocity().y;
            if(this.§,p§ < _loc2_)
            {
               §3H§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§,p§ >= _loc2_)
               {
                  this.§,p§ = 0;
               }
            }
            else if(this.§,p§ > _loc2_)
            {
               §3H§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§,p§ <= _loc2_)
               {
                  this.§,p§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §3H§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§,p§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
