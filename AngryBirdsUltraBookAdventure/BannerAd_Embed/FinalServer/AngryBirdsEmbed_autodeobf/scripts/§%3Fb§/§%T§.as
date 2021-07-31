package §?b§
{
   import §@!!§.§=_§;
   
   public class §%T§
   {
       
      
      public var §!!-§:Number = 0;
      
      public var §;x§:Number = 0;
      
      public var §#=§:Number;
      
      public var §9?§:Number;
      
      public function §%T§(param1:Number, param2:Number)
      {
         this.§#=§ = §&z§.§=G§;
         this.§9?§ = §&z§.§<q§;
         super();
         this.§#=§ = param1;
         this.§9?§ = param2;
         this.§!!-§ = 0;
         this.§;x§ = 0;
      }
      
      public function §[D§(param1:§=_§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!!-§ < §&z§.§=!?§)
         {
            this.§!!-§ += param2;
            this.§;x§ += this.§#=§;
            _loc3_ = param2 / §&z§.§=?§ * this.§9?§ * Math.sin(Math.PI / 4 + this.§;x§ * 2 * Math.PI);
            _loc4_ = param2 / §&z§.§=?§ * this.§9?§ * Math.sin(this.§;x§ * 2.1 * Math.PI);
            this.§9?§ -= param2 * §&z§.§<q§ / §&z§.§=!?§;
            this.§#=§ -= param2 * §&z§.§=G§ / §&z§.§=!?§;
            param1.§?F§(_loc3_,_loc4_);
            param1.§84§();
            return true;
         }
         return false;
      }
   }
}
