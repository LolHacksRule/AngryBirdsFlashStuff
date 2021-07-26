package §;!=§
{
   import § !N§.§5"?§;
   import §&$+§.b2Settings;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   
   public class §#!m§ extends §-#9§
   {
       
      
      private var §#$D§:Boolean = false;
      
      private var §<X§:Number = 0;
      
      public function §#!m§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§#$D§ ? §=,§.§,$A§ : §=,§.§%!m§;
         param1.addParticle(_loc2_,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=,§.§ a§);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0 && param3 is §[!k§ && param3.health == param3.§+#_§)
         {
            this.§#$D§ = true;
         }
         return _loc6_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§-##§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
