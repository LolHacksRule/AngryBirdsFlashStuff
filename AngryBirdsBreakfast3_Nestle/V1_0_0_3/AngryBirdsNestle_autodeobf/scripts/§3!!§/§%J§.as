package §3!!§
{
   import §@f§.§7h§;
   import §[" §.§1"1§;
   import flash.display.MovieClip;
   
   public class §%J§ extends §5" §
   {
       
      
      public var §#C§:int;
      
      public var §1!<§:int;
      
      public var §!!1§:int;
      
      public var §%X§:int;
      
      public var §%!F§:Number;
      
      public var §1,§:Number;
      
      public var §!!K§:Number;
      
      public var § !k§:Number;
      
      public var §!!#§:Number;
      
      public function §%J§(param1:XML, param2:§5" §, param3:§1"1§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §5!1§ = true;
      }
      
      public function §?`§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!!1§ = param6;
         this.§%X§ = param1 * this.§!!1§;
         this.§!!#§ = param7;
         this.§!!K§ = param2;
         this.§ !k§ = param3;
         this.§%!F§ = param4;
         this.§1,§ = param5;
         if(false)
         {
            this.§1!<§ = Math.max(1,Math.ceil(§ q§.length / this.§%X§));
         }
         else
         {
            this.§1!<§ = 1;
            if(§ q§.length > this.§%X§)
            {
               this.§1!<§ += Math.ceil((§ q§.length - this.§%X§) / (this.§!!1§ * this.§!!#§));
            }
         }
         this.§`"-§(0);
      }
      
      public function §`"-§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§1!<§)
         {
            param1 = this.§1!<§ - 1;
         }
         this.§#C§ = param1;
         var _loc2_:int = this.§#C§ * this.§!!#§ * this.§!!1§;
         var _loc3_:int = _loc2_ + this.§%X§;
         var _loc4_:int = 0;
         while(_loc4_ < § q§.length)
         {
            (§ q§[_loc4_] as §7h§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§!!K§ - this.§#C§ * this.§%!F§;
         y = this.§ !k§ - this.§#C§ * this.§1,§;
      }
   }
}
