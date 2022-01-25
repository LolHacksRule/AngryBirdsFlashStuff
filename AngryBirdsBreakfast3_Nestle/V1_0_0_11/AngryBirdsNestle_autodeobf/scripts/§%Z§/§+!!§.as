package §%Z§
{
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §'I§.b2Settings;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §+!!§ extends §"K§
   {
       
      
      private var §5!_§:Boolean = false;
      
      private var §8R§:Number = 0;
      
      public function §+!!§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§8!m§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§5!_§ ? §'!P§.§4!"§ : §'!P§.§3!3§;
         param1.§+<§(_loc2_,§2!k§.§ g§,§'!P§.§8"0§,§-!N§().GetPosition().x,§-!N§().GetPosition().y - 1,2000,"",§'!P§.§7!A§);
      }
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §=!V§ && param3.health == param3.healthMax)
         {
            this.§5!_§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§'S§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§-!N§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§-!N§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§-!N§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override public function scream() : void
      {
         super.scream();
         playScreamingSoundEffect();
      }
   }
}
