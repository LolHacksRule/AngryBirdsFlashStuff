package §#g§
{
   import §4§.§`3§;
   
   public class §%#Z§
   {
      
      protected static const §8#>§:Number = 1000 / 60;
       
      
      protected var §"!-§:Number = 0;
      
      protected var §##`§:Number = 0;
      
      protected var §#P§:Number = 0;
      
      protected var §0-§:Number = 0;
      
      protected var §1"F§:Number = 0;
      
      protected var § !g§:Number = 0;
      
      protected var §@#`§:Number = 0;
      
      public function §%#Z§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§#P§ = param1;
         this.§0-§ = param2;
         this.§ !g§ = param1;
         this.§@#`§ = param2;
         this.§"!-§ = 0;
         this.§##`§ = 0;
         this.§1"F§ = param3;
      }
      
      public function §@#o§(param1:§`3§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§"!-§ < this.§1"F§)
         {
            this.§"!-§ += param2;
            this.§##`§ += this.§#P§;
            _loc3_ = param2 / §8#>§ * this.§0-§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§##`§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§0-§ -= param2 / this.§1"F§ * this.§@#`§;
            this.§#P§ -= param2 / this.§1"F§ * this.§ !g§;
            param1.§<!?§(_loc4_,_loc5_);
            param1.§61§();
            return true;
         }
         return false;
      }
      
      private function get §4!?§() : Number
      {
         return this.§1"F§ - this.§"!-§;
      }
      
      public function §<#q§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§#P§ < 0 ? 0 : this.§#P§);
         if(_loc2_ > 0)
         {
            this.§#P§ += _loc2_;
         }
      }
      
      public function §+#d§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§0-§ < 0 ? 0 : this.§0-§);
         if(_loc2_ > 0)
         {
            this.§0-§ += _loc2_;
         }
      }
      
      public function §]"%§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§4!?§;
         if(_loc2_ > 0)
         {
            this.§1"F§ += _loc2_;
         }
      }
   }
}
