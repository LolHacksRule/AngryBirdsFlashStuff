package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §8K§.b2Settings;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §9V§ extends §&!v§
   {
       
      
      private var §5#§:Boolean = false;
      
      private var §8!I§:Number = 0;
      
      public function §9V§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         var _loc2_:String = !!this.§5#§ ? §8"#§.§<4§ : §8"#§.§ 9§;
         param1.§'!f§(_loc2_,§'!X§.§=!O§,§8"#§.§?"B§,§9B§().GetPosition().x,§9B§().GetPosition().y - 1,2000,"",§8"#§.§4!5§);
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §1"G§ && param3.health == param3.healthMax)
         {
            this.§5#§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@";§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§9B§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9B§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9B§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
