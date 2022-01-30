package §!D§
{
   import §9!7§.§0!`§;
   import §?!V§.§ T§;
   import flash.display.MovieClip;
   
   public class §'"5§ extends § use§
   {
       
      
      public var §2!`§:int;
      
      public var §[!>§:int;
      
      public var §>!'§:int;
      
      public var §3d§:int;
      
      public var §^!s§:Number;
      
      public var §4" §:Number;
      
      public var §""$§:Number;
      
      public var § f§:Number;
      
      public var §]!Y§:Number;
      
      public function §'"5§(param1:XML, param2:§ use§, param3:§ T§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §2!8§ = true;
      }
      
      public function §-!V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§>!'§ = param6;
         this.§3d§ = param1 * this.§>!'§;
         this.§]!Y§ = param7;
         this.§""$§ = param2;
         this.§ f§ = param3;
         this.§^!s§ = param4;
         this.§4" § = param5;
         if(false)
         {
            this.§[!>§ = Math.max(1,Math.ceil(§%`§.length / this.§3d§));
         }
         else
         {
            this.§[!>§ = 1;
            if(§%`§.length > this.§3d§)
            {
               this.§[!>§ += Math.ceil((§%`§.length - this.§3d§) / (this.§>!'§ * this.§]!Y§));
            }
         }
         this.§=2§(0);
      }
      
      public function §=2§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§[!>§)
         {
            param1 = this.§[!>§ - 1;
         }
         this.§2!`§ = param1;
         var _loc2_:int = this.§2!`§ * this.§]!Y§ * this.§>!'§;
         var _loc3_:int = _loc2_ + this.§3d§;
         var _loc4_:int = 0;
         while(_loc4_ < §%`§.length)
         {
            (§%`§[_loc4_] as §0!`§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§""$§ - this.§2!`§ * this.§^!s§;
         y = this.§ f§ - this.§2!`§ * this.§4" §;
      }
   }
}
