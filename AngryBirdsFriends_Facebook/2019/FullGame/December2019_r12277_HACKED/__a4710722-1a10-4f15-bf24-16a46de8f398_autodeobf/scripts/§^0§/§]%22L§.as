package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §]"L§ extends §[# §
   {
       
      
      private var §>"-§:Boolean;
      
      public function §]"L§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§>"-§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§<!C§());
         var _loc4_:Number = 1 * Math.cos(§<!C§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§>"T§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§>"-§)
         {
            this.§>"-§ = true;
            §9$ §();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(isFlying)
         {
            §-"p§.setAnimation(§%x§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
