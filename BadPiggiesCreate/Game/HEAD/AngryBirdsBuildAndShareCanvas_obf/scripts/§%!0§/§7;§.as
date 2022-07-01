package §%!0§
{
   import §,!g§.§"!P§;
   
   public class §7;§
   {
       
      
      public var §!'§:Number = 0;
      
      public var §&"?§:Number = 0;
      
      public var §2!§:Number;
      
      public var §<T§:Number;
      
      public function §7;§(param1:Number, param2:Number)
      {
         this.§2!§ = §,g§.§-!i§;
         this.§<T§ = §,g§.§+!O§;
         super();
         this.§2!§ = param1;
         this.§<T§ = param2;
         this.§!'§ = 0;
         this.§&"?§ = 0;
      }
      
      public function §5!I§(param1:§"!P§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!'§ < §,g§.§"2§)
         {
            this.§!'§ += param2;
            this.§&"?§ += this.§2!§;
            _loc3_ = param2 / §,g§.§,!x§ * this.§<T§ * Math.sin(Math.PI / 4 + this.§&"?§ * 2 * Math.PI);
            _loc4_ = param2 / §,g§.§,!x§ * this.§<T§ * Math.sin(this.§&"?§ * 2.1 * Math.PI);
            this.§<T§ -= param2 * §,g§.§+!O§ / §,g§.§"2§;
            this.§2!§ -= param2 * §,g§.§-!i§ / §,g§.§"2§;
            param1.§`!_§(_loc3_,_loc4_);
            param1.§9,§();
            return true;
         }
         return false;
      }
   }
}
