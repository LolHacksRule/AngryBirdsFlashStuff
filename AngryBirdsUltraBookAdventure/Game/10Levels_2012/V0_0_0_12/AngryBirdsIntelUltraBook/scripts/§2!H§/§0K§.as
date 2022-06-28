package §2!H§
{
   import §<!j§.§%!-§;
   
   public class §0K§
   {
       
      
      public var §1f§:Number = 0;
      
      public var §<!M§:Number = 0;
      
      public var §?o§:Number;
      
      public var §^f§:Number;
      
      public function §0K§(param1:Number, param2:Number)
      {
         this.§?o§ = §&!U§.§=!§;
         this.§^f§ = §&!U§.§,!I§;
         super();
         this.§?o§ = param1;
         this.§^f§ = param2;
         this.§1f§ = 0;
         this.§<!M§ = 0;
      }
      
      public function §@?§(param1:§%!-§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§1f§ < §&!U§.§%!,§)
         {
            this.§1f§ += param2;
            this.§<!M§ += this.§?o§;
            _loc3_ = param2 / §&!U§.§1!Q§ * this.§^f§ * Math.sin(Math.PI / 4 + this.§<!M§ * 2 * Math.PI);
            _loc4_ = param2 / §&!U§.§1!Q§ * this.§^f§ * Math.sin(this.§<!M§ * 2.1 * Math.PI);
            this.§^f§ -= param2 * §&!U§.§,!I§ / §&!U§.§%!,§;
            this.§?o§ -= param2 * §&!U§.§=!§ / §&!U§.§%!,§;
            param1.§=^§(_loc3_,_loc4_);
            param1.§7!%§();
            return true;
         }
         return false;
      }
   }
}
