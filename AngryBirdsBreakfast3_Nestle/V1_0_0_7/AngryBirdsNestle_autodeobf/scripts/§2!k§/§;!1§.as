package §2!k§
{
   import § !=§.Sprite;
   import §!r§.b2Settings;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §[^§.§`!M§;
   
   public class §;!1§ extends §>-§
   {
       
      
      private var §5!p§:Boolean = false;
      
      public function §;!1§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§?N§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§5!p§ ? §3?§.§3p§ : §3?§.§ for§;
         param1.§;$§(_loc2_,§@!`§.§<<§,§3?§.§5!e§,§ 2§().GetPosition().x,§ 2§().GetPosition().y - 1,2000,"",§3?§.§&""§);
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §6",§ && param3.health == param3.healthMax)
         {
            this.§5!p§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§;!M§;
      }
      
      public function §%p§(param1:Number) : void
      {
         scream();
         §@!]§ = param1;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§ 2§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§ 2§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§ 2§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
