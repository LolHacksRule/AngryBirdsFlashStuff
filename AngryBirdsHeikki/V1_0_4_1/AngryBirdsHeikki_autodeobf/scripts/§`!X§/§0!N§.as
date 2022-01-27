package §`!X§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §=i§.b2Vec2;
   import §^!7§.§^A§;
   
   public class §0!N§ extends §>K§
   {
       
      
      private var §^!8§:Number = 0;
      
      public function §0!N§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§^!8§ != 0 && §^o§ != §'!M§)
         {
            this.§^!8§ = 0;
         }
         if(this.§^!8§ != 0)
         {
            _loc2_ = §1!E§().GetLinearVelocity().x;
            _loc3_ = §1!E§().GetLinearVelocity().y;
            if(this.§^!8§ < _loc2_)
            {
               §1!E§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§^!8§ >= _loc2_)
               {
                  this.§^!8§ = 0;
               }
            }
            else if(this.§^!8§ > _loc2_)
            {
               §1!E§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§^!8§ <= _loc2_)
               {
                  this.§^!8§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §1!E§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§^!8§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
