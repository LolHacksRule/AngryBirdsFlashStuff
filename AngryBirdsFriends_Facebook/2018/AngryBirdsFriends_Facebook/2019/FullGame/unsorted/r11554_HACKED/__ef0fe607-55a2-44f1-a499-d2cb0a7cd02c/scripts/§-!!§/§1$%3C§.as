package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §[!3§.b2Settings;
   import §^"[§.§4!8§;
   
   public class §1$<§ extends §`6§
   {
       
      
      private var §="[§:Boolean = false;
      
      private var §[$6§:Number = 0;
      
      public function §1$<§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§="[§ ? §'Y§.§6b§ : §'Y§.§>$?§;
         param1.addParticle(_loc2_,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§'Y§.§,"A§);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0 && param3 is §5"W§ && param3.health == param3.§1#H§)
         {
            this.§="[§ = true;
         }
         return _loc6_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§^#v§;
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
