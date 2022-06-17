package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §%#>§ extends §5"W§
   {
      
      private static const §`"M§:int = 2000;
       
      
      private var §6#4§:Number = -1;
      
      private var §@"z§:Number = -1;
      
      private var §6"2§:Boolean = false;
      
      public function §%#>§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§6"2§;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§'$D§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(!this.specialPowerUsed && param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§'$D§(§`"M§,param2);
         }
         return _loc6_;
      }
      
      protected function §'$D§(param1:Number, param2:§ #'§) : void
      {
         if(param1 != 0 && this.§@"z§ > 0)
         {
            return;
         }
         this.§6#4§ = 0;
         if(param1 == 0)
         {
            this.§@"z§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§@"z§ = param1;
         }
         else
         {
            this.§@"z§ = §`"M§;
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(this.§6#4§ >= 0)
         {
            this.§6#4§ += param1;
            if(this.§6#4§ >= this.§@"z§)
            {
               this.§6"2§ = true;
               this.§6#4§ = -1;
               param2.addExplosion(§]" §.§-#v§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§6#4§ < 0)
         {
            return true;
         }
         if(this.§6#4§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§6#4§ > 0)
         {
            return this.§6#4§ / this.§@"z§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.§@"z§ > 0;
      }
   }
}
