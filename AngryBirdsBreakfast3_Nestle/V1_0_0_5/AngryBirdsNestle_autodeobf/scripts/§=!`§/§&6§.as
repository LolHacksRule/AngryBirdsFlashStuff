package §=!`§
{
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   import §@h§.b2Settings;
   
   public class §&6§ extends §;!j§
   {
       
      
      private var §<!A§:Boolean = false;
      
      public function §&6§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§'`§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§<!A§ ? §=f§.§5d§ : §=f§.§3Q§;
         param1.§6!=§(_loc2_,§0!q§.§[!V§,§=f§.§<!m§,§^",§().GetPosition().x,§^",§().GetPosition().y - 1,2000,"",§=f§.§2!W§);
      }
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §6!-§ && param3.health == param3.healthMax)
         {
            this.§<!A§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§`Y§;
      }
      
      public function §&! §(param1:Number) : void
      {
         scream();
         §1!$§ = param1;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§^",§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^",§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^",§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
