package §3G§
{
   import §3c§.§^z§;
   
   public class §'!$§
   {
       
      
      public var §1k§:Number = 0;
      
      public var §[!C§:Number = 0;
      
      public var §;8§:Number;
      
      public var §`!<§:Number;
      
      public function §'!$§(param1:Number, param2:Number)
      {
         this.§;8§ = §&!"§.§]!6§;
         this.§`!<§ = §&!"§.§^=§;
         super();
         this.§;8§ = param1;
         this.§`!<§ = param2;
         this.§1k§ = 0;
         this.§[!C§ = 0;
      }
      
      public function §"<§(param1:§^z§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§1k§ < §&!"§.§"!4§)
         {
            this.§1k§ += param2;
            this.§[!C§ += this.§;8§;
            _loc3_ = param2 / §&!"§.§@!5§ * this.§`!<§ * Math.sin(Math.PI / 4 + this.§[!C§ * 2 * Math.PI);
            _loc4_ = param2 / §&!"§.§@!5§ * this.§`!<§ * Math.sin(this.§[!C§ * 2.1 * Math.PI);
            this.§`!<§ -= param2 * §&!"§.§^=§ / §&!"§.§"!4§;
            this.§;8§ -= param2 * §&!"§.§]!6§ / §&!"§.§"!4§;
            param1.§2B§(_loc3_,_loc4_);
            param1.§]8§();
            return true;
         }
         return false;
      }
   }
}
