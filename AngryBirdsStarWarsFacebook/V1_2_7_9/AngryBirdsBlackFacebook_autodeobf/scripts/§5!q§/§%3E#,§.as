package §5!q§
{
   public class §>#,§
   {
      
      private static const §1!$§:Number = 1;
       
      
      private var §`w§:Number = 1.0;
      
      private var §&!Y§:Number = 0.0;
      
      private var §8"3§:Number = 0.0;
      
      private var §&!o§:Number = 0.0;
      
      private var §""o§:Number = 0.0;
      
      private var §`#!§:Number = 1.0;
      
      public function §>#,§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§`w§ = param4;
         this.§&!Y§ = param2;
         this.§8"3§ = param1;
         this.§&!o§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§`#!§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§""o§ += param1;
         if(this.§""o§ < this.§8"3§)
         {
            this.§`#!§ = §1!$§ + (this.§`w§ - §1!$§) * this.§""o§ / this.§8"3§;
         }
         else if(this.§""o§ < this.§8"3§ + this.§&!Y§)
         {
            this.§`#!§ = this.§`w§;
         }
         else
         {
            if(this.§""o§ >= this.§8"3§ + this.§&!Y§ + this.§&!o§)
            {
               this.§`#!§ = §1!$§;
               return false;
            }
            _loc2_ = this.§""o§ - (this.§8"3§ + this.§&!Y§);
            this.§`#!§ = this.§`w§ + (§1!$§ - this.§`w§) * _loc2_ / this.§&!o§;
         }
         return true;
      }
   }
}
