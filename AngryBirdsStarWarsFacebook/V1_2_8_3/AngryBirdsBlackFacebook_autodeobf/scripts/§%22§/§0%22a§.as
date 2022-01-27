package §"§#0
{
   public class §0"a§
   {
      
      private static const §7z§:Number = 1;
       
      
      private var §&"'§:Number = 1.0;
      
      private var §9!d§:Number = 0.0;
      
      private var §="P§:Number = 0.0;
      
      private var §'!M§:Number = 0.0;
      
      private var §7!u§:Number = 0.0;
      
      private var §5l§:Number = 1.0;
      
      public function §0"a§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§&"'§ = param4;
         this.§9!d§ = param2;
         this.§="P§ = param1;
         this.§'!M§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§5l§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§7!u§ += param1;
         if(this.§7!u§ < this.§="P§)
         {
            this.§5l§ = §7z§ + (this.§&"'§ - §7z§) * this.§7!u§ / this.§="P§;
         }
         else if(this.§7!u§ < this.§="P§ + this.§9!d§)
         {
            this.§5l§ = this.§&"'§;
         }
         else
         {
            if(this.§7!u§ >= this.§="P§ + this.§9!d§ + this.§'!M§)
            {
               this.§5l§ = §7z§;
               return false;
            }
            _loc2_ = this.§7!u§ - (this.§="P§ + this.§9!d§);
            this.§5l§ = this.§&"'§ + (§7z§ - this.§&"'§) * _loc2_ / this.§'!M§;
         }
         return true;
      }
   }
}
