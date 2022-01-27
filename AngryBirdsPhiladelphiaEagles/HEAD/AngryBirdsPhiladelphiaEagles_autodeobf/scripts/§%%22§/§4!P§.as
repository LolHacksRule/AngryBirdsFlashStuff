package §%"§
{
   import §'D§.§3h§;
   
   public class §4!P§
   {
       
      
      public var §#!D§:Number = 0;
      
      public var §8=§:Number = 0;
      
      public var §%3§:Number;
      
      public var §2!$§:Number;
      
      public function §4!P§(param1:Number, param2:Number)
      {
         this.§%3§ = Tuner.§1! §;
         this.§2!$§ = Tuner.§9!"§;
         super();
         this.§%3§ = param1;
         this.§2!$§ = param2;
         this.§#!D§ = 0;
         this.§8=§ = 0;
      }
      
      public function §if §(param1:§3h§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#!D§ < Tuner.§;9§)
         {
            this.§#!D§ += param2;
            this.§8=§ += this.§%3§;
            _loc3_ = param2 / Tuner.§7+§ * this.§2!$§ * Math.sin(Math.PI / 4 + this.§8=§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§7+§ * this.§2!$§ * Math.sin(this.§8=§ * 2.1 * Math.PI);
            this.§2!$§ -= param2 * Tuner.§9!"§ / Tuner.§;9§;
            this.§%3§ -= param2 * Tuner.§1! § / Tuner.§;9§;
            param1.§@!>§(_loc3_,_loc4_);
            param1.§8[§();
            return true;
         }
         return false;
      }
   }
}
