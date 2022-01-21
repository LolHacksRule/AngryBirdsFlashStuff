package §2y§
{
   import §3!R§.§0!R§;
   import §3g§.§"!n§;
   import flash.display.MovieClip;
   
   public class §^!;§ extends §]`§
   {
       
      
      public var §1!=§:int;
      
      public var §7@§:int;
      
      public var §80§:int;
      
      public var §^l§:int;
      
      public var §[L§:Number;
      
      public var §>L§:Number;
      
      public var §0m§:Number;
      
      public var §+,§:Number;
      
      public var §]P§:Number;
      
      public function §^!;§(param1:XML, param2:§]`§, param3:§"!n§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §`!'§ = true;
      }
      
      public function §8!V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§80§ = param6;
         this.§^l§ = param1 * this.§80§;
         this.§]P§ = param7;
         this.§0m§ = param2;
         this.§+,§ = param3;
         this.§[L§ = param4;
         this.§>L§ = param5;
         if(false)
         {
            this.§7@§ = Math.max(1,Math.ceil(§,]§.length / this.§^l§));
         }
         else
         {
            this.§7@§ = 1;
            if(§,]§.length > this.§^l§)
            {
               this.§7@§ += Math.ceil((§,]§.length - this.§^l§) / (this.§80§ * this.§]P§));
            }
         }
         this.§#!Q§(0);
      }
      
      public function §#!Q§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§7@§)
         {
            param1 = this.§7@§ - 1;
         }
         this.§1!=§ = param1;
         var _loc2_:int = this.§1!=§ * this.§]P§ * this.§80§;
         var _loc3_:int = _loc2_ + this.§^l§;
         var _loc4_:int = 0;
         while(_loc4_ < §,]§.length)
         {
            (§,]§[_loc4_] as §0!R§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§0m§ - this.§1!=§ * this.§[L§;
         y = this.§+,§ - this.§1!=§ * this.§>L§;
      }
   }
}
