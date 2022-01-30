package §9G§
{
   public class §"6§
   {
      
      private static const § !%§:Number = 1;
       
      
      private var §1g§:Number = 1.0;
      
      private var §+L§:Number = 0.0;
      
      private var §<W§:Number = 0.0;
      
      private var §7,§:Number = 0.0;
      
      private var §5!r§:Number = 0.0;
      
      private var §!,§:Number = 1.0;
      
      public function §"6§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§1g§ = param4;
         this.§+L§ = param2;
         this.§<W§ = param1;
         this.§7,§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§!,§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§5!r§ += param1;
         if(this.§5!r§ < this.§<W§)
         {
            this.§!,§ = § !%§ + (this.§1g§ - § !%§) * this.§5!r§ / this.§<W§;
         }
         else if(this.§5!r§ < this.§<W§ + this.§+L§)
         {
            this.§!,§ = this.§1g§;
         }
         else
         {
            if(this.§5!r§ >= this.§<W§ + this.§+L§ + this.§7,§)
            {
               this.§!,§ = § !%§;
               return false;
            }
            _loc2_ = this.§5!r§ - (this.§<W§ + this.§+L§);
            this.§!,§ = this.§1g§ + (§ !%§ - this.§1g§) * _loc2_ / this.§7,§;
         }
         return true;
      }
   }
}
