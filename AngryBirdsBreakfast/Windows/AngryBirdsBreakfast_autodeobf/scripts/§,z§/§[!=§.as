package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §'F§.b2Settings;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   
   public class §[!=§ extends § !o§
   {
       
      
      private var §1""§:Boolean = false;
      
      private var §%A§:Number = 0;
      
      public function §[!=§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§1""§ ? §2_§.§ !,§ : §2_§.§&"0§;
         param1.§-!,§(_loc2_,§!u§.§54§,§2_§.§9o§,§^`§().GetPosition().x,§^`§().GetPosition().y - 1,2000,"",§2_§.§[!Y§);
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §?!z§ && param3.health == param3.healthMax)
         {
            this.§1""§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§%!Q§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§^`§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^`§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^`§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
