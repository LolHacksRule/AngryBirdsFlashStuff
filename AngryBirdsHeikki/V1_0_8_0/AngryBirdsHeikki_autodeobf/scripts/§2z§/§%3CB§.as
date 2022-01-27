package §2z§
{
   import §9!4§.§&l§;
   
   public class §<B§
   {
       
      
      public var §2O§:Number = 0;
      
      public var § ?§:Number = 0;
      
      public var §>!c§:Number;
      
      public var §+!I§:Number;
      
      public function §<B§(param1:Number, param2:Number)
      {
         this.§>!c§ = §9!a§.§7L§;
         this.§+!I§ = §9!a§.§`d§;
         super();
         this.§>!c§ = param1;
         this.§+!I§ = param2;
         this.§2O§ = 0;
         this.§ ?§ = 0;
      }
      
      public function §<!Q§(param1:§&l§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§2O§ < §9!a§.§^Y§)
         {
            this.§2O§ += param2;
            this.§ ?§ += this.§>!c§;
            _loc3_ = param2 / §9!a§.§[Q§ * this.§+!I§ * Math.sin(Math.PI / 4 + this.§ ?§ * 2 * Math.PI);
            _loc4_ = param2 / §9!a§.§[Q§ * this.§+!I§ * Math.sin(this.§ ?§ * 2.1 * Math.PI);
            this.§+!I§ -= param2 * §9!a§.§`d§ / §9!a§.§^Y§;
            this.§>!c§ -= param2 * §9!a§.§7L§ / §9!a§.§^Y§;
            param1.§7&§(_loc3_,_loc4_);
            param1.§94§();
            return true;
         }
         return false;
      }
   }
}
