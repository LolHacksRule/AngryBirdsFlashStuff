package §[!F§
{
   import §&<§.§2!q§;
   import §^!`§.§-"5§;
   import flash.display.MovieClip;
   
   public class §4!a§ extends §3j§
   {
       
      
      public var §1!q§:int;
      
      public var §>z§:int;
      
      public var §?!E§:int;
      
      public var §7!]§:int;
      
      public var §8!b§:Number;
      
      public var §;!W§:Number;
      
      public var §44§:Number;
      
      public var §<!q§:Number;
      
      public var §1H§:Number;
      
      public function §4!a§(param1:XML, param2:§3j§, param3:§-"5§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §,!l§ = true;
      }
      
      public function §?"'§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§?!E§ = param6;
         this.§7!]§ = param1 * this.§?!E§;
         this.§1H§ = param7;
         this.§44§ = param2;
         this.§<!q§ = param3;
         this.§8!b§ = param4;
         this.§;!W§ = param5;
         if(false)
         {
            this.§>z§ = Math.max(1,Math.ceil(§ !C§.length / this.§7!]§));
         }
         else
         {
            this.§>z§ = 1;
            if(§ !C§.length > this.§7!]§)
            {
               this.§>z§ += Math.ceil((§ !C§.length - this.§7!]§) / (this.§?!E§ * this.§1H§));
            }
         }
         this.§%C§(0);
      }
      
      public function §%C§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>z§)
         {
            param1 = this.§>z§ - 1;
         }
         this.§1!q§ = param1;
         var _loc2_:int = this.§1!q§ * this.§1H§ * this.§?!E§;
         var _loc3_:int = _loc2_ + this.§7!]§;
         var _loc4_:int = 0;
         while(_loc4_ < § !C§.length)
         {
            (§ !C§[_loc4_] as §2!q§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§44§ - this.§1!q§ * this.§8!b§;
         y = this.§<!q§ - this.§1!q§ * this.§;!W§;
      }
   }
}
