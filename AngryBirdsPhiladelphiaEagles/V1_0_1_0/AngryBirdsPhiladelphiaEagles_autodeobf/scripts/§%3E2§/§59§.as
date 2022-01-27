package §>2§
{
   import §^Q§.§<a§;
   
   public class §59§
   {
       
      
      public var §#@§:Number = 0;
      
      public var §5!%§:Number = 0;
      
      public var §2=§:Number;
      
      public var §0h§:Number;
      
      public function §59§(param1:Number, param2:Number)
      {
         this.§2=§ = Tuner.§6C§;
         this.§0h§ = Tuner.§6v§;
         super();
         this.§2=§ = param1;
         this.§0h§ = param2;
         this.§#@§ = 0;
         this.§5!%§ = 0;
      }
      
      public function §2T§(param1:§<a§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#@§ < Tuner.§'S§)
         {
            this.§#@§ += param2;
            this.§5!%§ += this.§2=§;
            _loc3_ = param2 / Tuner.§0<§ * this.§0h§ * Math.sin(Math.PI / 4 + this.§5!%§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§0<§ * this.§0h§ * Math.sin(this.§5!%§ * 2.1 * Math.PI);
            this.§0h§ -= param2 * Tuner.§6v§ / Tuner.§'S§;
            this.§2=§ -= param2 * Tuner.§6C§ / Tuner.§'S§;
            param1.§2!O§(_loc3_,_loc4_);
            param1.§<F§();
            return true;
         }
         return false;
      }
   }
}
