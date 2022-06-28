package §40§
{
   import §`!M§.§%X§;
   
   public class §73§
   {
       
      
      public var §,§:Number = 0;
      
      public var §5o§:Number = 0;
      
      public var §^y§:Number = 0.2;
      
      public var §?I§:Number = 8.8;
      
      public function §73§(param1:Number, param2:Number)
      {
         super();
         this.§^y§ = param1;
         this.§?I§ = param2;
         this.§,§ = 0;
         this.§5o§ = 0;
      }
      
      public function §@7§(param1:§%X§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§,§ < §2!y§.§5O§)
         {
            this.§,§ += param2;
            this.§5o§ += this.§^y§;
            _loc3_ = param2 / §2!y§.§ v§ * this.§?I§ * Math.sin(Math.PI / 4 + this.§5o§ * 2 * Math.PI);
            _loc4_ = param2 / §2!y§.§ v§ * this.§?I§ * Math.sin(this.§5o§ * 2.1 * Math.PI);
            this.§?I§ -= param2 * §2!y§.§?"§ / §2!y§.§5O§;
            this.§^y§ -= param2 * §2!y§.§&-§ / §2!y§.§5O§;
            param1.§]!z§(_loc3_,_loc4_);
            param1.§4D§();
            return true;
         }
         return false;
      }
   }
}
