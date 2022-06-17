package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §,"q§ extends §5"W§
   {
       
      
      private var § #F§:Boolean;
      
      public function §,"q§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§ #F§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§30§());
         var _loc4_:Number = 1 * Math.cos(§30§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§ #'§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§ #F§)
         {
            this.§ #F§ = true;
            §7#?§();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(isFlying)
         {
            §]+§.setAnimation(§9#N§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
