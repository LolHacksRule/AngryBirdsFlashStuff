package §"!E§
{
   import §!y§.§2U§;
   import §#!4§.§'^§;
   import flash.display.MovieClip;
   
   public class §1!W§ extends §[!s§
   {
       
      
      public var §%<§:int;
      
      public var §>q§:int;
      
      public var §>g§:int;
      
      public var §&h§:int;
      
      public var §5!C§:Number;
      
      public var §,"§:Number;
      
      public var §>!C§:Number;
      
      public var §>B§:Number;
      
      public var §3!1§:Number;
      
      public function §1!W§(param1:XML, param2:§[!s§, param3:§2U§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §8y§ = true;
      }
      
      public function §5a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§>g§ = param6;
         this.§&h§ = param1 * this.§>g§;
         this.§3!1§ = param7;
         this.§>!C§ = param2;
         this.§>B§ = param3;
         this.§5!C§ = param4;
         this.§,"§ = param5;
         this.§>q§ = 1;
         if(§?n§.length > this.§&h§)
         {
            this.§>q§ += Math.ceil((§?n§.length - this.§&h§) / (this.§>g§ * this.§3!1§));
         }
         this.§]!$§(0);
      }
      
      public function §]!$§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>q§)
         {
            param1 = this.§>q§ - 1;
         }
         this.§%<§ = param1;
         var _loc2_:int = this.§%<§ * this.§3!1§ * this.§>g§;
         var _loc3_:int = _loc2_ + this.§&h§;
         var _loc4_:int = 0;
         while(_loc4_ < §?n§.length)
         {
            (§?n§[_loc4_] as §'^§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§>!C§ - this.§%<§ * this.§5!C§;
         y = this.§>B§ - this.§%<§ * this.§,"§;
      }
   }
}
