package §]!+§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §[x§.b2World;
   
   public class §;!9§ extends §`H§
   {
       
      
      private var §+!Z§:Number = 0;
      
      public function §;!9§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§+!Z§ != 0 && §0!C§ != §6!;§)
         {
            this.§+!Z§ = 0;
         }
         if(this.§+!Z§ != 0)
         {
            _loc2_ = §?A§().GetLinearVelocity().x;
            _loc3_ = §?A§().GetLinearVelocity().y;
            if(this.§+!Z§ < _loc2_)
            {
               §?A§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§+!Z§ >= _loc2_)
               {
                  this.§+!Z§ = 0;
               }
            }
            else if(this.§+!Z§ > _loc2_)
            {
               §?A§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§+!Z§ <= _loc2_)
               {
                  this.§+!Z§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?A§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§+!Z§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
