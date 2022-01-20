package § !J§
{
   import §?!d§.§-E§;
   
   public class §,_§
   {
       
      
      public var §6!8§:Number = 0;
      
      public var §1T§:Number = 0;
      
      public var §@,§:Number;
      
      public var §2!`§:Number;
      
      public function §,_§(param1:Number, param2:Number)
      {
         this.§@,§ = §,![§.§=!D§;
         this.§2!`§ = §,![§.§@!n§;
         super();
         this.§@,§ = param1;
         this.§2!`§ = param2;
         this.§6!8§ = 0;
         this.§1T§ = 0;
      }
      
      public function §!#§(param1:§-E§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§6!8§ < §,![§.§>x§)
         {
            this.§6!8§ += param2;
            this.§1T§ += this.§@,§;
            _loc3_ = param2 / §,![§.§@!9§ * this.§2!`§ * Math.sin(Math.PI / 4 + this.§1T§ * 2 * Math.PI);
            _loc4_ = param2 / §,![§.§@!9§ * this.§2!`§ * Math.sin(this.§1T§ * 2.1 * Math.PI);
            this.§2!`§ -= param2 * §,![§.§@!n§ / §,![§.§>x§;
            this.§@,§ -= param2 * §,![§.§=!D§ / §,![§.§>x§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§>"§();
            return true;
         }
         return false;
      }
   }
}
