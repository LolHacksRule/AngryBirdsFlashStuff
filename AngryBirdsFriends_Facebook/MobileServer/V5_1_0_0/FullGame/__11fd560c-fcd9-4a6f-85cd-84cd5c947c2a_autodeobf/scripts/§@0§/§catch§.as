package §@0§
{
   import §%!P§.§4#u§;
   
   public class §catch§
   {
      
      protected static const §,#Q§:Number = 1000 / 60;
       
      
      protected var §1$7§:Number = 0;
      
      protected var §<!Z§:Number = 0;
      
      protected var §6!U§:Number = 0;
      
      protected var §9N§:Number = 0;
      
      protected var §,!n§:Number = 0;
      
      protected var §&#r§:Number = 0;
      
      protected var §1W§:Number = 0;
      
      public function §catch§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§6!U§ = param1;
         this.§9N§ = param2;
         this.§&#r§ = param1;
         this.§1W§ = param2;
         this.§1$7§ = 0;
         this.§<!Z§ = 0;
         this.§,!n§ = param3;
      }
      
      public function §;#3§(param1:§4#u§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1$7§ < this.§,!n§)
         {
            this.§1$7§ += param2;
            this.§<!Z§ += this.§6!U§;
            _loc3_ = param2 / §,#Q§ * this.§9N§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§<!Z§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§9N§ -= param2 / this.§,!n§ * this.§1W§;
            this.§6!U§ -= param2 / this.§,!n§ * this.§&#r§;
            param1.§!^§(_loc4_,_loc5_);
            param1.§4!i§();
            return true;
         }
         return false;
      }
      
      private function get §[# §() : Number
      {
         return this.§,!n§ - this.§1$7§;
      }
      
      public function §0!g§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§6!U§ < 0 ? 0 : this.§6!U§);
         if(_loc2_ > 0)
         {
            this.§6!U§ += _loc2_;
         }
      }
      
      public function §+'§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§9N§ < 0 ? 0 : this.§9N§);
         if(_loc2_ > 0)
         {
            this.§9N§ += _loc2_;
         }
      }
      
      public function §;z§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§[# §;
         if(_loc2_ > 0)
         {
            this.§,!n§ += _loc2_;
         }
      }
   }
}
