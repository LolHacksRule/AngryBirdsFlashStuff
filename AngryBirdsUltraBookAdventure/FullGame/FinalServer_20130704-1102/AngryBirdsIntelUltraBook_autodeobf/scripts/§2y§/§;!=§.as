package §2y§
{
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   import flash.display.MovieClip;
   
   public class §;!=§ extends §^! §
   {
       
      
      public var §<#§:int;
      
      public var §7!=§:int;
      
      public var §-a§:int;
      
      public var § %§:int;
      
      public var §-S§:Number;
      
      public var §[" §:Number;
      
      public var §4O§:Number;
      
      public var §0!d§:Number;
      
      public var §@!X§:Number;
      
      public function §;!=§(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §9y§ = true;
      }
      
      public function §@!n§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§-a§ = param6;
         this.§ %§ = param1 * this.§-a§;
         this.§@!X§ = param7;
         this.§4O§ = param2;
         this.§0!d§ = param3;
         this.§-S§ = param4;
         this.§[" § = param5;
         if(false)
         {
            this.§7!=§ = Math.max(1,Math.ceil(§&O§.length / this.§ %§));
         }
         else
         {
            this.§7!=§ = 1;
            if(§&O§.length > this.§ %§)
            {
               this.§7!=§ += Math.ceil((§&O§.length - this.§ %§) / (this.§-a§ * this.§@!X§));
            }
         }
         this.§`4§(0);
      }
      
      public function §`4§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§7!=§)
         {
            param1 = this.§7!=§ - 1;
         }
         this.§<#§ = param1;
         var _loc2_:int = this.§<#§ * this.§@!X§ * this.§-a§;
         var _loc3_:int = _loc2_ + this.§ %§;
         var _loc4_:int = 0;
         while(_loc4_ < §&O§.length)
         {
            (§&O§[_loc4_] as §7!>§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§4O§ - this.§<#§ * this.§-S§;
         y = this.§0!d§ - this.§<#§ * this.§[" §;
      }
   }
}
