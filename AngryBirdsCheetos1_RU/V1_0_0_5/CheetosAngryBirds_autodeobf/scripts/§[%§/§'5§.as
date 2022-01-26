package §[%§
{
   import §'Y§.§;J§;
   import §<s§.§'k§;
   import flash.display.MovieClip;
   
   public class §'5§ extends §&a§
   {
       
      
      public var § W§:int;
      
      public var §0!]§:int;
      
      public var §6A§:int;
      
      public var §extends§:int;
      
      public var §]A§:Number;
      
      public var §>E§:Number;
      
      public var §3%§:Number;
      
      public var §^k§:Number;
      
      public var §"z§:Number;
      
      public function §'5§(param1:XML, param2:§&a§, param3:§;J§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §#]§ = true;
      }
      
      public function §-h§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6A§ = param6;
         this.§extends§ = param1 * this.§6A§;
         this.§"z§ = param7;
         this.§3%§ = param2;
         this.§^k§ = param3;
         this.§]A§ = param4;
         this.§>E§ = param5;
         if(false)
         {
            this.§0!]§ = Math.max(1,Math.ceil(§-8§.length / this.§extends§));
         }
         else
         {
            this.§0!]§ = 1;
            if(§-8§.length > this.§extends§)
            {
               this.§0!]§ += Math.ceil((§-8§.length - this.§extends§) / (this.§6A§ * this.§"z§));
            }
         }
         this.§1_§(0);
      }
      
      public function §1_§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§0!]§)
         {
            param1 = this.§0!]§ - 1;
         }
         this.§ W§ = param1;
         var _loc2_:int = this.§ W§ * this.§"z§ * this.§6A§;
         var _loc3_:int = _loc2_ + this.§extends§;
         var _loc4_:int = 0;
         while(_loc4_ < §-8§.length)
         {
            (§-8§[_loc4_] as §'k§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§3%§ - this.§ W§ * this.§]A§;
         y = this.§^k§ - this.§ W§ * this.§>E§;
      }
   }
}
