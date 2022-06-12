package §=b§
{
   import §@!N§.§2i§;
   
   public class §4!;§
   {
       
      
      public var § !d§:Number = 0;
      
      public var §]!c§:Number = 0;
      
      public var §^F§:Number;
      
      public var §default§:Number;
      
      public function §4!;§(param1:Number, param2:Number)
      {
         this.§^F§ = §0;§.§true §;
         this.§default§ = §0;§.§ 6§;
         super();
         this.§^F§ = param1;
         this.§default§ = param2;
         this.§ !d§ = 0;
         this.§]!c§ = 0;
      }
      
      public function §>!9§(param1:§2i§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§ !d§ < §0;§.§;a§)
         {
            this.§ !d§ += param2;
            this.§]!c§ += this.§^F§;
            _loc3_ = param2 / §0;§.§"N§ * this.§default§ * Math.sin(Math.PI / 4 + this.§]!c§ * 2 * Math.PI);
            _loc4_ = param2 / §0;§.§"N§ * this.§default§ * Math.sin(this.§]!c§ * 2.1 * Math.PI);
            this.§default§ -= param2 * §0;§.§ 6§ / §0;§.§;a§;
            this.§^F§ -= param2 * §0;§.§true § / §0;§.§;a§;
            param1.§ !=§(_loc3_,_loc4_);
            param1.§6!M§();
            return true;
         }
         return false;
      }
   }
}
