package §%4§
{
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import flash.display.MovieClip;
   
   public class §9!&§ extends §4!=§
   {
       
      
      public var §1x§:int;
      
      public var §-!=§:int;
      
      public var §@U§:int;
      
      public var §^5§:int;
      
      public var §;-§:Number;
      
      public var §>!#§:Number;
      
      public var §]]§:Number;
      
      public var §3=§:Number;
      
      public var §+!@§:Number;
      
      public function §9!&§(param1:XML, param2:§4!=§, param3:§4!,§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §7!I§ = true;
      }
      
      public function §4^§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§@U§ = param6;
         this.§^5§ = param1 * this.§@U§;
         this.§+!@§ = param7;
         this.§]]§ = param2;
         this.§3=§ = param3;
         this.§;-§ = param4;
         this.§>!#§ = param5;
         this.§-!=§ = 1;
         if(§+q§.length > this.§^5§)
         {
            this.§-!=§ += Math.ceil((§+q§.length - this.§^5§) / (this.§@U§ * this.§+!@§));
         }
         this.§<!#§(0);
      }
      
      public function §<!#§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§-!=§)
         {
            param1 = this.§-!=§ - 1;
         }
         this.§1x§ = param1;
         var _loc2_:int = this.§1x§ * this.§+!@§ * this.§@U§;
         var _loc3_:int = _loc2_ + this.§^5§;
         var _loc4_:int = 0;
         while(_loc4_ < §+q§.length)
         {
            (§+q§[_loc4_] as §'!,§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§]]§ - this.§1x§ * this.§;-§;
         y = this.§3=§ - this.§1x§ * this.§>!#§;
      }
   }
}
