package §[x§
{
   import §[K§.§2!1§;
   
   public class §9Z§
   {
       
      
      public var §"!6§:Number = 0;
      
      public var §2§:Number = 0;
      
      public var §-1§:Number;
      
      public var §&%§:Number;
      
      public function §9Z§(param1:Number, param2:Number)
      {
         this.§-1§ = §`5§.§3x§;
         this.§&%§ = §`5§.§"y§;
         super();
         this.§-1§ = param1;
         this.§&%§ = param2;
         this.§"!6§ = 0;
         this.§2§ = 0;
      }
      
      public function §-0§(param1:§2!1§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§"!6§ < §`5§.§>!G§)
         {
            this.§"!6§ += param2;
            this.§2§ += this.§-1§;
            _loc3_ = param2 / §`5§.§^!E§ * this.§&%§ * Math.sin(Math.PI / 4 + this.§2§ * 2 * Math.PI);
            _loc4_ = param2 / §`5§.§^!E§ * this.§&%§ * Math.sin(this.§2§ * 2.1 * Math.PI);
            this.§&%§ -= param2 * §`5§.§"y§ / §`5§.§>!G§;
            this.§-1§ -= param2 * §`5§.§3x§ / §`5§.§>!G§;
            param1.§3Q§(_loc3_,_loc4_);
            param1.§<M§();
            return true;
         }
         return false;
      }
   }
}
