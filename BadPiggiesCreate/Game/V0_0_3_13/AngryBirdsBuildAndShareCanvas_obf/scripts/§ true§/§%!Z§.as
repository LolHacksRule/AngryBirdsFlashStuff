package § true§
{
   import §0!C§.§=!]§;
   import §4!j§.§[!f§;
   import flash.display.MovieClip;
   
   public class §%!Z§ extends §1H§
   {
       
      
      public var §4"4§:int;
      
      public var §8!$§:int;
      
      public var §6!%§:int;
      
      public var §=a§:int;
      
      public var §[#§:Number;
      
      public var §4!Q§:Number;
      
      public var §!-§:Number;
      
      public var §>"5§:Number;
      
      public var §+r§:Number;
      
      public function §%!Z§(param1:XML, param2:§1H§, param3:§=!]§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §"!a§ = true;
      }
      
      public function §9"3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6!%§ = param6;
         this.§=a§ = param1 * this.§6!%§;
         this.§+r§ = param7;
         this.§!-§ = param2;
         this.§>"5§ = param3;
         this.§[#§ = param4;
         this.§4!Q§ = param5;
         if(false)
         {
            this.§8!$§ = Math.max(1,Math.ceil(§[!P§.length / this.§=a§));
         }
         else
         {
            this.§8!$§ = 1;
            if(§[!P§.length > this.§=a§)
            {
               this.§8!$§ += Math.ceil((§[!P§.length - this.§=a§) / (this.§6!%§ * this.§+r§));
            }
         }
         this.§%R§(0);
      }
      
      public function §%R§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§8!$§)
         {
            param1 = this.§8!$§ - 1;
         }
         this.§4"4§ = param1;
         var _loc2_:int = this.§4"4§ * this.§+r§ * this.§6!%§;
         var _loc3_:int = _loc2_ + this.§=a§;
         var _loc4_:int = 0;
         while(_loc4_ < §[!P§.length)
         {
            (§[!P§[_loc4_] as §[!f§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§!-§ - this.§4"4§ * this.§[#§;
         y = this.§>"5§ - this.§4"4§ * this.§4!Q§;
      }
   }
}
