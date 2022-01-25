package §5!?§
{
   import §3!W§.§5!Q§;
   
   public class §&!0§
   {
       
      
      public var § B§:Number = 0;
      
      public var §0Y§:Number = 0;
      
      public var §@W§:Number;
      
      public var § !5§:Number;
      
      public function §&!0§(param1:Number, param2:Number)
      {
         this.§@W§ = §;!T§.§&!!§;
         this.§ !5§ = §;!T§.§5W§;
         super();
         this.§@W§ = param1;
         this.§ !5§ = param2;
         this.§ B§ = 0;
         this.§0Y§ = 0;
      }
      
      public function §9-§(param1:§5!Q§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§ B§ < §;!T§.§%!U§)
         {
            this.§ B§ += param2;
            this.§0Y§ += this.§@W§;
            _loc3_ = param2 / §;!T§.§2!`§ * this.§ !5§ * Math.sin(Math.PI / 4 + this.§0Y§ * 2 * Math.PI);
            _loc4_ = param2 / §;!T§.§2!`§ * this.§ !5§ * Math.sin(this.§0Y§ * 2.1 * Math.PI);
            this.§ !5§ -= param2 * §;!T§.§5W§ / §;!T§.§%!U§;
            this.§@W§ -= param2 * §;!T§.§&!!§ / §;!T§.§%!U§;
            param1.§%_§(_loc3_,_loc4_);
            param1.§1!L§();
            return true;
         }
         return false;
      }
   }
}
