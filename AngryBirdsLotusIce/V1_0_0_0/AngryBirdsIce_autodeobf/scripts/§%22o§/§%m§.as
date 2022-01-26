package §"o§
{
   import §2W§.§4!$§;
   
   public class §%m§
   {
       
      
      public var §8!5§:Number = 0;
      
      public var §73§:Number = 0;
      
      public var §"$§:Number;
      
      public var §>b§:Number;
      
      public function §%m§(param1:Number, param2:Number)
      {
         this.§"$§ = §,J§.§-P§;
         this.§>b§ = §,J§.§&p§;
         super();
         this.§"$§ = param1;
         this.§>b§ = param2;
         this.§8!5§ = 0;
         this.§73§ = 0;
      }
      
      public function §2!>§(param1:§4!$§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§8!5§ < §,J§.§7!<§)
         {
            this.§8!5§ += param2;
            this.§73§ += this.§"$§;
            _loc3_ = param2 / §,J§.§&9§ * this.§>b§ * Math.sin(Math.PI / 4 + this.§73§ * 2 * Math.PI);
            _loc4_ = param2 / §,J§.§&9§ * this.§>b§ * Math.sin(this.§73§ * 2.1 * Math.PI);
            this.§>b§ -= param2 * §,J§.§&p§ / §,J§.§7!<§;
            this.§"$§ -= param2 * §,J§.§-P§ / §,J§.§7!<§;
            param1.§ V§(_loc3_,_loc4_);
            param1.§]B§();
            return true;
         }
         return false;
      }
   }
}
