package §0!2§
{
   import §`u§.§5!-§;
   
   public class §4!u§
   {
       
      
      public var §package§:Number = 0;
      
      public var §6!a§:Number = 0;
      
      public var §0!@§:Number;
      
      public var §5"H§:Number;
      
      public function §4!u§(param1:Number, param2:Number)
      {
         this.§0!@§ = §3`§.§8!b§;
         this.§5"H§ = §3`§.§7J§;
         super();
         this.§0!@§ = param1;
         this.§5"H§ = param2;
         this.§package§ = 0;
         this.§6!a§ = 0;
      }
      
      public function §]!P§(param1:§5!-§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§package§ < §3`§.§4!M§)
         {
            this.§package§ += param2;
            this.§6!a§ += this.§0!@§;
            _loc3_ = param2 / §3`§.§3"G§ * this.§5"H§ * Math.sin(Math.PI / 4 + this.§6!a§ * 2 * Math.PI);
            _loc4_ = param2 / §3`§.§3"G§ * this.§5"H§ * Math.sin(this.§6!a§ * 2.1 * Math.PI);
            this.§5"H§ -= param2 * §3`§.§7J§ / §3`§.§4!M§;
            this.§0!@§ -= param2 * §3`§.§8!b§ / §3`§.§4!M§;
            param1.§9!q§(_loc3_,_loc4_);
            param1.§'!>§();
            return true;
         }
         return false;
      }
   }
}
