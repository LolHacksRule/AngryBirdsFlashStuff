package §4Y§
{
   import §!R§.§9!8§;
   import §+!2§.§0!%§;
   import flash.display.MovieClip;
   
   public class §'i§ extends §%n§
   {
       
      
      public var §4K§:int;
      
      public var §^g§:int;
      
      public var §3!Q§:int;
      
      public var §7!b§:int;
      
      public var §2Q§:Number;
      
      public var §6!g§:Number;
      
      public var §-! §:Number;
      
      public var §]!1§:Number;
      
      public var §5t§:Number;
      
      public function §'i§(param1:XML, param2:§%n§, param3:§0!%§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §@z§ = true;
      }
      
      public function §^K§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§3!Q§ = param6;
         this.§7!b§ = param1 * this.§3!Q§;
         this.§5t§ = param7;
         this.§-! § = param2;
         this.§]!1§ = param3;
         this.§2Q§ = param4;
         this.§6!g§ = param5;
         if(false)
         {
            this.§^g§ = Math.max(1,Math.ceil(§@U§.length / this.§7!b§));
         }
         else
         {
            this.§^g§ = 1;
            if(§@U§.length > this.§7!b§)
            {
               this.§^g§ += Math.ceil((§@U§.length - this.§7!b§) / (this.§3!Q§ * this.§5t§));
            }
         }
         this.§4h§(0);
      }
      
      public function §4h§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§^g§)
         {
            param1 = this.§^g§ - 1;
         }
         this.§4K§ = param1;
         var _loc2_:int = this.§4K§ * this.§5t§ * this.§3!Q§;
         var _loc3_:int = _loc2_ + this.§7!b§;
         var _loc4_:int = 0;
         while(_loc4_ < §@U§.length)
         {
            (§@U§[_loc4_] as §9!8§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§-! § - this.§4K§ * this.§2Q§;
         y = this.§]!1§ - this.§4K§ * this.§6!g§;
      }
   }
}
