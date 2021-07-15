package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §<!8§ extends §?!z§
   {
      
      private static const §@!`§:int = 2000;
       
      
      private var §,-§:Number = -1;
      
      private var §,M§:Number = -1;
      
      private var §?!u§:Boolean = false;
      
      public function §<!8§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§?!u§;
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(§1!q§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§4Y§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§4Y§(§@!`§,param2);
         }
         return _loc5_;
      }
      
      protected function §4Y§(param1:Number, param2:§3!#§) : void
      {
         if(param1 != 0 && this.§,M§ > 0)
         {
            return;
         }
         this.§,-§ = 0;
         if(param1 == 0)
         {
            this.§,M§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§,M§ = param1;
         }
         else
         {
            this.§,M§ = §@!`§;
         }
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         super.update(param1,param2);
         if(this.§,-§ >= 0)
         {
            this.§,-§ += param1;
            if(this.§,-§ >= this.§,M§)
            {
               this.§?!u§ = true;
               this.§,-§ = -1;
               param2.§ !%§(§@q§.§-Q§,§^`§().GetPosition().x,§^`§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§,-§ < 0)
         {
            return true;
         }
         if(this.§,-§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,-§ > 0)
         {
            return this.§,-§ / this.§,M§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §1!q§ || this.§,M§ > 0;
      }
   }
}
