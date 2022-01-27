package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §7!I§.b2Settings;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §use§.Sprite;
   
   public class §4%§ extends §<"R§
   {
       
      
      private var §2"9§:Boolean = false;
      
      private var §#W§:Number = 0;
      
      public function §4%§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§2"9§ ? §?"E§.§>"4§ : §?"E§.§[1§;
         param1.§>#1§(_loc2_,§^#'§.§&5§,§?"E§.§`"H§,§3"s§().GetPosition().x,§3"s§().GetPosition().y - 1,2000,"",§?"E§.§7`§);
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §;!T§ && param3.health == param3.healthMax)
         {
            this.§2"9§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§2v§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§3"s§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§3"s§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§3"s§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
