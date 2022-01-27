package §"U§
{
   import §6v§.§var §;
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   
   public class §@!E§ extends §[Q§
   {
       
      
      public var §,8§:int;
      
      public var §#$§:int;
      
      public var §&R§:int;
      
      public var §>I§:int;
      
      public var §?!K§:Number;
      
      public var § !7§:Number;
      
      public var §-l§:Number;
      
      public var §<!?§:Number;
      
      public var §^T§:Number;
      
      public function §@!E§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §82§ = true;
      }
      
      public function §%7§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§&R§ = param6;
         this.§>I§ = param1 * this.§&R§;
         this.§^T§ = param7;
         this.§-l§ = param2;
         this.§<!?§ = param3;
         this.§?!K§ = param4;
         this.§ !7§ = param5;
         if(false)
         {
            this.§#$§ = Math.max(1,Math.ceil(§`!O§.length / this.§>I§));
         }
         else
         {
            this.§#$§ = 1;
            if(§`!O§.length > this.§>I§)
            {
               this.§#$§ += Math.ceil((§`!O§.length - this.§>I§) / (this.§&R§ * this.§^T§));
            }
         }
         this.§5N§(0);
      }
      
      public function §5N§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§#$§)
         {
            param1 = this.§#$§ - 1;
         }
         this.§,8§ = param1;
         var _loc2_:int = this.§,8§ * this.§^T§ * this.§&R§;
         var _loc3_:int = _loc2_ + this.§>I§;
         var _loc4_:int = 0;
         while(_loc4_ < §`!O§.length)
         {
            (§`!O§[_loc4_] as §var §).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§-l§ - this.§,8§ * this.§?!K§;
         y = this.§<!?§ - this.§,8§ * this.§ !7§;
      }
   }
}
