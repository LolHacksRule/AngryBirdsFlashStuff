package §"P§
{
   import §!"+§.§!o§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §7!F§.b2Settings;
   import §=!c§.b2World;
   
   public class §=!E§ extends §2!5§
   {
       
      
      private var §;!J§:Boolean = false;
      
      private var §-!x§:Number = 0;
      
      public function §=!E§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§0w§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§;!J§ ? §@"§.§`!3§ : §@"§.static;
         param1.§8" §(_loc2_,§>!s§.§>M§,§@"§.§2"+§,§7J§().GetPosition().x,§7J§().GetPosition().y - 1,2000,"",§@"§.§9"%§);
      }
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §?!§ && param3.health == param3.healthMax)
         {
            this.§;!J§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§"A§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§7J§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§7J§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§7J§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
