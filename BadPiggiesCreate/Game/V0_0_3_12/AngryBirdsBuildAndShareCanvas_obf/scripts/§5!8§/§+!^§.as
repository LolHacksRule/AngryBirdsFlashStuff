package §5!8§
{
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   import flash.display.MovieClip;
   
   public class §+!^§ extends §+!?§
   {
       
      
      public var § Y§:int;
      
      public var §5!y§:int;
      
      public var §"P§:int;
      
      public var §?^§:int;
      
      public var §]"2§:Number;
      
      public var §+!W§:Number;
      
      public var §3i§:Number;
      
      public var §-!-§:Number;
      
      public var §9!V§:Number;
      
      public function §+!^§(param1:XML, param2:§+!?§, param3:§%!u§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §+!S§ = true;
      }
      
      public function §=J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§"P§ = param6;
         this.§?^§ = param1 * this.§"P§;
         this.§9!V§ = param7;
         this.§3i§ = param2;
         this.§-!-§ = param3;
         this.§]"2§ = param4;
         this.§+!W§ = param5;
         if(false)
         {
            this.§5!y§ = Math.max(1,Math.ceil(§@"9§.length / this.§?^§));
         }
         else
         {
            this.§5!y§ = 1;
            if(§@"9§.length > this.§?^§)
            {
               this.§5!y§ += Math.ceil((§@"9§.length - this.§?^§) / (this.§"P§ * this.§9!V§));
            }
         }
         this.§-!?§(0);
      }
      
      public function §-!?§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§5!y§)
         {
            param1 = this.§5!y§ - 1;
         }
         this.§ Y§ = param1;
         var _loc2_:int = this.§ Y§ * this.§9!V§ * this.§"P§;
         var _loc3_:int = _loc2_ + this.§?^§;
         var _loc4_:int = 0;
         while(_loc4_ < §@"9§.length)
         {
            (§@"9§[_loc4_] as §3!r§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§3i§ - this.§ Y§ * this.§]"2§;
         y = this.§-!-§ - this.§ Y§ * this.§+!W§;
      }
   }
}
