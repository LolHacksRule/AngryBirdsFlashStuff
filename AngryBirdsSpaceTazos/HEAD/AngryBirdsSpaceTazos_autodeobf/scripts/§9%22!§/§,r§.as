package §9"!§
{
   import §&!]§.Sprite;
   import §'!a§.b2Settings;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §,r§ extends §,K§
   {
       
      
      private var §[" §:Boolean = false;
      
      private var §&!=§:Number = 0;
      
      public function §,r§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         var _loc2_:String = !!this.§[" § ? §4R§.§1!V§ : §4R§.§?%§;
         param1.§'"-§(_loc2_,§switch§.§%!y§,§4R§.§+!'§,§`I§().GetPosition().x,§`I§().GetPosition().y - 1,2000,"",§4R§.§ !0§);
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §!!H§ && param3.health == param3.healthMax)
         {
            this.§[" § = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§^!b§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§`I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`I§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
