package §;[§
{
   import §'!N§.§2!3§;
   import §;!K§.§+!4§;
   import flash.display.MovieClip;
   
   public class §1p§ extends §>!^§
   {
       
      
      public var §`=§:int;
      
      public var §4!I§:int;
      
      public var §+4§:int;
      
      public var §%!W§:int;
      
      public var §7;§:Number;
      
      public var each:Number;
      
      public var §3,§:Number;
      
      public var §`!6§:Number;
      
      public var §?!>§:Number;
      
      public function §1p§(param1:XML, param2:§>!^§, param3:§+!4§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6O§ = true;
      }
      
      public function §?J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§+4§ = param6;
         this.§%!W§ = param1 * this.§+4§;
         this.§?!>§ = param7;
         this.§3,§ = param2;
         this.§`!6§ = param3;
         this.§7;§ = param4;
         this.each = param5;
         if(false)
         {
            this.§4!I§ = Math.max(1,Math.ceil(§[!Y§.length / this.§%!W§));
         }
         else
         {
            this.§4!I§ = 1;
            if(§[!Y§.length > this.§%!W§)
            {
               this.§4!I§ += Math.ceil((§[!Y§.length - this.§%!W§) / (this.§+4§ * this.§?!>§));
            }
         }
         this.§'K§(0);
      }
      
      public function §'K§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§4!I§)
         {
            param1 = this.§4!I§ - 1;
         }
         this.§`=§ = param1;
         var _loc2_:int = this.§`=§ * this.§?!>§ * this.§+4§;
         var _loc3_:int = _loc2_ + this.§%!W§;
         var _loc4_:int = 0;
         while(_loc4_ < §[!Y§.length)
         {
            (§[!Y§[_loc4_] as §2!3§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§3,§ - this.§`=§ * this.§7;§;
         y = this.§`!6§ - this.§`=§ * this.each;
      }
   }
}
