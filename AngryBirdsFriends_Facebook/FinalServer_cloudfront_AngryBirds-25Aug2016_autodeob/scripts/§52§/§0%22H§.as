package §52§
{
   public class §0"H§
   {
      
      private static const §^#R§:Number = 1;
       
      
      private var §%Y§:Number = 1.0;
      
      private var §@[§:Number = 0.0;
      
      private var §9!O§:Number = 0.0;
      
      private var §'#1§:Number = 0.0;
      
      private var §4#+§:Number = 0.0;
      
      private var §;,§:Number = 1.0;
      
      public function §0"H§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§%Y§ = param4;
         this.§@[§ = param2;
         this.§9!O§ = param1;
         this.§'#1§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§;,§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§4#+§ += param1;
         if(this.§4#+§ < this.§9!O§)
         {
            this.§;,§ = §^#R§ + (this.§%Y§ - §^#R§) * this.§4#+§ / this.§9!O§;
         }
         else if(this.§4#+§ < this.§9!O§ + this.§@[§)
         {
            this.§;,§ = this.§%Y§;
         }
         else if(this.§4#+§ < this.§9!O§ + this.§@[§ + this.§'#1§)
         {
            _loc2_ = this.§4#+§ - (this.§9!O§ + this.§@[§);
            this.§;,§ = this.§%Y§ + (§^#R§ - this.§%Y§) * _loc2_ / this.§'#1§;
         }
         else
         {
            this.§;,§ = §^#R§;
            return false;
         }
         return true;
      }
   }
}
