package §=!7§
{
   import §&!<§.§>!V§;
   import §@y§.§0"4§;
   import flash.display.MovieClip;
   
   public class §7";§ extends §6W§
   {
       
      
      public var §<!6§:int;
      
      public var §;!-§:int;
      
      public var §>$§:int;
      
      public var §;!f§:int;
      
      public var §,+§:Number;
      
      public var §!! §:Number;
      
      public var §%"5§:Number;
      
      public var §<"7§:Number;
      
      public var §!";§:Number;
      
      public function §7";§(param1:XML, param2:§6W§, param3:§>!V§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §1<§ = true;
      }
      
      public function §9!D§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§>$§ = param6;
         this.§;!f§ = param1 * this.§>$§;
         this.§!";§ = param7;
         this.§%"5§ = param2;
         this.§<"7§ = param3;
         this.§,+§ = param4;
         this.§!! § = param5;
         if(false)
         {
            this.§;!-§ = Math.max(1,Math.ceil(§[z§.length / this.§;!f§));
         }
         else
         {
            this.§;!-§ = 1;
            if(§[z§.length > this.§;!f§)
            {
               this.§;!-§ += Math.ceil((§[z§.length - this.§;!f§) / (this.§>$§ * this.§!";§));
            }
         }
         this.§&!M§(0);
      }
      
      public function §&!M§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§;!-§)
         {
            param1 = this.§;!-§ - 1;
         }
         this.§<!6§ = param1;
         var _loc2_:int = this.§<!6§ * this.§!";§ * this.§>$§;
         var _loc3_:int = _loc2_ + this.§;!f§;
         var _loc4_:int = 0;
         while(_loc4_ < §[z§.length)
         {
            (§[z§[_loc4_] as §0"4§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§%"5§ - this.§<!6§ * this.§,+§;
         y = this.§<"7§ - this.§<!6§ * this.§!! §;
      }
   }
}
