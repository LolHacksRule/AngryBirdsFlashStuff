package §[h§
{
   import §+$§.§5"§;
   import §3<§.§-2§;
   import flash.display.MovieClip;
   
   public class §#!7§ extends § !&§
   {
       
      
      public var §@=§:int;
      
      public var §6#§:int;
      
      public var §;o§:int;
      
      public var §&j§:int;
      
      public var §'y§:Number;
      
      public var §3!E§:Number;
      
      public var §[!b§:Number;
      
      public var §4!m§:Number;
      
      public var §;M§:Number;
      
      public function §#!7§(param1:XML, param2:§ !&§, param3:§-2§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §^Y§ = true;
      }
      
      public function §97§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§;o§ = param6;
         this.§&j§ = param1 * this.§;o§;
         this.§;M§ = param7;
         this.§[!b§ = param2;
         this.§4!m§ = param3;
         this.§'y§ = param4;
         this.§3!E§ = param5;
         if(false)
         {
            this.§6#§ = Math.max(1,Math.ceil(§ k§.length / this.§&j§));
         }
         else
         {
            this.§6#§ = 1;
            if(§ k§.length > this.§&j§)
            {
               this.§6#§ += Math.ceil((§ k§.length - this.§&j§) / (this.§;o§ * this.§;M§));
            }
         }
         this.§?!B§(0);
      }
      
      public function §?!B§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§6#§)
         {
            param1 = this.§6#§ - 1;
         }
         this.§@=§ = param1;
         var _loc2_:int = this.§@=§ * this.§;M§ * this.§;o§;
         var _loc3_:int = _loc2_ + this.§&j§;
         var _loc4_:int = 0;
         while(_loc4_ < § k§.length)
         {
            (§ k§[_loc4_] as §5"§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§[!b§ - this.§@=§ * this.§'y§;
         y = this.§4!m§ - this.§@=§ * this.§3!E§;
      }
   }
}
