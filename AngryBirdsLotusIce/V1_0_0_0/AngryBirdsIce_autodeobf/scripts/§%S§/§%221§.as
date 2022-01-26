package §%S§
{
   import §87§.§]T§;
   import flash.display.MovieClip;
   import §in§.§]R§;
   
   public class §"1§ extends §,1§
   {
       
      
      public var §?§:int;
      
      public var §0!!§:int;
      
      public var §"<§:int;
      
      public var §3!2§:int;
      
      public var §+s§:Number;
      
      public var §9b§:Number;
      
      public var §7!-§:Number;
      
      public var §&W§:Number;
      
      public var § !6§:Number;
      
      public function §"1§(param1:XML, param2:§,1§, param3:§]T§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §!J§ = true;
      }
      
      public function §3!+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§"<§ = param6;
         this.§3!2§ = param1 * this.§"<§;
         this.§ !6§ = param7;
         this.§7!-§ = param2;
         this.§&W§ = param3;
         this.§+s§ = param4;
         this.§9b§ = param5;
         if(false)
         {
            this.§0!!§ = Math.max(1,Math.ceil(§0V§.length / this.§3!2§));
         }
         else
         {
            this.§0!!§ = 1;
            if(§0V§.length > this.§3!2§)
            {
               this.§0!!§ += Math.ceil((§0V§.length - this.§3!2§) / (this.§"<§ * this.§ !6§));
            }
         }
         this.§]!%§(0);
      }
      
      public function §]!%§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§0!!§)
         {
            param1 = this.§0!!§ - 1;
         }
         this.§?§ = param1;
         var _loc2_:int = this.§?§ * this.§ !6§ * this.§"<§;
         var _loc3_:int = _loc2_ + this.§3!2§;
         var _loc4_:int = 0;
         while(_loc4_ < §0V§.length)
         {
            (§0V§[_loc4_] as §]R§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§7!-§ - this.§?§ * this.§+s§;
         y = this.§&W§ - this.§?§ * this.§9b§;
      }
   }
}
