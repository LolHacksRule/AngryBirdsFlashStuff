package §#g§
{
   public class §5!T§
   {
      
      private static const §7$2§:Number = 1;
       
      
      private var §#"2§:Number = 1.0;
      
      private var §1"F§:Number = 0.0;
      
      private var §+#'§:Number = 0.0;
      
      private var §8!`§:Number = 0.0;
      
      private var §3#H§:Number = 0.0;
      
      private var §>!4§:Number = 1.0;
      
      public function §5!T§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§#"2§ = param4;
         this.§1"F§ = param2;
         this.§+#'§ = param1;
         this.§8!`§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§>!4§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§3#H§ += param1;
         if(this.§3#H§ < this.§+#'§)
         {
            this.§>!4§ = §7$2§ + (this.§#"2§ - §7$2§) * this.§3#H§ / this.§+#'§;
         }
         else if(this.§3#H§ < this.§+#'§ + this.§1"F§)
         {
            this.§>!4§ = this.§#"2§;
         }
         else
         {
            if(this.§3#H§ >= this.§+#'§ + this.§1"F§ + this.§8!`§)
            {
               this.§>!4§ = §7$2§;
               return false;
            }
            _loc2_ = this.§3#H§ - (this.§+#'§ + this.§1"F§);
            this.§>!4§ = this.§#"2§ + (§7$2§ - this.§#"2§) * _loc2_ / this.§8!`§;
         }
         return true;
      }
   }
}
