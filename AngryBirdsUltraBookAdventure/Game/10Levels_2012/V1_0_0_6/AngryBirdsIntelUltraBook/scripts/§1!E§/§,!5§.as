package §1!E§
{
   import §>7§.§&! §;
   import §[!+§.§4`§;
   import flash.display.MovieClip;
   
   public class §,!5§ extends §#?§
   {
       
      
      public var §2!D§:int;
      
      public var §]!@§:int;
      
      public var §^!B§:int;
      
      public var §`9§:int;
      
      public var §@P§:Number;
      
      public var §;^§:Number;
      
      public var §,x§:Number;
      
      public var §<!1§:Number;
      
      public var §%!q§:Number;
      
      public function §,!5§(param1:XML, param2:§#?§, param3:§4`§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §`u§ = true;
      }
      
      public function §<q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§^!B§ = param6;
         this.§`9§ = param1 * this.§^!B§;
         this.§%!q§ = param7;
         this.§,x§ = param2;
         this.§<!1§ = param3;
         this.§@P§ = param4;
         this.§;^§ = param5;
         if(false)
         {
            this.§]!@§ = Math.max(1,Math.ceil(§6!§.length / this.§`9§));
         }
         else
         {
            this.§]!@§ = 1;
            if(§6!§.length > this.§`9§)
            {
               this.§]!@§ += Math.ceil((§6!§.length - this.§`9§) / (this.§^!B§ * this.§%!q§));
            }
         }
         this.§8!P§(0);
      }
      
      public function §8!P§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§]!@§)
         {
            param1 = this.§]!@§ - 1;
         }
         this.§2!D§ = param1;
         var _loc2_:int = this.§2!D§ * this.§%!q§ * this.§^!B§;
         var _loc3_:int = _loc2_ + this.§`9§;
         var _loc4_:int = 0;
         while(_loc4_ < §6!§.length)
         {
            (§6!§[_loc4_] as §&! §).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§,x§ - this.§2!D§ * this.§@P§;
         y = this.§<!1§ - this.§2!D§ * this.§;^§;
      }
   }
}
