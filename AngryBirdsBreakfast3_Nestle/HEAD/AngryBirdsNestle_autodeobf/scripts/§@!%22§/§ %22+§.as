package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§&#§;
   
   public class § "+§ extends §^"2§
   {
       
      
      private var §=!n§:Number = 0;
      
      public function § "+§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get launchForce() : Number
      {
         return §&#§.§;!t§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§=!n§ != 0 && health < healthMax)
         {
            this.§=!n§ = 0;
         }
         if(this.§=!n§ != 0)
         {
            _loc3_ = §!!I§().GetLinearVelocity().x;
            _loc4_ = §!!I§().GetLinearVelocity().y;
            if(this.§=!n§ < _loc3_)
            {
               §!!I§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
               if(this.§=!n§ >= _loc3_)
               {
                  this.§=!n§ = 0;
               }
            }
            else if(this.§=!n§ > _loc3_)
            {
               §!!I§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
               if(this.§=!n§ <= _loc3_)
               {
                  this.§=!n§ = 0;
               }
            }
         }
         if(health == healthMax)
         {
            _loc5_ = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            §[!X§(§`p§() + _loc5_);
         }
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §!!I§().GetLinearVelocity().x) != 0)
         {
            this.§=!n§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
