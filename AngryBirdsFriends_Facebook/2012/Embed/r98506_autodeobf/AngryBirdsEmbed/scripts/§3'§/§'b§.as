package §3'§
{
   import §+n§.§&+§;
   import §[R§.§5h§;
   import flash.display.MovieClip;
   
   public class §'b§ extends §8I§
   {
       
      
      public var §+"§:int;
      
      public var §;H§:int;
      
      public var §`r§:int;
      
      public var §9k§:int;
      
      public var §^!&§:Number;
      
      public var §[C§:Number;
      
      public var §`_§:Number;
      
      public var §[;§:Number;
      
      public var §5!C§:Number;
      
      public function §'b§(param1:XML, param2:§8I§, param3:§5h§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §@!4§ = true;
      }
      
      public function §-P§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§`r§ = param6;
         this.§9k§ = param1 * this.§`r§;
         this.§5!C§ = param7;
         this.§`_§ = param2;
         this.§[;§ = param3;
         this.§^!&§ = param4;
         this.§[C§ = param5;
         this.§;H§ = 1;
         if(§&P§.length > this.§9k§)
         {
            this.§;H§ += Math.ceil((§&P§.length - this.§9k§) / (this.§`r§ * this.§5!C§));
         }
         this.§<5§(0);
      }
      
      public function §<5§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§;H§)
         {
            param1 = this.§;H§ - 1;
         }
         this.§+"§ = param1;
         var _loc2_:int = this.§+"§ * this.§5!C§ * this.§`r§;
         var _loc3_:int = _loc2_ + this.§9k§;
         var _loc4_:int = 0;
         while(_loc4_ < §&P§.length)
         {
            (§&P§[_loc4_] as §&+§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§`_§ - this.§+"§ * this.§^!&§;
         y = this.§[;§ - this.§+"§ * this.§[C§;
      }
   }
}
