package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   import §@!@§.b2Settings;
   
   public class §<!f§ extends §'y§
   {
       
      
      private var §-V§:Boolean = false;
      
      private var §8!d§:Number = 0;
      
      public function §<!f§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         var _loc2_:String = !!this.§-V§ ? §9!v§.§="4§ : §9!v§.§8"%§;
         param1.§=J§(_loc2_,§?L§.§7!B§,§9!v§.§?"A§,§ <§().GetPosition().x,§ <§().GetPosition().y - 1,2000,"",§9!v§.§<b§);
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §#!v§ && param3.health == param3.healthMax)
         {
            this.§-V§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@Q§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§ <§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§ <§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§ <§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
