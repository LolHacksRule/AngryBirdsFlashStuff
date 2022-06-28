package §?A§
{
   import §#y§.§0!D§;
   
   public class §?V§
   {
       
      
      public var §6!c§:Number = 0;
      
      public var §@!-§:Number = 0;
      
      public var §6&§:Number;
      
      public var §,&§:Number;
      
      public function §?V§(param1:Number, param2:Number)
      {
         this.§6&§ = §5a§.§<f§;
         this.§,&§ = §5a§.§'B§;
         super();
         this.§6&§ = param1;
         this.§,&§ = param2;
         this.§6!c§ = 0;
         this.§@!-§ = 0;
      }
      
      public function § !K§(param1:§0!D§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§6!c§ < §5a§.§2!@§)
         {
            this.§6!c§ += param2;
            this.§@!-§ += this.§6&§;
            _loc3_ = param2 / §5a§.§%!F§ * this.§,&§ * Math.sin(Math.PI / 4 + this.§@!-§ * 2 * Math.PI);
            _loc4_ = param2 / §5a§.§%!F§ * this.§,&§ * Math.sin(this.§@!-§ * 2.1 * Math.PI);
            this.§,&§ -= param2 * §5a§.§'B§ / §5a§.§2!@§;
            this.§6&§ -= param2 * §5a§.§<f§ / §5a§.§2!@§;
            param1.§4+§(_loc3_,_loc4_);
            param1.§'n§();
            return true;
         }
         return false;
      }
   }
}
