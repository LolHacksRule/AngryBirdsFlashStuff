package § !D§
{
   import §%_§.§;l§;
   
   public class §6"=§
   {
      
      protected static const §%=§:Number = 1000 / 60;
       
      
      protected var § $2§:Number = 0;
      
      protected var §##y§:Number = 0;
      
      protected var §4<§:Number = 0;
      
      protected var §>!`§:Number = 0;
      
      protected var §=S§:Number = 0;
      
      protected var §>#A§:Number = 0;
      
      protected var §0"9§:Number = 0;
      
      public function §6"=§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§4<§ = param1;
         this.§>!`§ = param2;
         this.§>#A§ = param1;
         this.§0"9§ = param2;
         this.§ $2§ = 0;
         this.§##y§ = 0;
         this.§=S§ = param3;
      }
      
      public function §,"S§(param1:§;l§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ $2§ < this.§=S§)
         {
            this.§ $2§ += param2;
            this.§##y§ += this.§4<§;
            _loc3_ = param2 / §%=§ * this.§>!`§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§##y§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§>!`§ -= param2 / this.§=S§ * this.§0"9§;
            this.§4<§ -= param2 / this.§=S§ * this.§>#A§;
            param1.§4#&§(_loc4_,_loc5_);
            param1.§!#%§();
            return true;
         }
         return false;
      }
      
      private function get §4"M§() : Number
      {
         return this.§=S§ - this.§ $2§;
      }
      
      public function §<"k§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§4<§ < 0 ? 0 : this.§4<§);
         if(_loc2_ > 0)
         {
            this.§4<§ += _loc2_;
         }
      }
      
      public function §[#0§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§>!`§ < 0 ? 0 : this.§>!`§);
         if(_loc2_ > 0)
         {
            this.§>!`§ += _loc2_;
         }
      }
      
      public function § #m§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§4"M§;
         if(_loc2_ > 0)
         {
            this.§=S§ += _loc2_;
         }
      }
   }
}
