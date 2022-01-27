package §,!7§
{
   import §+k§.§0"4§;
   import §6B§.§&9§;
   import flash.display.MovieClip;
   
   public class §0!<§ extends §5!k§
   {
       
      
      public var §2I§:int;
      
      public var §;3§:int;
      
      public var §&`§:int;
      
      public var §&!4§:int;
      
      public var §1"=§:Number;
      
      public var §0"=§:Number;
      
      public var §4!?§:Number;
      
      public var §,e§:Number;
      
      public var §!"G§:Number;
      
      public function §0!<§(param1:XML, param2:§5!k§, param3:§0"4§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §%!,§ = true;
      }
      
      public function §2!e§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§&`§ = param6;
         this.§&!4§ = param1 * this.§&`§;
         this.§!"G§ = param7;
         this.§4!?§ = param2;
         this.§,e§ = param3;
         this.§1"=§ = param4;
         this.§0"=§ = param5;
         if(false)
         {
            this.§;3§ = Math.max(1,Math.ceil(§<!d§.length / this.§&!4§));
         }
         else
         {
            this.§;3§ = 1;
            if(§<!d§.length > this.§&!4§)
            {
               this.§;3§ += Math.ceil((§<!d§.length - this.§&!4§) / (this.§&`§ * this.§!"G§));
            }
         }
         this.§ null§(0);
      }
      
      public function § null§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§;3§)
         {
            param1 = this.§;3§ - 1;
         }
         this.§2I§ = param1;
         var _loc2_:int = this.§2I§ * this.§!"G§ * this.§&`§;
         var _loc3_:int = _loc2_ + this.§&!4§;
         var _loc4_:int = 0;
         while(_loc4_ < §<!d§.length)
         {
            (§<!d§[_loc4_] as §&9§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§4!?§ - this.§2I§ * this.§1"=§;
         y = this.§,e§ - this.§2I§ * this.§0"=§;
      }
   }
}
