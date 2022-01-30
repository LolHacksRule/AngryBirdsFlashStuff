package §"!-§
{
   import § !%§.b2Settings;
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §;'§.b2World;
   
   public class §"x§ extends §8!#§
   {
       
      
      private var §[!i§:Boolean = false;
      
      public function §"x§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§!l§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§[!i§ ? §%v§.§3!z§ : §%v§.§>d§;
         param1.§;!9§(_loc2_,§8W§.§8!C§,§%v§.§," §,§9l§().GetPosition().x,§9l§().GetPosition().y - 1,2000,"",§%v§.§6!;§);
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is § !§ && param3.health == param3.healthMax)
         {
            this.§[!i§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§-C§;
      }
      
      public function §5!e§(param1:Number) : void
      {
         scream();
         §'!z§ = param1;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§9l§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9l§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9l§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
