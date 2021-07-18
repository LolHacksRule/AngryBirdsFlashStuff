package §@L§
{
   public class §'!+§
   {
      
      private static const §@,§:Number = 1;
       
      
      private var §>3§:Number = 1.0;
      
      private var §0u§:Number = 0.0;
      
      private var §9n§:Number = 0.0;
      
      private var §<^§:Number = 0.0;
      
      private var §+!o§:Number = 0.0;
      
      private var §"!_§:Number = 1.0;
      
      public function §'!+§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§>3§ = param4;
         this.§0u§ = param2;
         this.§9n§ = param1;
         this.§<^§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§"!_§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§+!o§ += param1;
         if(this.§+!o§ < this.§9n§)
         {
            this.§"!_§ = §@,§ + (this.§>3§ - §@,§) * this.§+!o§ / this.§9n§;
         }
         else if(this.§+!o§ < this.§9n§ + this.§0u§)
         {
            this.§"!_§ = this.§>3§;
         }
         else
         {
            if(this.§+!o§ >= this.§9n§ + this.§0u§ + this.§<^§)
            {
               this.§"!_§ = §@,§;
               return false;
            }
            _loc2_ = this.§+!o§ - (this.§9n§ + this.§0u§);
            this.§"!_§ = this.§>3§ + (§@,§ - this.§>3§) * _loc2_ / this.§<^§;
         }
         return true;
      }
   }
}
