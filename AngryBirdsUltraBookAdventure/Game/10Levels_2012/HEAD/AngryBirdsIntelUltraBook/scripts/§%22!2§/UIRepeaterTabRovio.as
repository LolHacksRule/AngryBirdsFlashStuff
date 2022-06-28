package §"!2§
{
   import §>!<§.UIComponentRovio;
   import §@!H§.§-!H§;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var §?f§:int;
      
      public var §7J§:int;
      
      public var §,,§:int;
      
      public var §,k§:int;
      
      public var §#!H§:Number;
      
      public var §5_§:Number;
      
      public var §^!S§:Number;
      
      public var §<P§:Number;
      
      public var §32§:Number;
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:§-!H§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         § =§ = true;
      }
      
      public function §#K§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§,,§ = param6;
         this.§,k§ = param1 * this.§,,§;
         this.§32§ = param7;
         this.§^!S§ = param2;
         this.§<P§ = param3;
         this.§#!H§ = param4;
         this.§5_§ = param5;
         if(false)
         {
            this.§7J§ = Math.max(1,Math.ceil(§ !]§.length / this.§,k§));
         }
         else
         {
            this.§7J§ = 1;
            if(§ !]§.length > this.§,k§)
            {
               this.§7J§ += Math.ceil((§ !]§.length - this.§,k§) / (this.§,,§ * this.§32§));
            }
         }
         this.§3f§(0);
      }
      
      public function §3f§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§7J§)
         {
            param1 = this.§7J§ - 1;
         }
         this.§?f§ = param1;
         var _loc2_:int = this.§?f§ * this.§32§ * this.§,,§;
         var _loc3_:int = _loc2_ + this.§,k§;
         var _loc4_:int = 0;
         while(_loc4_ < § !]§.length)
         {
            (§ !]§[_loc4_] as UIComponentRovio).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§^!S§ - this.§?f§ * this.§#!H§;
         y = this.§<P§ - this.§?f§ * this.§5_§;
      }
   }
}
