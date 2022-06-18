package §?>§
{
   import §7'§.§ ?§;
   import §8v§.§#Z§;
   import flash.display.MovieClip;
   
   public class §`n§ extends § !V§
   {
       
      
      public var §2H§:int;
      
      public var §%!S§:int;
      
      public var §'n§:int;
      
      public var §-w§:int;
      
      public var §[m§:Number;
      
      public var §6![§:Number;
      
      public var §;j§:Number;
      
      public var §>5§:Number;
      
      public var §1!R§:Number;
      
      public function §`n§(param1:XML, param2:§ !V§, param3:§#Z§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §]!?§ = true;
      }
      
      public function §1'§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§'n§ = param6;
         this.§-w§ = param1 * this.§'n§;
         this.§1!R§ = param7;
         this.§;j§ = param2;
         this.§>5§ = param3;
         this.§[m§ = param4;
         this.§6![§ = param5;
         if(false)
         {
            this.§%!S§ = Math.max(1,Math.ceil(§!x§.length / this.§-w§));
         }
         else
         {
            this.§%!S§ = 1;
            if(§!x§.length > this.§-w§)
            {
               this.§%!S§ += Math.ceil((§!x§.length - this.§-w§) / (this.§'n§ * this.§1!R§));
            }
         }
         this.§<<§(0);
      }
      
      public function §<<§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§%!S§)
         {
            param1 = this.§%!S§ - 1;
         }
         this.§2H§ = param1;
         var _loc2_:int = this.§2H§ * this.§1!R§ * this.§'n§;
         var _loc3_:int = _loc2_ + this.§-w§;
         var _loc4_:int = 0;
         while(_loc4_ < §!x§.length)
         {
            (§!x§[_loc4_] as § ?§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§;j§ - this.§2H§ * this.§[m§;
         y = this.§>5§ - this.§2H§ * this.§6![§;
      }
   }
}
