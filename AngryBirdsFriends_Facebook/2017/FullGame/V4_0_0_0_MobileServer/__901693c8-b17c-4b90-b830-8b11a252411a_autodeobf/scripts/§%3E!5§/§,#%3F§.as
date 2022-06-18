package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §,#?§ extends §"7§
   {
      
      private static const §@!J§:int = 2000;
       
      
      private var §>!%§:Number = -1;
      
      private var §7"0§:Number = -1;
      
      private var §>#b§:Boolean = false;
      
      public function §,#?§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§>#b§;
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         if(§ ^§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§@#%§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§@#%§(§@!J§,param2);
         }
         return _loc5_;
      }
      
      protected function §@#%§(param1:Number, param2:§-!S§) : void
      {
         if(param1 != 0 && this.§7"0§ > 0)
         {
            return;
         }
         this.§>!%§ = 0;
         if(param1 == 0)
         {
            this.§7"0§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§7"0§ = param1;
         }
         else
         {
            this.§7"0§ = §@!J§;
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(this.§>!%§ >= 0)
         {
            this.§>!%§ += param1;
            if(this.§>!%§ >= this.§7"0§)
            {
               this.§>#b§ = true;
               this.§>!%§ = -1;
               param2.§<!>§(§+!H§.§,"X§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§>!%§ < 0)
         {
            return true;
         }
         if(this.§>!%§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§>!%§ > 0)
         {
            return this.§>!%§ / this.§7"0§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return § ^§ || this.§7"0§ > 0;
      }
   }
}
