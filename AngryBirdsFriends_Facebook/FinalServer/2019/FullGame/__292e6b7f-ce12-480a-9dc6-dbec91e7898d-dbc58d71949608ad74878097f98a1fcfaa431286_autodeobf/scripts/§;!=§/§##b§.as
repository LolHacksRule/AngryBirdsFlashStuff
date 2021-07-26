package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §##b§ extends §[!k§
   {
       
      
      private var §7"R§:Boolean;
      
      public function §##b§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§7"R§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§3"W§());
         var _loc4_:Number = 1 * Math.cos(§3"W§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§]!m§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§7"R§)
         {
            this.§7"R§ = true;
            §%$%§();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(isFlying)
         {
            §]$"§.setAnimation(§-"e§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
