package §>M§
{
   import §'!D§.§?!h§;
   import §>P§.§5!§;
   import flash.display.MovieClip;
   
   public class §0!O§ extends §<6§
   {
       
      
      public var §0e§:int;
      
      public var §52§:int;
      
      public var §6B§:int;
      
      public var §2j§:int;
      
      public var §'! §:Number;
      
      public var §8D§:Number;
      
      public var §@!T§:Number;
      
      public var §8i§:Number;
      
      public var §-e§:Number;
      
      public function §0!O§(param1:XML, param2:§<6§, param3:§5!§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6P§ = true;
      }
      
      public function §-!J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6B§ = param6;
         this.§2j§ = param1 * this.§6B§;
         this.§-e§ = param7;
         this.§@!T§ = param2;
         this.§8i§ = param3;
         this.§'! § = param4;
         this.§8D§ = param5;
         if(false)
         {
            this.§52§ = Math.max(1,Math.ceil(§[!L§.length / this.§2j§));
         }
         else
         {
            this.§52§ = 1;
            if(§[!L§.length > this.§2j§)
            {
               this.§52§ += Math.ceil((§[!L§.length - this.§2j§) / (this.§6B§ * this.§-e§));
            }
         }
         this.§"R§(0);
      }
      
      public function §"R§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§52§)
         {
            param1 = this.§52§ - 1;
         }
         this.§0e§ = param1;
         var _loc2_:int = this.§0e§ * this.§-e§ * this.§6B§;
         var _loc3_:int = _loc2_ + this.§2j§;
         var _loc4_:int = 0;
         while(_loc4_ < §[!L§.length)
         {
            (§[!L§[_loc4_] as §?!h§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§@!T§ - this.§0e§ * this.§'! §;
         y = this.§8i§ - this.§0e§ * this.§8D§;
      }
   }
}
