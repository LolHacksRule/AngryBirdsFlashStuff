package §[]§
{
   import §&8§.§<O§;
   import §7L§.§-!B§;
   import flash.display.MovieClip;
   
   public class §31§ extends §`!`§
   {
       
      
      public var §8!I§:int;
      
      public var §[+§:int;
      
      public var §+D§:int;
      
      public var §"!5§:int;
      
      public var §2!"§:Number;
      
      public var §6!;§:Number;
      
      public var §+W§:Number;
      
      public var §@!S§:Number;
      
      public var §2S§:Number;
      
      public function §31§(param1:XML, param2:§`!`§, param3:§<O§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §0!G§ = true;
      }
      
      public function §<!R§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§+D§ = param6;
         this.§"!5§ = param1 * this.§+D§;
         this.§2S§ = param7;
         this.§+W§ = param2;
         this.§@!S§ = param3;
         this.§2!"§ = param4;
         this.§6!;§ = param5;
         if(false)
         {
            this.§[+§ = Math.max(1,Math.ceil(§!h§.length / this.§"!5§));
         }
         else
         {
            this.§[+§ = 1;
            if(§!h§.length > this.§"!5§)
            {
               this.§[+§ += Math.ceil((§!h§.length - this.§"!5§) / (this.§+D§ * this.§2S§));
            }
         }
         this.§3! §(0);
      }
      
      public function §3! §(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§[+§)
         {
            param1 = this.§[+§ - 1;
         }
         this.§8!I§ = param1;
         var _loc2_:int = this.§8!I§ * this.§2S§ * this.§+D§;
         var _loc3_:int = _loc2_ + this.§"!5§;
         var _loc4_:int = 0;
         while(_loc4_ < §!h§.length)
         {
            (§!h§[_loc4_] as §-!B§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+W§ - this.§8!I§ * this.§2!"§;
         y = this.§@!S§ - this.§8!I§ * this.§6!;§;
      }
   }
}
