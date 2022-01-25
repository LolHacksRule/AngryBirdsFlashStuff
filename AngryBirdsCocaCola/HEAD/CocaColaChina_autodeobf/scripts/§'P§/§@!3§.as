package §'P§
{
   import §7]§.§'T§;
   import flash.display.MovieClip;
   
   public class §@!3§ extends §`;§
   {
       
      
      public var §#c§:int;
      
      public var §4!#§:int;
      
      public var §;!<§:int;
      
      public var §]B§:int;
      
      public var get:Number;
      
      public var §%!?§:Number;
      
      public var §7%§:Number;
      
      public var §"w§:Number;
      
      public var §>c§:Number;
      
      public function §@!3§(param1:XML, param2:§`;§, param3:§^R§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         § !N§ = true;
      }
      
      public function §[4§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§;!<§ = param6;
         this.§]B§ = param1 * this.§;!<§;
         this.§>c§ = param7;
         this.§7%§ = param2;
         this.§"w§ = param3;
         this.get = param4;
         this.§%!?§ = param5;
         if(false)
         {
            this.§4!#§ = Math.max(1,Math.ceil(§1!M§.length / this.§]B§));
         }
         else
         {
            this.§4!#§ = 1;
            if(§1!M§.length > this.§]B§)
            {
               this.§4!#§ += Math.ceil((§1!M§.length - this.§]B§) / (this.§;!<§ * this.§>c§));
            }
         }
         this.§3^§(0);
      }
      
      public function §3^§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§4!#§)
         {
            param1 = this.§4!#§ - 1;
         }
         this.§#c§ = param1;
         var _loc2_:int = this.§#c§ * this.§>c§ * this.§;!<§;
         var _loc3_:int = _loc2_ + this.§]B§;
         var _loc4_:int = 0;
         while(_loc4_ < §1!M§.length)
         {
            (§1!M§[_loc4_] as §'T§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§7%§ - this.§#c§ * this.get;
         y = this.§"w§ - this.§#c§ * this.§%!?§;
      }
   }
}
