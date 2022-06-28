package §class§
{
   import §-!F§.§&!A§;
   import §<!G§.§^3§;
   import flash.display.MovieClip;
   
   public class §0=§ extends §3C§
   {
       
      
      public var §[!6§:int;
      
      public var §4!1§:int;
      
      public var §6l§:int;
      
      public var §=!9§:int;
      
      public var §5Z§:Number;
      
      public var §^,§:Number;
      
      public var §9s§:Number;
      
      public var §^+§:Number;
      
      public var § !>§:Number;
      
      public function §0=§(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §8!;§ = true;
      }
      
      public function §,D§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6l§ = param6;
         this.§=!9§ = param1 * this.§6l§;
         this.§ !>§ = param7;
         this.§9s§ = param2;
         this.§^+§ = param3;
         this.§5Z§ = param4;
         this.§^,§ = param5;
         this.§4!1§ = 1;
         if(§3! §.length > this.§=!9§)
         {
            this.§4!1§ += Math.ceil((§3! §.length - this.§=!9§) / (this.§6l§ * this.§ !>§));
         }
         this.§5V§(0);
      }
      
      public function §5V§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§4!1§)
         {
            param1 = this.§4!1§ - 1;
         }
         this.§[!6§ = param1;
         var _loc2_:int = this.§[!6§ * this.§ !>§ * this.§6l§;
         var _loc3_:int = _loc2_ + this.§=!9§;
         var _loc4_:int = 0;
         while(_loc4_ < §3! §.length)
         {
            (§3! §[_loc4_] as §&!A§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9s§ - this.§[!6§ * this.§5Z§;
         y = this.§^+§ - this.§[!6§ * this.§^,§;
      }
   }
}
