package §9T§
{
   import §=!,§.§9![§;
   
   public class §,!§
   {
       
      
      public var §%!Z§:Number = 0;
      
      public var §each §:Number = 0;
      
      public var §!7§:Number;
      
      public var §0`§:Number;
      
      public function §,!§(param1:Number, param2:Number)
      {
         this.§!7§ = §'_§.§-!F§;
         this.§0`§ = §'_§.§#y§;
         super();
         this.§!7§ = param1;
         this.§0`§ = param2;
         this.§%!Z§ = 0;
         this.§each § = 0;
      }
      
      public function §9!]§(param1:§9![§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§%!Z§ < §'_§.§&<§)
         {
            this.§%!Z§ += param2;
            this.§each § += this.§!7§;
            _loc3_ = param2 / §'_§.§`!_§ * this.§0`§ * Math.sin(Math.PI / 4 + this.§each § * 2 * Math.PI);
            _loc4_ = param2 / §'_§.§`!_§ * this.§0`§ * Math.sin(this.§each § * 2.1 * Math.PI);
            this.§0`§ -= param2 * §'_§.§#y§ / §'_§.§&<§;
            this.§!7§ -= param2 * §'_§.§-!F§ / §'_§.§&<§;
            param1.§5K§(_loc3_,_loc4_);
            param1.§24§();
            return true;
         }
         return false;
      }
   }
}
