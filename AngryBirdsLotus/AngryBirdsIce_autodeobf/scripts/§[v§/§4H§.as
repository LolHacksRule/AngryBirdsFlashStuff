package §[v§
{
   import §2]§.§#H§;
   import §`W§.§`H§;
   import flash.display.MovieClip;
   
   public class §4H§ extends §&F§
   {
       
      
      public var §!O§:int;
      
      public var §>§:int;
      
      public var §%-§:int;
      
      public var §<L§:int;
      
      public var §"!3§:Number;
      
      public var §`h§:Number;
      
      public var §+D§:Number;
      
      public var §7J§:Number;
      
      public var §@n§:Number;
      
      public function §4H§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §3!A§ = true;
      }
      
      public function §+!5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§%-§ = param6;
         this.§<L§ = param1 * this.§%-§;
         this.§@n§ = param7;
         this.§+D§ = param2;
         this.§7J§ = param3;
         this.§"!3§ = param4;
         this.§`h§ = param5;
         if(false)
         {
            this.§>§ = Math.max(1,Math.ceil(§1I§.length / this.§<L§));
         }
         else
         {
            this.§>§ = 1;
            if(§1I§.length > this.§<L§)
            {
               this.§>§ += Math.ceil((§1I§.length - this.§<L§) / (this.§%-§ * this.§@n§));
            }
         }
         this.§ T§(0);
      }
      
      public function § T§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>§)
         {
            param1 = this.§>§ - 1;
         }
         this.§!O§ = param1;
         var _loc2_:int = this.§!O§ * this.§@n§ * this.§%-§;
         var _loc3_:int = _loc2_ + this.§<L§;
         var _loc4_:int = 0;
         while(_loc4_ < §1I§.length)
         {
            (§1I§[_loc4_] as §`H§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+D§ - this.§!O§ * this.§"!3§;
         y = this.§7J§ - this.§!O§ * this.§`h§;
      }
   }
}
