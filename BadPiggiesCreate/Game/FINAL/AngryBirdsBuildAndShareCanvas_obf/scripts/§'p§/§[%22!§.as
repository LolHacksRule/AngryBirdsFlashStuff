package §'p§
{
   import §'!A§.§-!2§;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   
   public class §["!§ extends §`!T§
   {
       
      
      public var §7!+§:int;
      
      public var §+!j§:int;
      
      public var §-!^§:int;
      
      public var §%-§:int;
      
      public var §<!E§:Number;
      
      public var §,W§:Number;
      
      public var §8w§:Number;
      
      public var §3!,§:Number;
      
      public var §<!n§:Number;
      
      public function §["!§(param1:XML, param2:§`!T§, param3:§'s§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;!v§ = true;
      }
      
      public function § ">§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§-!^§ = param6;
         this.§%-§ = param1 * this.§-!^§;
         this.§<!n§ = param7;
         this.§8w§ = param2;
         this.§3!,§ = param3;
         this.§<!E§ = param4;
         this.§,W§ = param5;
         if(false)
         {
            this.§+!j§ = Math.max(1,Math.ceil(§"!_§.length / this.§%-§));
         }
         else
         {
            this.§+!j§ = 1;
            if(§"!_§.length > this.§%-§)
            {
               this.§+!j§ += Math.ceil((§"!_§.length - this.§%-§) / (this.§-!^§ * this.§<!n§));
            }
         }
         this.§@!w§(0);
      }
      
      public function §@!w§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§+!j§)
         {
            param1 = this.§+!j§ - 1;
         }
         this.§7!+§ = param1;
         var _loc2_:int = this.§7!+§ * this.§<!n§ * this.§-!^§;
         var _loc3_:int = _loc2_ + this.§%-§;
         var _loc4_:int = 0;
         while(_loc4_ < §"!_§.length)
         {
            (§"!_§[_loc4_] as §-!2§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§8w§ - this.§7!+§ * this.§<!E§;
         y = this.§3!,§ - this.§7!+§ * this.§,W§;
      }
   }
}
