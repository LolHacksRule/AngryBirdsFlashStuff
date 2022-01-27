package §4!-§
{
   import §6h§.§?!I§;
   
   public class §4%§
   {
       
      
      public var §!!O§:Number = 0;
      
      public var §=I§:Number = 0;
      
      public var §@3§:Number;
      
      public var §0#§:Number;
      
      public function §4%§(param1:Number, param2:Number)
      {
         this.§@3§ = Tuner.§2!$§;
         this.§0#§ = Tuner.§=!6§;
         super();
         this.§@3§ = param1;
         this.§0#§ = param2;
         this.§!!O§ = 0;
         this.§=I§ = 0;
      }
      
      public function §5!2§(param1:§?!I§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!!O§ < Tuner.§<D§)
         {
            this.§!!O§ += param2;
            this.§=I§ += this.§@3§;
            _loc3_ = param2 / Tuner.§&F§ * this.§0#§ * Math.sin(Math.PI / 4 + this.§=I§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§&F§ * this.§0#§ * Math.sin(this.§=I§ * 2.1 * Math.PI);
            this.§0#§ -= param2 * Tuner.§=!6§ / Tuner.§<D§;
            this.§@3§ -= param2 * Tuner.§2!$§ / Tuner.§<D§;
            param1.§<6§(_loc3_,_loc4_);
            param1.§^P§();
            return true;
         }
         return false;
      }
   }
}
