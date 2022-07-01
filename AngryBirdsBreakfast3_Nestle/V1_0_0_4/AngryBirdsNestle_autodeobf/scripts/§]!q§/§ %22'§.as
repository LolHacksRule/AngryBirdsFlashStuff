package §]!q§
{
   import §-!f§.Sprite;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   import §>!R§.b2Settings;
   
   public class § "'§ extends §7=§
   {
       
      
      private var §<!l§:Boolean = false;
      
      public function § "'§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§5z§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§<!l§ ? §?!d§.§7c§ : §?!d§.§2" §;
         param1.§`q§(_loc2_,§`O§.§#!`§,§?!d§.§+O§,§4!7§().GetPosition().x,§4!7§().GetPosition().y - 1,2000,"",§?!d§.§1!z§);
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §,6§ && param3.health == param3.healthMax)
         {
            this.§<!l§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§4!J§;
      }
      
      public function §5&§(param1:Number) : void
      {
         scream();
         §]&§ = param1;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§4!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§4!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§4!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
