package §,T§
{
   import §5!6§.§&!!§;
   
   public class §>!-§
   {
       
      
      public var §"W§:Number = 0;
      
      public var §'!!§:Number = 0;
      
      public var §>!?§:Number;
      
      public var §<H§:Number;
      
      public function §>!-§(param1:Number, param2:Number)
      {
         this.§>!?§ = Tuner.§6D§;
         this.§<H§ = Tuner.§5!7§;
         super();
         this.§>!?§ = param1;
         this.§<H§ = param2;
         this.§"W§ = 0;
         this.§'!!§ = 0;
      }
      
      public function §`2§(param1:§&!!§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§"W§ < Tuner.§#_§)
         {
            this.§"W§ += param2;
            this.§'!!§ += this.§>!?§;
            _loc3_ = param2 / Tuner.§9j§ * this.§<H§ * Math.sin(Math.PI / 4 + this.§'!!§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§9j§ * this.§<H§ * Math.sin(this.§'!!§ * 2.1 * Math.PI);
            this.§<H§ -= param2 * Tuner.§5!7§ / Tuner.§#_§;
            this.§>!?§ -= param2 * Tuner.§6D§ / Tuner.§#_§;
            param1.§#!;§(_loc3_,_loc4_);
            param1.§%2§();
            return true;
         }
         return false;
      }
   }
}
