package §<L§
{
   import §[!_§.§8U§;
   
   public class §+5§
   {
       
      
      public var §1!m§:Number = 0;
      
      public var §"!L§:Number = 0;
      
      public var §0!o§:Number;
      
      public var §&!4§:Number;
      
      public function §+5§(param1:Number, param2:Number)
      {
         this.§0!o§ = §6H§.§&!H§;
         this.§&!4§ = §6H§.§%!m§;
         super();
         this.§0!o§ = param1;
         this.§&!4§ = param2;
         this.§1!m§ = 0;
         this.§"!L§ = 0;
      }
      
      public function §+E§(param1:§8U§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§1!m§ < §6H§.§36§)
         {
            this.§1!m§ += param2;
            this.§"!L§ += this.§0!o§;
            _loc3_ = param2 / §6H§.§^!B§ * this.§&!4§ * Math.sin(Math.PI / 4 + this.§"!L§ * 2 * Math.PI);
            _loc4_ = param2 / §6H§.§^!B§ * this.§&!4§ * Math.sin(this.§"!L§ * 2.1 * Math.PI);
            this.§&!4§ -= param2 * §6H§.§%!m§ / §6H§.§36§;
            this.§0!o§ -= param2 * §6H§.§&!H§ / §6H§.§36§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§!u§();
            return true;
         }
         return false;
      }
   }
}
