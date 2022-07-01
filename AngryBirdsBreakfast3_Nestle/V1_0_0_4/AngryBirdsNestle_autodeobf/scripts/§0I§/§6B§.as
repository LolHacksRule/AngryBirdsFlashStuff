package §0I§
{
   import §>j§.§`y§;
   
   public class §6B§
   {
      
      protected static const §^s§:Number = 1000 / 60;
       
      
      protected var §%!x§:Number = 0;
      
      protected var §"!I§:Number = 0;
      
      protected var §0o§:Number = 0;
      
      protected var §]d§:Number = 0;
      
      protected var §!@§:Number = 0;
      
      protected var § !B§:Number = 0;
      
      protected var §9$§:Number = 0;
      
      public function §6B§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§0o§ = param1;
         this.§]d§ = param2;
         this.§ !B§ = param1;
         this.§9$§ = param2;
         this.§%!x§ = 0;
         this.§"!I§ = 0;
         this.§!@§ = param3;
      }
      
      public function §0!4§(param1:§`y§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%!x§ < this.§!@§)
         {
            this.§%!x§ += param2;
            this.§"!I§ += this.§0o§;
            _loc3_ = param2 / §^s§ * this.§]d§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§"!I§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§]d§ -= param2 / this.§!@§ * this.§9$§;
            this.§0o§ -= param2 / this.§!@§ * this.§ !B§;
            param1.§7!a§(_loc4_,_loc5_);
            param1.§#!>§();
            return true;
         }
         return false;
      }
   }
}
