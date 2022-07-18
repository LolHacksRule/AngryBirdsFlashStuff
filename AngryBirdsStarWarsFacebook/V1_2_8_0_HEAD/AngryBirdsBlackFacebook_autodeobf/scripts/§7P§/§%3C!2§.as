package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §5"i§.b2Settings;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §<!2§ extends §^#$§
   {
       
      
      private var §?#R§:Boolean = false;
      
      private var §9#S§:Number = 0;
      
      public function §<!2§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§?#R§ ? § U§.§;!a§ : § U§.§1!T§;
         param1.§;!0§(_loc2_,§,!w§.§ !B§,§ U§.§>#]§,§3!t§().GetPosition().x,§3!t§().GetPosition().y - 1,2000,"",§ U§.§3!]§);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §?"N§ && param3.health == param3.healthMax)
         {
            this.§?#R§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§=!s§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§3!t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§3!t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§3!t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
