package §`i§
{
   import §+6§.§4j§;
   
   public class §='§
   {
       
      
      public var §"t§:Number = 0;
      
      public var §'n§:Number = 0;
      
      public var §<!%§:Number = 0.2;
      
      public var §4X§:Number = 8.8;
      
      public function §='§(param1:Number, param2:Number)
      {
         super();
         this.§<!%§ = param1;
         this.§4X§ = param2;
         this.§"t§ = 0;
         this.§'n§ = 0;
      }
      
      public function §%T§(param1:§4j§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§"t§ < §+3§.§@!E§)
         {
            this.§"t§ += param2;
            this.§'n§ += this.§<!%§;
            _loc3_ = param2 / §+3§.§`[§ * this.§4X§ * Math.sin(Math.PI / 4 + this.§'n§ * 2 * Math.PI);
            _loc4_ = param2 / §+3§.§`[§ * this.§4X§ * Math.sin(this.§'n§ * 2.1 * Math.PI);
            this.§4X§ -= param2 * §+3§.§"W§ / §+3§.§@!E§;
            this.§<!%§ -= param2 * §+3§.§;!4§ / §+3§.§@!E§;
            param1.§-!&§(_loc3_,_loc4_);
            param1.§'m§();
            return true;
         }
         return false;
      }
   }
}
