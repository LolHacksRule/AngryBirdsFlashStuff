package §?$#§
{
   public class §,#,§
   {
      
      private static const §"A§:Number = 1;
       
      
      private var §+#9§:Number = 1.0;
      
      private var §;"t§:Number = 0.0;
      
      private var §>"X§:Number = 0.0;
      
      private var §##E§:Number = 0.0;
      
      private var §&G§:Number = 0.0;
      
      private var §5#3§:Number = 1.0;
      
      public function §,#,§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§+#9§ = param4;
         this.§;"t§ = param2;
         this.§>"X§ = param1;
         this.§##E§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§5#3§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§&G§ += param1;
         if(this.§&G§ < this.§>"X§)
         {
            this.§5#3§ = §"A§ + (this.§+#9§ - §"A§) * this.§&G§ / this.§>"X§;
         }
         else if(this.§&G§ < this.§>"X§ + this.§;"t§)
         {
            this.§5#3§ = this.§+#9§;
         }
         else if(this.§&G§ < this.§>"X§ + this.§;"t§ + this.§##E§)
         {
            _loc2_ = this.§&G§ - (this.§>"X§ + this.§;"t§);
            this.§5#3§ = this.§+#9§ + (§"A§ - this.§+#9§) * _loc2_ / this.§##E§;
         }
         else
         {
            this.§5#3§ = §"A§;
            return false;
         }
         return true;
      }
   }
}
