package §'G§
{
   import §-M§.§3!6§;
   import §-V§.§@!$§;
   import flash.display.MovieClip;
   
   public class §for§ extends §%!%§
   {
       
      
      public var §&@§:int;
      
      public var §<u§:int;
      
      public var §7Z§:int;
      
      public var §?!V§:int;
      
      public var §?9§:Number;
      
      public var §@!J§:Number;
      
      public var §,!,§:Number;
      
      public var §`!6§:Number;
      
      public var §+!5§:Number;
      
      public function §for§(param1:XML, param2:§%!%§, param3:§3!6§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;!;§ = true;
      }
      
      public function §,!"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§7Z§ = param6;
         this.§?!V§ = param1 * this.§7Z§;
         this.§+!5§ = param7;
         this.§,!,§ = param2;
         this.§`!6§ = param3;
         this.§?9§ = param4;
         this.§@!J§ = param5;
         if(false)
         {
            this.§<u§ = Math.max(1,Math.ceil(§%!&§.length / this.§?!V§));
         }
         else
         {
            this.§<u§ = 1;
            if(§%!&§.length > this.§?!V§)
            {
               this.§<u§ += Math.ceil((§%!&§.length - this.§?!V§) / (this.§7Z§ * this.§+!5§));
            }
         }
         this.§8!N§(0);
      }
      
      public function §8!N§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§<u§)
         {
            param1 = this.§<u§ - 1;
         }
         this.§&@§ = param1;
         var _loc2_:int = this.§&@§ * this.§+!5§ * this.§7Z§;
         var _loc3_:int = _loc2_ + this.§?!V§;
         var _loc4_:int = 0;
         while(_loc4_ < §%!&§.length)
         {
            (§%!&§[_loc4_] as §@!$§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§,!,§ - this.§&@§ * this.§?9§;
         y = this.§`!6§ - this.§&@§ * this.§@!J§;
      }
   }
}
