package §>2§
{
   import §1#u§.§;"Q§;
   
   public class §?"#§
   {
      
      protected static const §2T§:Number = 1000 / 60;
       
      
      protected var §#m§:Number = 0;
      
      protected var §&"7§:Number = 0;
      
      protected var §-! §:Number = 0;
      
      protected var §`b§:Number = 0;
      
      protected var § !p§:Number = 0;
      
      protected var §'!%§:Number = 0;
      
      protected var §^#J§:Number = 0;
      
      public function §?"#§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§-! § = param1;
         this.§`b§ = param2;
         this.§'!%§ = param1;
         this.§^#J§ = param2;
         this.§#m§ = 0;
         this.§&"7§ = 0;
         this.§ !p§ = param3;
      }
      
      public function §3$8§(param1:§;"Q§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#m§ < this.§ !p§)
         {
            this.§#m§ += param2;
            this.§&"7§ += this.§-! §;
            _loc3_ = param2 / §2T§ * this.§`b§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§&"7§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§`b§ -= param2 / this.§ !p§ * this.§^#J§;
            this.§-! § -= param2 / this.§ !p§ * this.§'!%§;
            param1.§;$%§(_loc4_,_loc5_);
            param1.§ !D§();
            return true;
         }
         return false;
      }
      
      private function get §5"I§() : Number
      {
         return this.§ !p§ - this.§#m§;
      }
      
      public function §;"b§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§-! § < 0 ? 0 : this.§-! §);
         if(_loc2_ > 0)
         {
            this.§-! § += _loc2_;
         }
      }
      
      public function §;r§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§`b§ < 0 ? 0 : this.§`b§);
         if(_loc2_ > 0)
         {
            this.§`b§ += _loc2_;
         }
      }
      
      public function §1"E§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§5"I§;
         if(_loc2_ > 0)
         {
            this.§ !p§ += _loc2_;
         }
      }
   }
}
