package § 2§
{
   import §-'§.§ i§;
   
   public class §[!r§
   {
      
      protected static const §3J§:Number = 1000 / 60;
       
      
      protected var §=h§:Number = 0;
      
      protected var §+u§:Number = 0;
      
      protected var §4!,§:Number = 0;
      
      protected var §@!7§:Number = 0;
      
      protected var §%@§:Number = 0;
      
      protected var §#!R§:Number = 0;
      
      protected var §%Y§:Number = 0;
      
      public function §[!r§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§4!,§ = param1;
         this.§@!7§ = param2;
         this.§#!R§ = param1;
         this.§%Y§ = param2;
         this.§=h§ = 0;
         this.§+u§ = 0;
         this.§%@§ = param3;
      }
      
      public function §9!e§(param1:§ i§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§=h§ < this.§%@§)
         {
            this.§=h§ += param2;
            this.§+u§ += this.§4!,§;
            _loc3_ = param2 / §3J§ * this.§@!7§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§+u§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§@!7§ -= param2 / this.§%@§ * this.§%Y§;
            this.§4!,§ -= param2 / this.§%@§ * this.§#!R§;
            param1.§`!I§(_loc4_,_loc5_);
            param1.§;!?§();
            return true;
         }
         return false;
      }
   }
}
