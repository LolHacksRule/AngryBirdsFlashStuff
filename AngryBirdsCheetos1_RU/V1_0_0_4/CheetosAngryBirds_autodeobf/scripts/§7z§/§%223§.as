package §7z§
{
   import §#!H§.§7V§;
   
   public class §"3§
   {
       
      
      public var §5m§:Number = 0;
      
      public var §1Q§:Number = 0;
      
      public var §%!P§:Number;
      
      public var §=§:Number;
      
      public function §"3§(param1:Number, param2:Number)
      {
         this.§%!P§ = §5b§.§`,§;
         this.§=§ = §5b§.§@J§;
         super();
         this.§%!P§ = param1;
         this.§=§ = param2;
         this.§5m§ = 0;
         this.§1Q§ = 0;
      }
      
      public function §1-§(param1:§7V§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§5m§ < §5b§.§2!%§)
         {
            this.§5m§ += param2;
            this.§1Q§ += this.§%!P§;
            _loc3_ = param2 / §5b§.§#W§ * this.§=§ * Math.sin(Math.PI / 4 + this.§1Q§ * 2 * Math.PI);
            _loc4_ = param2 / §5b§.§#W§ * this.§=§ * Math.sin(this.§1Q§ * 2.1 * Math.PI);
            this.§=§ -= param2 * §5b§.§@J§ / §5b§.§2!%§;
            this.§%!P§ -= param2 * §5b§.§`,§ / §5b§.§2!%§;
            param1.§9!'§(_loc3_,_loc4_);
            param1.§=!Q§();
            return true;
         }
         return false;
      }
   }
}
