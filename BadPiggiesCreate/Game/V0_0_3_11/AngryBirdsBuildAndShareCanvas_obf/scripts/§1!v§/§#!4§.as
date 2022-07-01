package §1!v§
{
   import §1"3§.§`"0§;
   
   public class §#!4§
   {
       
      
      public var §throw§:Number = 0;
      
      public var §+7§:Number = 0;
      
      public var §0!k§:Number;
      
      public var § !x§:Number;
      
      public function §#!4§(param1:Number, param2:Number)
      {
         this.§0!k§ = §0!9§.§-!V§;
         this.§ !x§ = §0!9§.§-!m§;
         super();
         this.§0!k§ = param1;
         this.§ !x§ = param2;
         this.§throw§ = 0;
         this.§+7§ = 0;
      }
      
      public function §25§(param1:§`"0§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§throw§ < §0!9§.§&!-§)
         {
            this.§throw§ += param2;
            this.§+7§ += this.§0!k§;
            _loc3_ = param2 / §0!9§.§8!S§ * this.§ !x§ * Math.sin(Math.PI / 4 + this.§+7§ * 2 * Math.PI);
            _loc4_ = param2 / §0!9§.§8!S§ * this.§ !x§ * Math.sin(this.§+7§ * 2.1 * Math.PI);
            this.§ !x§ -= param2 * §0!9§.§-!m§ / §0!9§.§&!-§;
            this.§0!k§ -= param2 * §0!9§.§-!V§ / §0!9§.§&!-§;
            param1.§"!Q§(_loc3_,_loc4_);
            param1.§--§();
            return true;
         }
         return false;
      }
   }
}
