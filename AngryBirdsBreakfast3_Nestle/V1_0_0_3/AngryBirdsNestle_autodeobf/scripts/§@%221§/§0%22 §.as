package §@"1§
{
   public class §0" §
   {
      
      private static const §^I§:Number = 1;
       
      
      private var §0!c§:Number = 1.0;
      
      private var §%1§:Number = 0.0;
      
      private var §#!N§:Number = 0.0;
      
      private var §<!m§:Number = 0.0;
      
      private var §;!L§:Number = 0.0;
      
      private var §4!v§:Number = 1.0;
      
      public function §0" §(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§0!c§ = param4;
         this.§%1§ = param2;
         this.§#!N§ = param1;
         this.§<!m§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§4!v§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§;!L§ += param1;
         if(this.§;!L§ < this.§#!N§)
         {
            this.§4!v§ = §^I§ + (this.§0!c§ - §^I§) * this.§;!L§ / this.§#!N§;
         }
         else if(this.§;!L§ < this.§#!N§ + this.§%1§)
         {
            this.§4!v§ = this.§0!c§;
         }
         else
         {
            if(this.§;!L§ >= this.§#!N§ + this.§%1§ + this.§<!m§)
            {
               this.§4!v§ = §^I§;
               return false;
            }
            _loc2_ = this.§;!L§ - (this.§#!N§ + this.§%1§);
            this.§4!v§ = this.§0!c§ + (§^I§ - this.§0!c§) * _loc2_ / this.§<!m§;
         }
         return true;
      }
   }
}
