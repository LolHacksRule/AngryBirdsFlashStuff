package §?$#§
{
   import §`$=§.§5$E§;
   
   public class §9"^§
   {
      
      protected static const §0#3§:Number = 1000 / 60;
       
      
      protected var §8!W§:Number = 0;
      
      protected var §%a§:Number = 0;
      
      protected var §0v§:Number = 0;
      
      protected var §9"L§:Number = 0;
      
      protected var §;"t§:Number = 0;
      
      protected var §[3§:Number = 0;
      
      protected var §+$8§:Number = 0;
      
      public function §9"^§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§0v§ = param1;
         this.§9"L§ = param2;
         this.§[3§ = param1;
         this.§+$8§ = param2;
         this.§8!W§ = 0;
         this.§%a§ = 0;
         this.§;"t§ = param3;
      }
      
      public function §3"z§(param1:§5$E§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!W§ < this.§;"t§)
         {
            this.§8!W§ += param2;
            this.§%a§ += this.§0v§;
            _loc3_ = param2 / §0#3§ * this.§9"L§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§%a§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§9"L§ -= param2 / this.§;"t§ * this.§+$8§;
            this.§0v§ -= param2 / this.§;"t§ * this.§[3§;
            param1.§ !§(_loc4_,_loc5_);
            param1.§>#O§();
            return true;
         }
         return false;
      }
      
      private function get §`"n§() : Number
      {
         return this.§;"t§ - this.§8!W§;
      }
      
      public function §9"q§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§0v§ < 0 ? 0 : this.§0v§);
         if(_loc2_ > 0)
         {
            this.§0v§ += _loc2_;
         }
      }
      
      public function §+!<§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§9"L§ < 0 ? 0 : this.§9"L§);
         if(_loc2_ > 0)
         {
            this.§9"L§ += _loc2_;
         }
      }
      
      public function §<#t§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§`"n§;
         if(_loc2_ > 0)
         {
            this.§;"t§ += _loc2_;
         }
      }
   }
}
