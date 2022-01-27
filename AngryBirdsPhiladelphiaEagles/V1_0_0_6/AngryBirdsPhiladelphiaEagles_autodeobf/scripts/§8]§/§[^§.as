package §8]§
{
   import §!!0§.override;
   import §4M§.§^'§;
   import flash.display.MovieClip;
   
   public class §[^§ extends §+a§
   {
       
      
      public var §"!E§:int;
      
      public var §]!N§:int;
      
      public var §4p§:int;
      
      public var §null §:int;
      
      public var § I§:Number;
      
      public var §,9§:Number;
      
      public var §#[§:Number;
      
      public var §&P§:Number;
      
      public var §?!+§:Number;
      
      public function §[^§(param1:XML, param2:§+a§, param3:§^'§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §5P§ = true;
      }
      
      public function §@y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§4p§ = param6;
         this.§null § = param1 * this.§4p§;
         this.§?!+§ = param7;
         this.§#[§ = param2;
         this.§&P§ = param3;
         this.§ I§ = param4;
         this.§,9§ = param5;
         if(false)
         {
            this.§]!N§ = Math.max(1,Math.ceil(§with§.length / this.§null §));
         }
         else
         {
            this.§]!N§ = 1;
            if(§with§.length > this.§null §)
            {
               this.§]!N§ += Math.ceil((§with§.length - this.§null §) / (this.§4p§ * this.§?!+§));
            }
         }
         this.§1e§(0);
      }
      
      public function §1e§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§]!N§)
         {
            param1 = this.§]!N§ - 1;
         }
         this.§"!E§ = param1;
         var _loc2_:int = this.§"!E§ * this.§?!+§ * this.§4p§;
         var _loc3_:int = _loc2_ + this.§null §;
         var _loc4_:int = 0;
         while(_loc4_ < §with§.length)
         {
            (§with§[_loc4_] as override).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§#[§ - this.§"!E§ * this.§ I§;
         y = this.§&P§ - this.§"!E§ * this.§,9§;
      }
   }
}
