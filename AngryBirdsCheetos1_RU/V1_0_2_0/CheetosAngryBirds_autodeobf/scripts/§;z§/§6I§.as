package §;z§
{
   import §&!+§.b2Vec2;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §4!&§.b2World;
   
   public class §6I§ extends §=P§
   {
       
      
      private var §9!@§:Number = 0;
      
      public function §6I§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§9!@§ != 0 && §^,§ != §[!,§)
         {
            this.§9!@§ = 0;
         }
         if(this.§9!@§ != 0)
         {
            _loc2_ = §^!V§().GetLinearVelocity().x;
            _loc3_ = §^!V§().GetLinearVelocity().y;
            if(this.§9!@§ < _loc2_)
            {
               §^!V§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§9!@§ >= _loc2_)
               {
                  this.§9!@§ = 0;
               }
            }
            else if(this.§9!@§ > _loc2_)
            {
               §^!V§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§9!@§ <= _loc2_)
               {
                  this.§9!@§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^!V§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§9!@§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
