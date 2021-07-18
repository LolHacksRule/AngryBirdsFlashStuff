package §'4§
{
   public class §2!;§
   {
      
      private static const §5"3§:Number = 1;
       
      
      private var §^§:Number = 1.0;
      
      private var §%"8§:Number = 0.0;
      
      private var §'!Z§:Number = 0.0;
      
      private var §6",§:Number = 0.0;
      
      private var §3$§:Number = 0.0;
      
      private var § U§:Number = 1.0;
      
      public function §2!;§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§^§ = param4;
         this.§%"8§ = param2;
         this.§'!Z§ = param1;
         this.§6",§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§ U§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§3$§ += param1;
         if(this.§3$§ < this.§'!Z§)
         {
            this.§ U§ = §5"3§ + (this.§^§ - §5"3§) * this.§3$§ / this.§'!Z§;
         }
         else if(this.§3$§ < this.§'!Z§ + this.§%"8§)
         {
            this.§ U§ = this.§^§;
         }
         else
         {
            if(this.§3$§ >= this.§'!Z§ + this.§%"8§ + this.§6",§)
            {
               this.§ U§ = §5"3§;
               return false;
            }
            _loc2_ = this.§3$§ - (this.§'!Z§ + this.§%"8§);
            this.§ U§ = this.§^§ + (§5"3§ - this.§^§) * _loc2_ / this.§6",§;
         }
         return true;
      }
   }
}
