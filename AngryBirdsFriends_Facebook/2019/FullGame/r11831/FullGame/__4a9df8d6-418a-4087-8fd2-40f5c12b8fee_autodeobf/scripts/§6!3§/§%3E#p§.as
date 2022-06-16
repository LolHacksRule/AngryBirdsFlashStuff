package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §?$<§.§?$>§;
   import §?N§.b2Settings;
   import §@!S§.b2World;
   
   public class §>#p§ extends §,#f§
   {
       
      
      private var §#$9§:Boolean = false;
      
      private var §7#E§:Number = 0;
      
      public function §>#p§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§#$9§ ? §6!9§.§]!J§ : §6!9§.§5!L§;
         param1.addParticle(_loc2_,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§6!9§.§'s§);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0 && param3 is §,s§ && param3.health == param3.§6"k§)
         {
            this.§#$9§ = true;
         }
         return _loc6_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§!"N§;
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
