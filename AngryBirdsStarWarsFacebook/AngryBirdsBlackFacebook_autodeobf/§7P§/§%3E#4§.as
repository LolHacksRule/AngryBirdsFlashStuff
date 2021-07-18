package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §>#4§ extends §?"N§
   {
      
      private static const §="t§:int = 2000;
       
      
      private var §6#D§:Number = -1;
      
      private var §%!k§:Number = -1;
      
      private var §["W§:Boolean = false;
      
      public function §>#4§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§["W§;
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(§8!_§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§#g§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§#g§(§="t§,param2);
         }
         return _loc5_;
      }
      
      protected function §#g§(param1:Number, param2:§;$§) : void
      {
         if(param1 != 0 && this.§%!k§ > 0)
         {
            return;
         }
         this.§6#D§ = 0;
         if(param1 == 0)
         {
            this.§%!k§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§%!k§ = param1;
         }
         else
         {
            this.§%!k§ = §="t§;
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(this.§6#D§ >= 0)
         {
            this.§6#D§ += param1;
            if(this.§6#D§ >= this.§%!k§)
            {
               this.§["W§ = true;
               this.§6#D§ = -1;
               param2.§1!R§(§>"_§.§2"0§,§3!t§().GetPosition().x,§3!t§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§6#D§ < 0)
         {
            return true;
         }
         if(this.§6#D§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§6#D§ > 0)
         {
            return this.§6#D§ / this.§%!k§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §8!_§ || this.§%!k§ > 0;
      }
   }
}
