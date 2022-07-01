package §0I§
{
   public class §2%§
   {
      
      private static const §6"-§:Number = 1;
       
      
      private var §8!i§:Number = 1.0;
      
      private var §!@§:Number = 0.0;
      
      private var § !C§:Number = 0.0;
      
      private var §%" §:Number = 0.0;
      
      private var §`!0§:Number = 0.0;
      
      private var §!T§:Number = 1.0;
      
      public function §2%§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§8!i§ = param4;
         this.§!@§ = param2;
         this.§ !C§ = param1;
         this.§%" § = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§!T§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§`!0§ += param1;
         if(this.§`!0§ < this.§ !C§)
         {
            this.§!T§ = §6"-§ + (this.§8!i§ - §6"-§) * this.§`!0§ / this.§ !C§;
         }
         else if(this.§`!0§ < this.§ !C§ + this.§!@§)
         {
            this.§!T§ = this.§8!i§;
         }
         else
         {
            if(this.§`!0§ >= this.§ !C§ + this.§!@§ + this.§%" §)
            {
               this.§!T§ = §6"-§;
               return false;
            }
            _loc2_ = this.§`!0§ - (this.§ !C§ + this.§!@§);
            this.§!T§ = this.§8!i§ + (§6"-§ - this.§8!i§) * _loc2_ / this.§%" §;
         }
         return true;
      }
   }
}
