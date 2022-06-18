package §3!M§
{
   import §!!S§.§'+§;
   import §`B§.§-Z§;
   import flash.display.MovieClip;
   
   public class §#A§ extends §7^§
   {
       
      
      public var § H§:int;
      
      public var §0#§:int;
      
      public var § !@§:int;
      
      public var §=?§:int;
      
      public var §,!@§:Number;
      
      public var §#!$§:Number;
      
      public var §<G§:Number;
      
      public var §3!S§:Number;
      
      public var §4!3§:Number;
      
      public function §#A§(param1:XML, param2:§7^§, param3:§-Z§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §"!N§ = true;
      }
      
      public function §^!E§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§ !@§ = param6;
         this.§=?§ = param1 * this.§ !@§;
         this.§4!3§ = param7;
         this.§<G§ = param2;
         this.§3!S§ = param3;
         this.§,!@§ = param4;
         this.§#!$§ = param5;
         if(false)
         {
            this.§0#§ = Math.max(1,Math.ceil(§]=§.length / this.§=?§));
         }
         else
         {
            this.§0#§ = 1;
            if(§]=§.length > this.§=?§)
            {
               this.§0#§ += Math.ceil((§]=§.length - this.§=?§) / (this.§ !@§ * this.§4!3§));
            }
         }
         this.§[#§(0);
      }
      
      public function §[#§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§0#§)
         {
            param1 = this.§0#§ - 1;
         }
         this.§ H§ = param1;
         var _loc2_:int = this.§ H§ * this.§4!3§ * this.§ !@§;
         var _loc3_:int = _loc2_ + this.§=?§;
         var _loc4_:int = 0;
         while(_loc4_ < §]=§.length)
         {
            (§]=§[_loc4_] as §'+§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§<G§ - this.§ H§ * this.§,!@§;
         y = this.§3!S§ - this.§ H§ * this.§#!$§;
      }
   }
}
