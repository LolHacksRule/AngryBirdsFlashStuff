package §]k§
{
   import § 8§.§?!9§;
   
   public class §6!<§
   {
      
      protected static const §`U§:Number = 1000 / 60;
       
      
      protected var §9]§:Number = 0;
      
      protected var §`&§:Number = 0;
      
      protected var §"!+§:Number = 0;
      
      protected var §@;§:Number = 0;
      
      protected var §1K§:Number = 0;
      
      protected var §^!a§:Number = 0;
      
      protected var §%!§:Number = 0;
      
      public function §6!<§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"!+§ = param1;
         this.§@;§ = param2;
         this.§^!a§ = param1;
         this.§%!§ = param2;
         this.§9]§ = 0;
         this.§`&§ = 0;
         this.§1K§ = param3;
      }
      
      public function §#A§(param1:§?!9§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§9]§ < this.§1K§)
         {
            this.§9]§ += param2;
            this.§`&§ += this.§"!+§;
            _loc3_ = param2 / §`U§ * this.§@;§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§`&§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§@;§ -= param2 / this.§1K§ * this.§%!§;
            this.§"!+§ -= param2 / this.§1K§ * this.§^!a§;
            param1.§else§(_loc4_,_loc5_);
            param1.§3!;§();
            return true;
         }
         return false;
      }
   }
}
