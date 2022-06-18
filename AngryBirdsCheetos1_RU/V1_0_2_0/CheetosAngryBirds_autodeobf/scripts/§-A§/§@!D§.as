package §-A§
{
   import §#V§.§,!W§;
   
   public class §@!D§
   {
       
      
      public var §!!J§:Number = 0;
      
      public var §4!C§:Number = 0;
      
      public var §?Z§:Number;
      
      public var §-,§:Number;
      
      public function §@!D§(param1:Number, param2:Number)
      {
         this.§?Z§ = §36§.§9!I§;
         this.§-,§ = §36§.§;!I§;
         super();
         this.§?Z§ = param1;
         this.§-,§ = param2;
         this.§!!J§ = 0;
         this.§4!C§ = 0;
      }
      
      public function §>g§(param1:§,!W§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!!J§ < §36§.§?'§)
         {
            this.§!!J§ += param2;
            this.§4!C§ += this.§?Z§;
            _loc3_ = param2 / §36§.§44§ * this.§-,§ * Math.sin(Math.PI / 4 + this.§4!C§ * 2 * Math.PI);
            _loc4_ = param2 / §36§.§44§ * this.§-,§ * Math.sin(this.§4!C§ * 2.1 * Math.PI);
            this.§-,§ -= param2 * §36§.§;!I§ / §36§.§?'§;
            this.§?Z§ -= param2 * §36§.§9!I§ / §36§.§?'§;
            param1.§1x§(_loc3_,_loc4_);
            param1.§2-§();
            return true;
         }
         return false;
      }
   }
}
