package §%x§
{
   import §[F§.§`m§;
   
   public class §8I§
   {
       
      
      public var §@d§:Number = 0;
      
      public var §;!4§:Number = 0;
      
      public var §8Y§:Number;
      
      public var §=m§:Number;
      
      public function §8I§(param1:Number, param2:Number)
      {
         this.§8Y§ = §#!;§.§+!"§;
         this.§=m§ = §#!;§.§[!?§;
         super();
         this.§8Y§ = param1;
         this.§=m§ = param2;
         this.§@d§ = 0;
         this.§;!4§ = 0;
      }
      
      public function §@X§(param1:§`m§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§@d§ < §#!;§.§<!C§)
         {
            this.§@d§ += param2;
            this.§;!4§ += this.§8Y§;
            _loc3_ = param2 / §#!;§.§'w§ * this.§=m§ * Math.sin(Math.PI / 4 + this.§;!4§ * 2 * Math.PI);
            _loc4_ = param2 / §#!;§.§'w§ * this.§=m§ * Math.sin(this.§;!4§ * 2.1 * Math.PI);
            this.§=m§ -= param2 * §#!;§.§[!?§ / §#!;§.§<!C§;
            this.§8Y§ -= param2 * §#!;§.§+!"§ / §#!;§.§<!C§;
            param1.§"]§(_loc3_,_loc4_);
            param1.§@o§();
            return true;
         }
         return false;
      }
   }
}
