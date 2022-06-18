package §9!?§
{
   import §[+§.§'!6§;
   
   public class §,B§
   {
       
      
      public var §=!+§:Number = 0;
      
      public var §>4§:Number = 0;
      
      public var §<!D§:Number;
      
      public var § !'§:Number;
      
      public function §,B§(param1:Number, param2:Number)
      {
         this.§<!D§ = §,a§.§%B§;
         this.§ !'§ = §,a§.§,O§;
         super();
         this.§<!D§ = param1;
         this.§ !'§ = param2;
         this.§=!+§ = 0;
         this.§>4§ = 0;
      }
      
      public function §`N§(param1:§'!6§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§=!+§ < §,a§.§"!8§)
         {
            this.§=!+§ += param2;
            this.§>4§ += this.§<!D§;
            _loc3_ = param2 / §,a§.§7o§ * this.§ !'§ * Math.sin(Math.PI / 4 + this.§>4§ * 2 * Math.PI);
            _loc4_ = param2 / §,a§.§7o§ * this.§ !'§ * Math.sin(this.§>4§ * 2.1 * Math.PI);
            this.§ !'§ -= param2 * §,a§.§,O§ / §,a§.§"!8§;
            this.§<!D§ -= param2 * §,a§.§%B§ / §,a§.§"!8§;
            param1.§>r§(_loc3_,_loc4_);
            param1.§[h§();
            return true;
         }
         return false;
      }
   }
}
