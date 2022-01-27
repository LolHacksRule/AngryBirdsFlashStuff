package §9"!§
{
   import §&!]§.Sprite;
   import §3"#§.§'"&§;
   import §3>§.§-"8§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §<"$§ extends §!!H§
   {
       
      
      private var §8<§:Number = 0;
      
      public function §<"$§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get launchForce() : Number
      {
         return §'"&§.§!!T§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§8<§ != 0 && health < healthMax)
         {
            this.§8<§ = 0;
         }
         if(this.§8<§ != 0)
         {
            _loc4_ = §`I§().GetLinearVelocity().x;
            _loc5_ = §`I§().GetLinearVelocity().y;
            if(this.§8<§ < _loc4_)
            {
               §`I§().SetLinearVelocity(new b2Vec2(_loc4_ - param1 / 10,_loc5_));
               if(this.§8<§ >= _loc4_)
               {
                  this.§8<§ = 0;
               }
            }
            else if(this.§8<§ > _loc4_)
            {
               §`I§().SetLinearVelocity(new b2Vec2(_loc4_ + param1 / 10,_loc5_));
               if(this.§8<§ <= _loc4_)
               {
                  this.§8<§ = 0;
               }
            }
         }
         var _loc3_:Number = param1 * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
         §3",§(§<!O§() - _loc3_);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number;
         if((_loc4_ = §`I§().GetLinearVelocity().x) != 0)
         {
            this.§8<§ = -_loc4_ * 1.5;
         }
         return true;
      }
   }
}
