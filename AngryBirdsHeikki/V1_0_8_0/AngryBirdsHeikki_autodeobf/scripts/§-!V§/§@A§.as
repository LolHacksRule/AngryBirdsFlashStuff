package §-!V§
{
   import §#!+§.§"$§;
   import §;!0§.§-!'§;
   import flash.display.MovieClip;
   
   public class §@A§ extends §@§
   {
       
      
      public var §1Z§:int;
      
      public var §[!&§:int;
      
      public var §17§:int;
      
      public var §;M§:int;
      
      public var §;!W§:Number;
      
      public var §28§:Number;
      
      public var §@!E§:Number;
      
      public var §>!B§:Number;
      
      public var §#!E§:Number;
      
      public function §@A§(param1:XML, param2:§@§, param3:§"$§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §8!R§ = true;
      }
      
      public function §,!$§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§17§ = param6;
         this.§;M§ = param1 * this.§17§;
         this.§#!E§ = param7;
         this.§@!E§ = param2;
         this.§>!B§ = param3;
         this.§;!W§ = param4;
         this.§28§ = param5;
         if(false)
         {
            this.§[!&§ = Math.max(1,Math.ceil(§@!^§.length / this.§;M§));
         }
         else
         {
            this.§[!&§ = 1;
            if(§@!^§.length > this.§;M§)
            {
               this.§[!&§ += Math.ceil((§@!^§.length - this.§;M§) / (this.§17§ * this.§#!E§));
            }
         }
         this.§'!D§(0);
      }
      
      public function §'!D§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§[!&§)
         {
            param1 = this.§[!&§ - 1;
         }
         this.§1Z§ = param1;
         var _loc2_:int = this.§1Z§ * this.§#!E§ * this.§17§;
         var _loc3_:int = _loc2_ + this.§;M§;
         var _loc4_:int = 0;
         while(_loc4_ < §@!^§.length)
         {
            (§@!^§[_loc4_] as §-!'§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§@!E§ - this.§1Z§ * this.§;!W§;
         y = this.§>!B§ - this.§1Z§ * this.§28§;
      }
   }
}
