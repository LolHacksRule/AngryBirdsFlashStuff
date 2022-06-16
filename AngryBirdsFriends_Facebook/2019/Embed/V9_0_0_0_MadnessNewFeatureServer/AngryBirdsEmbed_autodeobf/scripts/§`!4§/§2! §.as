package §`!4§
{
   import §%!E§.§-§;
   
   public class §2! §
   {
       
      
      public var §+g§:Number = 0;
      
      public var §9I§:Number = 0;
      
      public var §?s§:Number;
      
      public var §@!-§:Number;
      
      public function §2! §(param1:Number, param2:Number)
      {
         this.§?s§ = §=Z§.§ -§;
         this.§@!-§ = §=Z§.§ each§;
         super();
         this.§?s§ = param1;
         this.§@!-§ = param2;
         this.§+g§ = 0;
         this.§9I§ = 0;
      }
      
      public function §!!5§(param1:§-§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§+g§ < §=Z§.§7!@§)
         {
            this.§+g§ += param2;
            this.§9I§ += this.§?s§;
            _loc3_ = param2 / §=Z§.§'!F§ * this.§@!-§ * Math.sin(Math.PI / 4 + this.§9I§ * 2 * Math.PI);
            _loc4_ = param2 / §=Z§.§'!F§ * this.§@!-§ * Math.sin(this.§9I§ * 2.1 * Math.PI);
            this.§@!-§ -= param2 * §=Z§.§ each§ / §=Z§.§7!@§;
            this.§?s§ -= param2 * §=Z§.§ -§ / §=Z§.§7!@§;
            param1.§,l§(_loc3_,_loc4_);
            param1.§7!O§();
            return true;
         }
         return false;
      }
   }
}
