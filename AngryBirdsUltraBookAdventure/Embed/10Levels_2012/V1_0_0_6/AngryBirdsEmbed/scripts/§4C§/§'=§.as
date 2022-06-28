package §4C§
{
   import §0w§.§0#§;
   import §`!0§.§4Y§;
   import flash.display.MovieClip;
   
   public class §'=§ extends §1!=§
   {
       
      
      public var §<,§:int;
      
      public var §+!2§:int;
      
      public var §5#§:int;
      
      public var §'j§:int;
      
      public var §>b§:Number;
      
      public var § ]§:Number;
      
      public var §+Q§:Number;
      
      public var §package§:Number;
      
      public var §6s§:Number;
      
      public function §'=§(param1:XML, param2:§1!=§, param3:§0#§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §[U§ = true;
      }
      
      public function §&!!§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§5#§ = param6;
         this.§'j§ = param1 * this.§5#§;
         this.§6s§ = param7;
         this.§+Q§ = param2;
         this.§package§ = param3;
         this.§>b§ = param4;
         this.§ ]§ = param5;
         this.§+!2§ = 1;
         if(§@_§.length > this.§'j§)
         {
            this.§+!2§ += Math.ceil((§@_§.length - this.§'j§) / (this.§5#§ * this.§6s§));
         }
         this.§+!I§(0);
      }
      
      public function §+!I§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§+!2§)
         {
            param1 = this.§+!2§ - 1;
         }
         this.§<,§ = param1;
         var _loc2_:int = this.§<,§ * this.§6s§ * this.§5#§;
         var _loc3_:int = _loc2_ + this.§'j§;
         var _loc4_:int = 0;
         while(_loc4_ < §@_§.length)
         {
            (§@_§[_loc4_] as §4Y§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+Q§ - this.§<,§ * this.§>b§;
         y = this.§package§ - this.§<,§ * this.§ ]§;
      }
   }
}
