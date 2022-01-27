package §,!F§
{
   import §[!A§.§+!!§;
   
   public class §>!1§
   {
       
      
      public var §&o§:Number = 0;
      
      public var §@!2§:Number = 0;
      
      public var §@!3§:Number;
      
      public var §1_§:Number;
      
      public function §>!1§(param1:Number, param2:Number)
      {
         this.§@!3§ = Tuner.§[!K§;
         this.§1_§ = Tuner.§&!C§;
         super();
         this.§@!3§ = param1;
         this.§1_§ = param2;
         this.§&o§ = 0;
         this.§@!2§ = 0;
      }
      
      public function §2;§(param1:§+!!§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§&o§ < Tuner.§1!>§)
         {
            this.§&o§ += param2;
            this.§@!2§ += this.§@!3§;
            _loc3_ = param2 / Tuner.§2A§ * this.§1_§ * Math.sin(Math.PI / 4 + this.§@!2§ * 2 * Math.PI);
            _loc4_ = param2 / Tuner.§2A§ * this.§1_§ * Math.sin(this.§@!2§ * 2.1 * Math.PI);
            this.§1_§ -= param2 * Tuner.§&!C§ / Tuner.§1!>§;
            this.§@!3§ -= param2 * Tuner.§[!K§ / Tuner.§1!>§;
            param1.§<6§(_loc3_,_loc4_);
            param1.§3U§();
            return true;
         }
         return false;
      }
   }
}
