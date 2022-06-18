package §4-§
{
   import §0u§.§^S§;
   import §6!,§.§[H§;
   import flash.display.MovieClip;
   
   public class §3!B§ extends §'J§
   {
       
      
      public var §4u§:int;
      
      public var §3B§:int;
      
      public var §@e§:int;
      
      public var §#=§:int;
      
      public var §75§:Number;
      
      public var §'x§:Number;
      
      public var §'0§:Number;
      
      public var §?F§:Number;
      
      public var §?<§:Number;
      
      public function §3!B§(param1:XML, param2:§'J§, param3:§[H§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §&!5§ = true;
      }
      
      public function §]!4§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§@e§ = param6;
         this.§#=§ = param1 * this.§@e§;
         this.§?<§ = param7;
         this.§'0§ = param2;
         this.§?F§ = param3;
         this.§75§ = param4;
         this.§'x§ = param5;
         this.§3B§ = 1;
         if(§2J§.length > this.§#=§)
         {
            this.§3B§ += Math.ceil((§2J§.length - this.§#=§) / (this.§@e§ * this.§?<§));
         }
         this.§ 5§(0);
      }
      
      public function § 5§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3B§)
         {
            param1 = this.§3B§ - 1;
         }
         this.§4u§ = param1;
         var _loc2_:int = this.§4u§ * this.§?<§ * this.§@e§;
         var _loc3_:int = _loc2_ + this.§#=§;
         var _loc4_:int = 0;
         while(_loc4_ < §2J§.length)
         {
            (§2J§[_loc4_] as §^S§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§'0§ - this.§4u§ * this.§75§;
         y = this.§?F§ - this.§4u§ * this.§'x§;
      }
   }
}
