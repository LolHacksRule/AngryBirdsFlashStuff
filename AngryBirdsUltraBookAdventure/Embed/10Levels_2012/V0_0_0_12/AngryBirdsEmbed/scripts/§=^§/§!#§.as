package §=^§
{
   import §1;§.§!!1§;
   import §@s§.§3!?§;
   import flash.display.MovieClip;
   
   public class §!#§ extends §`f§
   {
       
      
      public var § try§:int;
      
      public var §9=§:int;
      
      public var §5_§:int;
      
      public var §]!1§:int;
      
      public var §"'§:Number;
      
      public var §&X§:Number;
      
      public var §9;§:Number;
      
      public var §7b§:Number;
      
      public var §-z§:Number;
      
      public function §!#§(param1:XML, param2:§`f§, param3:§!!1§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §%!I§ = true;
      }
      
      public function §6!=§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§5_§ = param6;
         this.§]!1§ = param1 * this.§5_§;
         this.§-z§ = param7;
         this.§9;§ = param2;
         this.§7b§ = param3;
         this.§"'§ = param4;
         this.§&X§ = param5;
         this.§9=§ = 1;
         if(§2x§.length > this.§]!1§)
         {
            this.§9=§ += Math.ceil((§2x§.length - this.§]!1§) / (this.§5_§ * this.§-z§));
         }
         this.§5!,§(0);
      }
      
      public function §5!,§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§9=§)
         {
            param1 = this.§9=§ - 1;
         }
         this.§ try§ = param1;
         var _loc2_:int = this.§ try§ * this.§-z§ * this.§5_§;
         var _loc3_:int = _loc2_ + this.§]!1§;
         var _loc4_:int = 0;
         while(_loc4_ < §2x§.length)
         {
            (§2x§[_loc4_] as §3!?§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9;§ - this.§ try§ * this.§"'§;
         y = this.§7b§ - this.§ try§ * this.§&X§;
      }
   }
}
