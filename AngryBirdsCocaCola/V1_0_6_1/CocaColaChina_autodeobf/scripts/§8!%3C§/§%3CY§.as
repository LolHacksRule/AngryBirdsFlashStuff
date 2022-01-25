package §8!<§
{
   import §%3§.§7b§;
   import §7!H§.§&![§;
   import flash.display.MovieClip;
   
   public class §<Y§ extends §2W§
   {
       
      
      public var §=!-§:int;
      
      public var §2!A§:int;
      
      public var §!!<§:int;
      
      public var §3!^§:int;
      
      public var §^!7§:Number;
      
      public var §@!#§:Number;
      
      public var §+1§:Number;
      
      public var §7`§:Number;
      
      public var §?t§:Number;
      
      public function §<Y§(param1:XML, param2:§2W§, param3:§7b§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §><§ = true;
      }
      
      public function §,!P§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!!<§ = param6;
         this.§3!^§ = param1 * this.§!!<§;
         this.§?t§ = param7;
         this.§+1§ = param2;
         this.§7`§ = param3;
         this.§^!7§ = param4;
         this.§@!#§ = param5;
         if(false)
         {
            this.§2!A§ = Math.max(1,Math.ceil(§@!X§.length / this.§3!^§));
         }
         else
         {
            this.§2!A§ = 1;
            if(§@!X§.length > this.§3!^§)
            {
               this.§2!A§ += Math.ceil((§@!X§.length - this.§3!^§) / (this.§!!<§ * this.§?t§));
            }
         }
         this.§%[§(0);
      }
      
      public function §%[§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§2!A§)
         {
            param1 = this.§2!A§ - 1;
         }
         this.§=!-§ = param1;
         var _loc2_:int = this.§=!-§ * this.§?t§ * this.§!!<§;
         var _loc3_:int = _loc2_ + this.§3!^§;
         var _loc4_:int = 0;
         while(_loc4_ < §@!X§.length)
         {
            (§@!X§[_loc4_] as §&![§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+1§ - this.§=!-§ * this.§^!7§;
         y = this.§7`§ - this.§=!-§ * this.§@!#§;
      }
   }
}
