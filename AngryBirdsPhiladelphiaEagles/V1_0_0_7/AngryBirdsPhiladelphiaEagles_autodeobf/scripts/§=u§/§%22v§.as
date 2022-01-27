package §=u§
{
   import §5!<§.§@]§;
   import §5f§.§-G§;
   import flash.display.MovieClip;
   
   public class §"v§ extends §>v§
   {
       
      
      public var §?m§:int;
      
      public var §!!&§:int;
      
      public var §6!,§:int;
      
      public var §@l§:int;
      
      public var §^>§:Number;
      
      public var §#W§:Number;
      
      public var §+e§:Number;
      
      public var §^!?§:Number;
      
      public var §`+§:Number;
      
      public function §"v§(param1:XML, param2:§>v§, param3:§@]§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §+$§ = true;
      }
      
      public function §'[§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6!,§ = param6;
         this.§@l§ = param1 * this.§6!,§;
         this.§`+§ = param7;
         this.§+e§ = param2;
         this.§^!?§ = param3;
         this.§^>§ = param4;
         this.§#W§ = param5;
         if(false)
         {
            this.§!!&§ = Math.max(1,Math.ceil(§@#§.length / this.§@l§));
         }
         else
         {
            this.§!!&§ = 1;
            if(§@#§.length > this.§@l§)
            {
               this.§!!&§ += Math.ceil((§@#§.length - this.§@l§) / (this.§6!,§ * this.§`+§));
            }
         }
         this.§=!D§(0);
      }
      
      public function §=!D§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§!!&§)
         {
            param1 = this.§!!&§ - 1;
         }
         this.§?m§ = param1;
         var _loc2_:int = this.§?m§ * this.§`+§ * this.§6!,§;
         var _loc3_:int = _loc2_ + this.§@l§;
         var _loc4_:int = 0;
         while(_loc4_ < §@#§.length)
         {
            (§@#§[_loc4_] as §-G§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+e§ - this.§?m§ * this.§^>§;
         y = this.§^!?§ - this.§?m§ * this.§#W§;
      }
   }
}
