package §9T§
{
   import §-!O§.§?Z§;
   
   public class §[9§
   {
       
      
      public var §]G§:Number = 0;
      
      public var §!4§:Number = 0;
      
      public var §`$§:Number;
      
      public var §1C§:Number;
      
      public function §[9§(param1:Number, param2:Number)
      {
         this.§`$§ = Tuner.§+"§;
         this.§1C§ = Tuner.§0e§;
         super();
         this.§`$§ = param1;
         this.§1C§ = param2;
         this.§]G§ = 0;
         this.§!4§ = 0;
      }
      
      public function §#F§(param1:§?Z§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§]G§ < Tuner.§@b§)
         {
            this.§]G§ += param2;
            this.§!4§ += this.§`$§;
            _loc3_ = param2 / Tuner.§ f§ * this.§1C§ * Math.sin(Math.PI / 4 + this.§!4§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§ f§ * this.§1C§ * Math.sin(this.§!4§ * 2.1 * Math.PI);
            this.§1C§ -= param2 * Tuner.§0e§ / Tuner.§@b§;
            this.§`$§ -= param2 * Tuner.§+"§ / Tuner.§@b§;
            param1.§22§(_loc3_,_loc4_);
            param1.§";§();
            return true;
         }
         return false;
      }
   }
}
