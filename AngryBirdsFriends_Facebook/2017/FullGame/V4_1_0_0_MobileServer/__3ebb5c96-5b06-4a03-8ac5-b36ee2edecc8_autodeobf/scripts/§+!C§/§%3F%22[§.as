package §+!C§
{
   public class §?"[§
   {
      
      private static const §>"F§:Number = 1;
       
      
      private var §+!,§:Number = 1.0;
      
      private var §0"N§:Number = 0.0;
      
      private var §9"8§:Number = 0.0;
      
      private var §`"$§:Number = 0.0;
      
      private var §`#5§:Number = 0.0;
      
      private var §9!s§:Number = 1.0;
      
      public function §?"[§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§+!,§ = param4;
         this.§0"N§ = param2;
         this.§9"8§ = param1;
         this.§`"$§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§9!s§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§`#5§ += param1;
         if(this.§`#5§ < this.§9"8§)
         {
            this.§9!s§ = §>"F§ + (this.§+!,§ - §>"F§) * this.§`#5§ / this.§9"8§;
         }
         else if(this.§`#5§ < this.§9"8§ + this.§0"N§)
         {
            this.§9!s§ = this.§+!,§;
         }
         else
         {
            if(this.§`#5§ >= this.§9"8§ + this.§0"N§ + this.§`"$§)
            {
               this.§9!s§ = §>"F§;
               return false;
            }
            _loc2_ = this.§`#5§ - (this.§9"8§ + this.§0"N§);
            this.§9!s§ = this.§+!,§ + (§>"F§ - this.§+!,§) * _loc2_ / this.§`"$§;
         }
         return true;
      }
   }
}
