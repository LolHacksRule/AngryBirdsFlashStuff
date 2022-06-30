package §=!c§
{
   import § !Y§.§if§;
   import §93§.§"6§;
   import flash.display.MovieClip;
   
   public class §5!-§ extends §=>§
   {
       
      
      public var §'E§:int;
      
      public var §%e§:int;
      
      public var §[!9§:int;
      
      public var §^k§:int;
      
      public var § q§:Number;
      
      public var §+m§:Number;
      
      public var §,!L§:Number;
      
      public var §9`§:Number;
      
      public var §@!!§:Number;
      
      public function §5!-§(param1:XML, param2:§=>§, param3:§if§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §,`§ = true;
      }
      
      public function §<T§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§[!9§ = param6;
         this.§^k§ = param1 * this.§[!9§;
         this.§@!!§ = param7;
         this.§,!L§ = param2;
         this.§9`§ = param3;
         this.§ q§ = param4;
         this.§+m§ = param5;
         if(false)
         {
            this.§%e§ = Math.max(1,Math.ceil(§-!`§.length / this.§^k§));
         }
         else
         {
            this.§%e§ = 1;
            if(§-!`§.length > this.§^k§)
            {
               this.§%e§ += Math.ceil((§-!`§.length - this.§^k§) / (this.§[!9§ * this.§@!!§));
            }
         }
         this.§=!b§(0);
      }
      
      public function §=!b§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§%e§)
         {
            param1 = this.§%e§ - 1;
         }
         this.§'E§ = param1;
         var _loc2_:int = this.§'E§ * this.§@!!§ * this.§[!9§;
         var _loc3_:int = _loc2_ + this.§^k§;
         var _loc4_:int = 0;
         while(_loc4_ < §-!`§.length)
         {
            (§-!`§[_loc4_] as §"6§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§,!L§ - this.§'E§ * this.§ q§;
         y = this.§9`§ - this.§'E§ * this.§+m§;
      }
   }
}
