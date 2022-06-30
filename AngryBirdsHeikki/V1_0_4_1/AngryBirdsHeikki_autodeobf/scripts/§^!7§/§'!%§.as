package §^!7§
{
   import §-!1§.§=!_§;
   
   public class §'!%§
   {
       
      
      public var §7N§:Number = 0;
      
      public var §1!b§:Number = 0;
      
      public var §&y§:Number;
      
      public var §3!2§:Number;
      
      public function §'!%§(param1:Number, param2:Number)
      {
         this.§&y§ = §+B§.§2y§;
         this.§3!2§ = §+B§.§=!c§;
         super();
         this.§&y§ = param1;
         this.§3!2§ = param2;
         this.§7N§ = 0;
         this.§1!b§ = 0;
      }
      
      public function §@v§(param1:§=!_§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§7N§ < §+B§.§&"§)
         {
            this.§7N§ += param2;
            this.§1!b§ += this.§&y§;
            _loc3_ = param2 / §+B§.§-q§ * this.§3!2§ * Math.sin(Math.PI / 4 + this.§1!b§ * 2 * Math.PI);
            _loc4_ = param2 / §+B§.§-q§ * this.§3!2§ * Math.sin(this.§1!b§ * 2.1 * Math.PI);
            this.§3!2§ -= param2 * §+B§.§=!c§ / §+B§.§&"§;
            this.§&y§ -= param2 * §+B§.§2y§ / §+B§.§&"§;
            param1.§&!_§(_loc3_,_loc4_);
            param1.§2m§();
            return true;
         }
         return false;
      }
   }
}
