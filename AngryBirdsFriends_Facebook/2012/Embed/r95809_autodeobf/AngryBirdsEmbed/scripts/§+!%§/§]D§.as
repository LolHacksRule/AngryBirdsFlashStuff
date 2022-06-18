package §+!%§
{
   import § `§.§3F§;
   
   public class §]D§
   {
       
      
      public var §+`§:Number = 0;
      
      public var §87§:Number = 0;
      
      public var §%r§:Number;
      
      public var §[!§:Number;
      
      public function §]D§(param1:Number, param2:Number)
      {
         this.§%r§ = §use§.§<k§;
         this.§[!§ = §use§.§]G§;
         super();
         this.§%r§ = param1;
         this.§[!§ = param2;
         this.§+`§ = 0;
         this.§87§ = 0;
      }
      
      public function §>!G§(param1:§3F§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§+`§ < §use§.§2V§)
         {
            this.§+`§ += param2;
            this.§87§ += this.§%r§;
            _loc3_ = param2 / §use§.§^9§ * this.§[!§ * Math.sin(Math.PI / 4 + this.§87§ * 2 * Math.PI);
            _loc4_ = param2 / §use§.§^9§ * this.§[!§ * Math.sin(this.§87§ * 2.1 * Math.PI);
            this.§[!§ -= param2 * §use§.§]G§ / §use§.§2V§;
            this.§%r§ -= param2 * §use§.§<k§ / §use§.§2V§;
            param1.§0!G§(_loc3_,_loc4_);
            param1.§!G§();
            return true;
         }
         return false;
      }
   }
}
