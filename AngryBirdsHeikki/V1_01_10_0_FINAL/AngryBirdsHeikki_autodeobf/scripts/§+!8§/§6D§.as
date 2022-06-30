package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §6D§ extends §`!O§
   {
       
      
      private var §%j§:Number = 0;
      
      public function §6D§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§%j§ != 0 && §[h§ != §'!V§)
         {
            this.§%j§ = 0;
         }
         if(this.§%j§ != 0)
         {
            _loc2_ = §0c§().GetLinearVelocity().x;
            _loc3_ = §0c§().GetLinearVelocity().y;
            if(this.§%j§ < _loc2_)
            {
               §0c§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§%j§ >= _loc2_)
               {
                  this.§%j§ = 0;
               }
            }
            else if(this.§%j§ > _loc2_)
            {
               §0c§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§%j§ <= _loc2_)
               {
                  this.§%j§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §0c§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§%j§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
