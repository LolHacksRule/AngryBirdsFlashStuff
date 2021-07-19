package §+D§
{
   import §7!$§.§]#[§;
   import §;"Y§.§]#X§;
   import flash.display.MovieClip;
   
   public class §5"h§ extends § #^§
   {
       
      
      public var §#"x§:int;
      
      public var §>"4§:int;
      
      public var § !<§:int;
      
      public var §?#K§:int;
      
      public var §8",§:Number;
      
      public var §]a§:Number;
      
      public var §4" §:Number;
      
      public var §?"V§:Number;
      
      public var §^!;§:Number;
      
      public function §5"h§(param1:XML, param2:§ #^§, param3:§]#[§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §3"s§ = true;
      }
      
      public function §&!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§ !<§ = param6;
         this.§?#K§ = param1 * this.§ !<§;
         this.§^!;§ = param7;
         this.§4" § = param2;
         this.§?"V§ = param3;
         this.§8",§ = param4;
         this.§]a§ = param5;
         if(false)
         {
            this.§>"4§ = Math.max(1,Math.ceil(§%"u§.length / this.§?#K§));
         }
         else
         {
            this.§>"4§ = 1;
            if(§%"u§.length > this.§?#K§)
            {
               this.§>"4§ += Math.ceil((§%"u§.length - this.§?#K§) / (this.§ !<§ * this.§^!;§));
            }
         }
         this.§+"a§(0);
      }
      
      public function §+"a§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>"4§)
         {
            param1 = this.§>"4§ - 1;
         }
         this.§#"x§ = param1;
         var _loc2_:int = this.§#"x§ * this.§^!;§ * this.§ !<§;
         var _loc3_:int = _loc2_ + this.§?#K§;
         var _loc4_:int = 0;
         while(_loc4_ < §%"u§.length)
         {
            (§%"u§[_loc4_] as §]#X§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§4" § - this.§#"x§ * this.§8",§;
         y = this.§?"V§ - this.§#"x§ * this.§]a§;
      }
   }
}
