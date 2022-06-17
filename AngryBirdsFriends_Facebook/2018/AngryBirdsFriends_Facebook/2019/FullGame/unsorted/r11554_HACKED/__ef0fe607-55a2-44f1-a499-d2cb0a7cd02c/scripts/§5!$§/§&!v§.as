package §5!$§
{
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import flash.display.MovieClip;
   
   public class §&!v§ extends §<c§
   {
       
      
      public var §#"0§:int;
      
      public var §%$8§:int;
      
      public var §!#f§:int;
      
      public var §5`§:int;
      
      public var §4#o§:Number;
      
      public var §##r§:Number;
      
      public var native:Number;
      
      public var §1j§:Number;
      
      public var §0!r§:Number;
      
      public function §&!v§(param1:XML, param2:§<c§, param3:§?!F§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §`"`§ = true;
      }
      
      public function §!"y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!#f§ = param6;
         this.§5`§ = param1 * this.§!#f§;
         this.§0!r§ = param7;
         this.native = param2;
         this.§1j§ = param3;
         this.§4#o§ = param4;
         this.§##r§ = param5;
         this.§%$8§ = 1;
         if(§,#i§.length > this.§5`§)
         {
            this.§%$8§ += Math.ceil((§,#i§.length - this.§5`§) / (this.§!#f§ * this.§0!r§));
         }
         this.§>!2§(0);
      }
      
      public function §>!2§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§%$8§)
         {
            param1 = this.§%$8§ - 1;
         }
         this.§#"0§ = param1;
         var _loc2_:int = this.§#"0§ * this.§0!r§ * this.§!#f§;
         var _loc3_:int = _loc2_ + this.§5`§;
         var _loc4_:int = 0;
         while(_loc4_ < §,#i§.length)
         {
            (§,#i§[_loc4_] as §#$>§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.native - this.§#"0§ * this.§4#o§;
         y = this.§1j§ - this.§#"0§ * this.§##r§;
      }
   }
}
