package §<!<§
{
   import §`a§.§ !U§;
   
   public class §-!q§
   {
       
      
      public var §-=§:Number = 0;
      
      public var §]!X§:Number = 0;
      
      public var §2!B§:Number;
      
      public var §!n§:Number;
      
      public function §-!q§(param1:Number, param2:Number)
      {
         this.§2!B§ = §;J§.§=t§;
         this.§!n§ = §;J§.§?z§;
         super();
         this.§2!B§ = param1;
         this.§!n§ = param2;
         this.§-=§ = 0;
         this.§]!X§ = 0;
      }
      
      public function §77§(param1:§ !U§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§-=§ < §;J§.§!e§)
         {
            this.§-=§ += param2;
            this.§]!X§ += this.§2!B§;
            _loc3_ = param2 / §;J§.§!!^§ * this.§!n§ * Math.sin(Math.PI / 4 + this.§]!X§ * 2 * Math.PI);
            _loc4_ = param2 / §;J§.§!!^§ * this.§!n§ * Math.sin(this.§]!X§ * 2.1 * Math.PI);
            this.§!n§ -= param2 * §;J§.§?z§ / §;J§.§!e§;
            this.§2!B§ -= param2 * §;J§.§=t§ / §;J§.§!e§;
            param1.§%![§(_loc3_,_loc4_);
            param1.§7!d§();
            return true;
         }
         return false;
      }
   }
}
