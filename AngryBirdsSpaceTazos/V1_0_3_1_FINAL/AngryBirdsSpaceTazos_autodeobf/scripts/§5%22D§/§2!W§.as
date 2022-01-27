package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §2!W§ extends §1"G§
   {
      
      private static const §%#§:int = 2000;
       
      
      private var §-%§:Number = -1;
      
      private var §26§:Number = -1;
      
      private var §8!1§:Boolean = false;
      
      public function §2!W§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§8!1§;
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(§!!a§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§?m§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§?m§(§%#§,param2);
         }
         return _loc5_;
      }
      
      protected function §?m§(param1:Number, param2:§0!5§) : void
      {
         this.§-%§ = 0;
         if(param1 == 0)
         {
            this.§26§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§26§ = param1;
         }
         else
         {
            this.§26§ = §%#§;
         }
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(this.§-%§ >= 0)
         {
            this.§-%§ += param1;
            if(this.§-%§ >= this.§26§)
            {
               this.§8!1§ = true;
               this.§-%§ = -1;
               param2.§-Z§(§09§.§@! §,§9B§().GetPosition().x,§9B§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§-%§ < 0)
         {
            return true;
         }
         if(this.§-%§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§-%§ > 0)
         {
            return this.§-%§ / this.§26§;
         }
         return -1;
      }
   }
}
