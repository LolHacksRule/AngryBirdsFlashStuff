package §3,§
{
   import §^6§.§0!w§;
   
   public class §+;§
   {
       
      
      public var §"!9§:Number = 0;
      
      public var §]A§:Number = 0;
      
      public var §=s§:Number;
      
      public var §;!E§:Number;
      
      public function §+;§(param1:Number, param2:Number)
      {
         this.§=s§ = §`a§.§-B§;
         this.§;!E§ = §`a§.§`c§;
         super();
         this.§=s§ = param1;
         this.§;!E§ = param2;
         this.§"!9§ = 0;
         this.§]A§ = 0;
      }
      
      public function §?"=§(param1:§0!w§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§"!9§ < §`a§.§8]§)
         {
            this.§"!9§ += param2;
            this.§]A§ += this.§=s§;
            _loc3_ = param2 / §`a§.§"f§ * this.§;!E§ * Math.sin(Math.PI / 4 + this.§]A§ * 2 * Math.PI);
            _loc4_ = param2 / §`a§.§"f§ * this.§;!E§ * Math.sin(this.§]A§ * 2.1 * Math.PI);
            this.§;!E§ -= param2 * §`a§.§`c§ / §`a§.§8]§;
            this.§=s§ -= param2 * §`a§.§-B§ / §`a§.§8]§;
            param1.§4!Q§(_loc3_,_loc4_);
            param1.§^!-§();
            return true;
         }
         return false;
      }
   }
}
