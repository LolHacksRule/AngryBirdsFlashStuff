package §"!I§
{
   import §9!4§.§95§;
   
   public class §,?§
   {
       
      
      public var §>!3§:Number = 0;
      
      public var §'!E§:Number = 0;
      
      public var §3! §:Number;
      
      public var §-!T§:Number;
      
      public function §,?§(param1:Number, param2:Number)
      {
         this.§3! § = §<!$§.§^x§;
         this.§-!T§ = §<!$§.§'!`§;
         super();
         this.§3! § = param1;
         this.§-!T§ = param2;
         this.§>!3§ = 0;
         this.§'!E§ = 0;
      }
      
      public function §3!&§(param1:§95§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§>!3§ < §<!$§.§?!X§)
         {
            this.§>!3§ += param2;
            this.§'!E§ += this.§3! §;
            _loc3_ = param2 / §<!$§.§?R§ * this.§-!T§ * Math.sin(Math.PI / 4 + this.§'!E§ * 2 * Math.PI);
            _loc4_ = param2 / §<!$§.§?R§ * this.§-!T§ * Math.sin(this.§'!E§ * 2.1 * Math.PI);
            this.§-!T§ -= param2 * §<!$§.§'!`§ / §<!$§.§?!X§;
            this.§3! § -= param2 * §<!$§.§^x§ / §<!$§.§?!X§;
            param1.§^!9§(_loc3_,_loc4_);
            param1.§1I§();
            return true;
         }
         return false;
      }
   }
}
