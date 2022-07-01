package §@!"§
{
   import §%8§.§@-§;
   import §'!_§.b2Settings;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §7k§ extends §5!;§
   {
       
      
      private var §>!p§:Boolean = false;
      
      private var §<_§:Number = 0;
      
      public function §7k§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§>!p§ ? §`""§.§2o§ : §`""§.§,!b§;
         param1.§9!@§(_loc2_,§"w§.§,§,§`""§.§%!9§,§!!I§().GetPosition().x,§!!I§().GetPosition().y - 1,2000,"",§`""§.§?!$§);
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §^"2§ && param3.health == param3.healthMax)
         {
            this.§>!p§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@5§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§!!I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§!!I§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§!!I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
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
