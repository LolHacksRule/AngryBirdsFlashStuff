package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §5!E§ extends §"7§
   {
       
      
      private var §`#?§:Boolean;
      
      public function §5!E§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§`#?§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§%D§());
         var _loc4_:Number = 1 * Math.cos(§%D§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§-!S§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§`#?§)
         {
            this.§`#?§ = true;
            §@"Y§();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(§ ^§)
         {
            §implements§.setAnimation(§2"W§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
