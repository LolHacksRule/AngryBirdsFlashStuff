package §-!'§
{
   import §!^§.§ >§;
   import §^s§.§&"§;
   import flash.display.MovieClip;
   
   public class §]]§ extends §in §
   {
       
      
      public var §=X§:int;
      
      public var §3!>§:int;
      
      public var § H§:int;
      
      public var §0b§:int;
      
      public var §1c§:Number;
      
      public var §]!§:Number;
      
      public var §@p§:Number;
      
      public var §^9§:Number;
      
      public var §5m§:Number;
      
      public function §]]§(param1:XML, param2:§in §, param3:§&"§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §-!+§ = true;
      }
      
      public function §4Y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§ H§ = param6;
         this.§0b§ = param1 * this.§ H§;
         this.§5m§ = param7;
         this.§@p§ = param2;
         this.§^9§ = param3;
         this.§1c§ = param4;
         this.§]!§ = param5;
         this.§3!>§ = 1;
         if(§%!;§.length > this.§0b§)
         {
            this.§3!>§ += Math.ceil((§%!;§.length - this.§0b§) / (this.§ H§ * this.§5m§));
         }
         this.§3J§(0);
      }
      
      public function §3J§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3!>§)
         {
            param1 = this.§3!>§ - 1;
         }
         this.§=X§ = param1;
         var _loc2_:int = this.§=X§ * this.§5m§ * this.§ H§;
         var _loc3_:int = _loc2_ + this.§0b§;
         var _loc4_:int = 0;
         while(_loc4_ < §%!;§.length)
         {
            (§%!;§[_loc4_] as § >§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§@p§ - this.§=X§ * this.§1c§;
         y = this.§^9§ - this.§=X§ * this.§]!§;
      }
   }
}
