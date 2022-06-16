package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   
   public class §9!c§ extends §-k§
   {
       
      
      private var §`!,§:Boolean;
      
      public function §9!c§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§`!,§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§^!Y§());
         var _loc4_:Number = 1 * Math.cos(§^!Y§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§7!O§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§7!O§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§`!,§)
         {
            this.§`!,§ = true;
            §&!N§(§0!y§.§[#M§);
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(§>6§)
         {
            §'"s§.setAnimation(§""8§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
