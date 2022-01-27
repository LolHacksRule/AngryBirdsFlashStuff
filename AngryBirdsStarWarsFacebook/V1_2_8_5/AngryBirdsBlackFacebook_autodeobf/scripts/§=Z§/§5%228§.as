package §=Z§
{
   import §8!h§.§[Z§;
   import §[!H§.§4Z§;
   import flash.display.MovieClip;
   
   public class §5"8§ extends §@!8§
   {
       
      
      public var §##§:int;
      
      public var §?J§:int;
      
      public var §><§:int;
      
      public var §%"F§:int;
      
      public var §^#!§:Number;
      
      public var §-!q§:Number;
      
      public var §`! §:Number;
      
      public var §!#3§:Number;
      
      public var §#!i§:Number;
      
      public function §5"8§(param1:XML, param2:§@!8§, param3:§4Z§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6m§ = true;
      }
      
      public function §+,§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§><§ = param6;
         this.§%"F§ = param1 * this.§><§;
         this.§#!i§ = param7;
         this.§`! § = param2;
         this.§!#3§ = param3;
         this.§^#!§ = param4;
         this.§-!q§ = param5;
         if(false)
         {
            this.§?J§ = Math.max(1,Math.ceil(§true §.length / this.§%"F§));
         }
         else
         {
            this.§?J§ = 1;
            if(§true §.length > this.§%"F§)
            {
               this.§?J§ += Math.ceil((§true §.length - this.§%"F§) / (this.§><§ * this.§#!i§));
            }
         }
         this.§3N§(0);
      }
      
      public function §3N§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§?J§)
         {
            param1 = this.§?J§ - 1;
         }
         this.§##§ = param1;
         var _loc2_:int = this.§##§ * this.§#!i§ * this.§><§;
         var _loc3_:int = _loc2_ + this.§%"F§;
         var _loc4_:int = 0;
         while(_loc4_ < §true §.length)
         {
            (§true §[_loc4_] as §[Z§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§`! § - this.§##§ * this.§^#!§;
         y = this.§!#3§ - this.§##§ * this.§-!q§;
      }
   }
}
