package §;"+§
{
   import §5<§.§58§;
   import §>P§.§3!Z§;
   import flash.display.MovieClip;
   
   public class §#!_§ extends §^!i§
   {
       
      
      public var §8P§:int;
      
      public var § ",§:int;
      
      public var §@!z§:int;
      
      public var §?"5§:int;
      
      public var §#l§:Number;
      
      public var §<!h§:Number;
      
      public var §3"6§:Number;
      
      public var §&!3§:Number;
      
      public var §=!+§:Number;
      
      public function §#!_§(param1:XML, param2:§^!i§, param3:§58§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §<h§ = true;
      }
      
      public function §;n§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§@!z§ = param6;
         this.§?"5§ = param1 * this.§@!z§;
         this.§=!+§ = param7;
         this.§3"6§ = param2;
         this.§&!3§ = param3;
         this.§#l§ = param4;
         this.§<!h§ = param5;
         if(false)
         {
            this.§ ",§ = Math.max(1,Math.ceil(§[3§.length / this.§?"5§));
         }
         else
         {
            this.§ ",§ = 1;
            if(§[3§.length > this.§?"5§)
            {
               this.§ ",§ += Math.ceil((§[3§.length - this.§?"5§) / (this.§@!z§ * this.§=!+§));
            }
         }
         this.§[!I§(0);
      }
      
      public function §[!I§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§ ",§)
         {
            param1 = this.§ ",§ - 1;
         }
         this.§8P§ = param1;
         var _loc2_:int = this.§8P§ * this.§=!+§ * this.§@!z§;
         var _loc3_:int = _loc2_ + this.§?"5§;
         var _loc4_:int = 0;
         while(_loc4_ < §[3§.length)
         {
            (§[3§[_loc4_] as §3!Z§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§3"6§ - this.§8P§ * this.§#l§;
         y = this.§&!3§ - this.§8P§ * this.§<!h§;
      }
   }
}
