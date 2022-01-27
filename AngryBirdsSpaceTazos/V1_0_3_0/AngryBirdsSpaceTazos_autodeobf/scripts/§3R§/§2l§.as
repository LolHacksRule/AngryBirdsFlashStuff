package §3R§
{
   public class §2l§
   {
      
      private static const §3W§:Number = 1;
       
      
      private var §3!^§:Number = 1.0;
      
      private var §5!o§:Number = 0.0;
      
      private var §5j§:Number = 0.0;
      
      private var §'e§:Number = 0.0;
      
      private var §["1§:Number = 0.0;
      
      private var §6"G§:Number = 1.0;
      
      public function §2l§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§3!^§ = param4;
         this.§5!o§ = param2;
         this.§5j§ = param1;
         this.§'e§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§6"G§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§["1§ += param1;
         if(this.§["1§ < this.§5j§)
         {
            this.§6"G§ = §3W§ + (this.§3!^§ - §3W§) * this.§["1§ / this.§5j§;
         }
         else if(this.§["1§ < this.§5j§ + this.§5!o§)
         {
            this.§6"G§ = this.§3!^§;
         }
         else
         {
            if(this.§["1§ >= this.§5j§ + this.§5!o§ + this.§'e§)
            {
               this.§6"G§ = §3W§;
               return false;
            }
            _loc2_ = this.§["1§ - (this.§5j§ + this.§5!o§);
            this.§6"G§ = this.§3!^§ + (§3W§ - this.§3!^§) * _loc2_ / this.§'e§;
         }
         return true;
      }
   }
}
