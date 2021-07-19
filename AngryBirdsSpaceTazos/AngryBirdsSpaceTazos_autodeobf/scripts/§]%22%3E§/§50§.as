package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §@!'§.b2Settings;
   
   public class §50§ extends §5=§
   {
       
      
      private var §2Q§:Boolean = false;
      
      private var §^"5§:Number = 0;
      
      public function §50§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc2_:String = !!this.§2Q§ ? §2!V§.§2"1§ : §2!V§.§`"G§;
         param1.§%!y§(_loc2_,§0"@§.§3!W§,§2!V§.§?v§,§^!z§().GetPosition().x,§^!z§().GetPosition().y - 1,2000,"",§2!V§.§7!W§);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is § 6§ && param3.health == param3.healthMax)
         {
            this.§2Q§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§>_§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§^!z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^!z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§^!z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
