package §52§
{
   import §["Q§.§0$,§;
   
   public class §9!U§
   {
      
      protected static const §0#=§:Number = 1000 / 60;
       
      
      protected var §[#;§:Number = 0;
      
      protected var §!"g§:Number = 0;
      
      protected var §;!^§:Number = 0;
      
      protected var §5",§:Number = 0;
      
      protected var §@[§:Number = 0;
      
      protected var §5!n§:Number = 0;
      
      protected var §##L§:Number = 0;
      
      public function §9!U§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§;!^§ = param1;
         this.§5",§ = param2;
         this.§5!n§ = param1;
         this.§##L§ = param2;
         this.§[#;§ = 0;
         this.§!"g§ = 0;
         this.§@[§ = param3;
      }
      
      public function §8e§(param1:§0$,§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[#;§ < this.§@[§)
         {
            this.§[#;§ += param2;
            this.§!"g§ += this.§;!^§;
            _loc3_ = param2 / §0#=§ * this.§5",§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§!"g§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§5",§ -= param2 / this.§@[§ * this.§##L§;
            this.§;!^§ -= param2 / this.§@[§ * this.§5!n§;
            param1.§=#[§(_loc4_,_loc5_);
            param1.§0"y§();
            return true;
         }
         return false;
      }
      
      private function get §]!9§() : Number
      {
         return this.§@[§ - this.§[#;§;
      }
      
      public function §;R§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§;!^§ < 0 ? 0 : this.§;!^§);
         if(_loc2_ > 0)
         {
            this.§;!^§ += _loc2_;
         }
      }
      
      public function §]!j§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§5",§ < 0 ? 0 : this.§5",§);
         if(_loc2_ > 0)
         {
            this.§5",§ += _loc2_;
         }
      }
      
      public function §;o§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§]!9§;
         if(_loc2_ > 0)
         {
            this.§@[§ += _loc2_;
         }
      }
   }
}
