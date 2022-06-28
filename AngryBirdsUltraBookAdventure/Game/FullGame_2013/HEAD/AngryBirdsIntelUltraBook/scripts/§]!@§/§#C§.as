package §]!@§
{
   import §5u§.§[!,§;
   
   public class §#C§
   {
       
      
      public var §^G§:Number = 0;
      
      public var §-!§:Number = 0;
      
      public var §?B§:Number;
      
      public var §!W§:Number;
      
      public function §#C§(param1:Number, param2:Number)
      {
         this.§?B§ = § ?§.§@!Q§;
         this.§!W§ = § ?§.§81§;
         super();
         this.§?B§ = param1;
         this.§!W§ = param2;
         this.§^G§ = 0;
         this.§-!§ = 0;
      }
      
      public function §0V§(param1:§[!,§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§^G§ < § ?§.§-!a§)
         {
            this.§^G§ += param2;
            this.§-!§ += this.§?B§;
            _loc3_ = param2 / § ?§.§-!-§ * this.§!W§ * Math.sin(Math.PI / 4 + this.§-!§ * 2 * Math.PI);
            _loc4_ = param2 / § ?§.§-!-§ * this.§!W§ * Math.sin(this.§-!§ * 2.1 * Math.PI);
            this.§!W§ -= param2 * § ?§.§81§ / § ?§.§-!a§;
            this.§?B§ -= param2 * § ?§.§@!Q§ / § ?§.§-!a§;
            param1.§"!U§(_loc3_,_loc4_);
            param1.§%N§();
            return true;
         }
         return false;
      }
   }
}
