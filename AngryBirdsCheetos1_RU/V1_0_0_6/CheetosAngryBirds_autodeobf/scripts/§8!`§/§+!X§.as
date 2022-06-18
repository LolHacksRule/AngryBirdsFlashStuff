package §8!`§
{
   import §@!?§.§9Z§;
   
   public class §+!X§
   {
       
      
      public var §>!]§:Number = 0;
      
      public var §'?§:Number = 0;
      
      public var §9O§:Number;
      
      public var §'V§:Number;
      
      public function §+!X§(param1:Number, param2:Number)
      {
         this.§9O§ = §7I§.§6Z§;
         this.§'V§ = §7I§.§=!-§;
         super();
         this.§9O§ = param1;
         this.§'V§ = param2;
         this.§>!]§ = 0;
         this.§'?§ = 0;
      }
      
      public function § 4§(param1:§9Z§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§>!]§ < §7I§.§@k§)
         {
            this.§>!]§ += param2;
            this.§'?§ += this.§9O§;
            _loc3_ = param2 / §7I§.§&'§ * this.§'V§ * Math.sin(Math.PI / 4 + this.§'?§ * 2 * Math.PI);
            _loc4_ = param2 / §7I§.§&'§ * this.§'V§ * Math.sin(this.§'?§ * 2.1 * Math.PI);
            this.§'V§ -= param2 * §7I§.§=!-§ / §7I§.§@k§;
            this.§9O§ -= param2 * §7I§.§6Z§ / §7I§.§@k§;
            param1.§&!6§(_loc3_,_loc4_);
            param1.§6!G§();
            return true;
         }
         return false;
      }
   }
}
