package §2_§
{
   import §,!!§.§#!Y§;
   
   public class §-!B§
   {
       
      
      public var §[m§:Number = 0;
      
      public var §5!i§:Number = 0;
      
      public var §>!q§:Number;
      
      public var §=Q§:Number;
      
      public function §-!B§(param1:Number, param2:Number)
      {
         this.§>!q§ = §,L§.§@L§;
         this.§=Q§ = §,L§.§^!`§;
         super();
         this.§>!q§ = param1;
         this.§=Q§ = param2;
         this.§[m§ = 0;
         this.§5!i§ = 0;
      }
      
      public function §>h§(param1:§#!Y§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§[m§ < §,L§.§ ! §)
         {
            this.§[m§ += param2;
            this.§5!i§ += this.§>!q§;
            _loc3_ = param2 / §,L§.§=!x§ * this.§=Q§ * Math.sin(Math.PI / 4 + this.§5!i§ * 2 * Math.PI);
            _loc4_ = param2 / §,L§.§=!x§ * this.§=Q§ * Math.sin(this.§5!i§ * 2.1 * Math.PI);
            this.§=Q§ -= param2 * §,L§.§^!`§ / §,L§.§ ! §;
            this.§>!q§ -= param2 * §,L§.§@L§ / §,L§.§ ! §;
            param1.§-!M§(_loc3_,_loc4_);
            param1.§&G§();
            return true;
         }
         return false;
      }
   }
}
