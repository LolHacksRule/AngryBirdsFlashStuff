package §=8§
{
   import §'!N§.§"f§;
   import §]!O§.§+[§;
   import flash.display.MovieClip;
   
   public class §-!I§ extends §'^§
   {
       
      
      public var §@p§:int;
      
      public var §%!4§:int;
      
      public var §6!<§:int;
      
      public var §#!N§:int;
      
      public var §%O§:Number;
      
      public var §[l§:Number;
      
      public var §'!9§:Number;
      
      public var §7]§:Number;
      
      public var §>0§:Number;
      
      public function §-!I§(param1:XML, param2:§'^§, param3:§+[§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §%!0§ = true;
      }
      
      public function §]Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§6!<§ = param6;
         this.§#!N§ = param1 * this.§6!<§;
         this.§>0§ = param7;
         this.§'!9§ = param2;
         this.§7]§ = param3;
         this.§%O§ = param4;
         this.§[l§ = param5;
         if(false)
         {
            this.§%!4§ = Math.max(1,Math.ceil(§4C§.length / this.§#!N§));
         }
         else
         {
            this.§%!4§ = 1;
            if(§4C§.length > this.§#!N§)
            {
               this.§%!4§ += Math.ceil((§4C§.length - this.§#!N§) / (this.§6!<§ * this.§>0§));
            }
         }
         this.§;!D§(0);
      }
      
      public function §;!D§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§%!4§)
         {
            param1 = this.§%!4§ - 1;
         }
         this.§@p§ = param1;
         var _loc2_:int = this.§@p§ * this.§>0§ * this.§6!<§;
         var _loc3_:int = _loc2_ + this.§#!N§;
         var _loc4_:int = 0;
         while(_loc4_ < §4C§.length)
         {
            (§4C§[_loc4_] as §"f§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§'!9§ - this.§@p§ * this.§%O§;
         y = this.§7]§ - this.§@p§ * this.§[l§;
      }
   }
}
