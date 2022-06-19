package §"",§
{
   import §1"2§.§#z§;
   import §]!F§.§"!j§;
   import flash.display.MovieClip;
   
   public class §;!3§ extends §<+§
   {
       
      
      public var §3A§:int;
      
      public var §3! §:int;
      
      public var §-K§:int;
      
      public var §3!<§:int;
      
      public var §[M§:Number;
      
      public var §@!e§:Number;
      
      public var §0!j§:Number;
      
      public var §?!X§:Number;
      
      public var §5p§:Number;
      
      public function §;!3§(param1:XML, param2:§<+§, param3:§"!j§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §1!n§ = true;
      }
      
      public function §-!S§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§-K§ = param6;
         this.§3!<§ = param1 * this.§-K§;
         this.§5p§ = param7;
         this.§0!j§ = param2;
         this.§?!X§ = param3;
         this.§[M§ = param4;
         this.§@!e§ = param5;
         if(false)
         {
            this.§3! § = Math.max(1,Math.ceil(§8%§.length / this.§3!<§));
         }
         else
         {
            this.§3! § = 1;
            if(§8%§.length > this.§3!<§)
            {
               this.§3! § += Math.ceil((§8%§.length - this.§3!<§) / (this.§-K§ * this.§5p§));
            }
         }
         this.§#y§(0);
      }
      
      public function §#y§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3! §)
         {
            param1 = this.§3! § - 1;
         }
         this.§3A§ = param1;
         var _loc2_:int = this.§3A§ * this.§5p§ * this.§-K§;
         var _loc3_:int = _loc2_ + this.§3!<§;
         var _loc4_:int = 0;
         while(_loc4_ < §8%§.length)
         {
            (§8%§[_loc4_] as §#z§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§0!j§ - this.§3A§ * this.§[M§;
         y = this.§?!X§ - this.§3A§ * this.§@!e§;
      }
   }
}
