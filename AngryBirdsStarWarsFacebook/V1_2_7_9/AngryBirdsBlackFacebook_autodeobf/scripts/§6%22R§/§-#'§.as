package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §9!s§.b2Settings;
   import §>P§.§=!,§;
   
   public class §-#'§ extends §[!Z§
   {
       
      
      private var §"1§:Boolean = false;
      
      private var §9!X§:Number = 0;
      
      public function §-#'§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§"1§ ? §;6§.§9!K§ : §;6§.§%V§;
         param1.§[#$§(_loc2_,§#"m§.§=!"§,§;6§.§7!X§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y - 1,2000,"",§;6§.§^!"§);
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §%!0§ && param3.health == param3.healthMax)
         {
            this.§"1§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§ @§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§?"Z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?"Z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?"Z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
