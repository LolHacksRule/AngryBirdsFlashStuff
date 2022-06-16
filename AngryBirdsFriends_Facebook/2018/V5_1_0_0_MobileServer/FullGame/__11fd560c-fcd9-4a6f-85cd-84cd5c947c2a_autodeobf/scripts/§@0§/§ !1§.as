package §@0§
{
   public class § !1§
   {
      
      private static const §4^§:Number = 1;
       
      
      private var §6$<§:Number = 1.0;
      
      private var §,!n§:Number = 0.0;
      
      private var §;#y§:Number = 0.0;
      
      private var §8$>§:Number = 0.0;
      
      private var §;!A§:Number = 0.0;
      
      private var §`"9§:Number = 1.0;
      
      public function § !1§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§6$<§ = param4;
         this.§,!n§ = param2;
         this.§;#y§ = param1;
         this.§8$>§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§`"9§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§;!A§ += param1;
         if(this.§;!A§ < this.§;#y§)
         {
            this.§`"9§ = §4^§ + (this.§6$<§ - §4^§) * this.§;!A§ / this.§;#y§;
         }
         else if(this.§;!A§ < this.§;#y§ + this.§,!n§)
         {
            this.§`"9§ = this.§6$<§;
         }
         else
         {
            if(this.§;!A§ >= this.§;#y§ + this.§,!n§ + this.§8$>§)
            {
               this.§`"9§ = §4^§;
               return false;
            }
            _loc2_ = this.§;!A§ - (this.§;#y§ + this.§,!n§);
            this.§`"9§ = this.§6$<§ + (§4^§ - this.§6$<§) * _loc2_ / this.§8$>§;
         }
         return true;
      }
   }
}
