package §?!7§
{
   import §2h§.§'!^§;
   import §9Y§.§9j§;
   import flash.display.MovieClip;
   
   public class §7p§ extends §8;§
   {
       
      
      public var §;!q§:int;
      
      public var §9!;§:int;
      
      public var §;I§:int;
      
      public var §"!R§:int;
      
      public var §3M§:Number;
      
      public var §]9§:Number;
      
      public var §9!c§:Number;
      
      public var §2!v§:Number;
      
      public var §=<§:Number;
      
      public function §7p§(param1:XML, param2:§8;§, param3:§'!^§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;b§ = true;
      }
      
      public function §#!v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§;I§ = param6;
         this.§"!R§ = param1 * this.§;I§;
         this.§=<§ = param7;
         this.§9!c§ = param2;
         this.§2!v§ = param3;
         this.§3M§ = param4;
         this.§]9§ = param5;
         if(false)
         {
            this.§9!;§ = Math.max(1,Math.ceil(§>!!§.length / this.§"!R§));
         }
         else
         {
            this.§9!;§ = 1;
            if(§>!!§.length > this.§"!R§)
            {
               this.§9!;§ += Math.ceil((§>!!§.length - this.§"!R§) / (this.§;I§ * this.§=<§));
            }
         }
         this.§7&§(0);
      }
      
      public function §7&§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§9!;§)
         {
            param1 = this.§9!;§ - 1;
         }
         this.§;!q§ = param1;
         var _loc2_:int = this.§;!q§ * this.§=<§ * this.§;I§;
         var _loc3_:int = _loc2_ + this.§"!R§;
         var _loc4_:int = 0;
         while(_loc4_ < §>!!§.length)
         {
            (§>!!§[_loc4_] as §9j§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9!c§ - this.§;!q§ * this.§3M§;
         y = this.§2!v§ - this.§;!q§ * this.§]9§;
      }
   }
}
