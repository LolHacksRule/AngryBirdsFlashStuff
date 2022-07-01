package §>P§
{
   import §<!0§.§ !B§;
   import §^6§.§;!j§;
   import flash.display.MovieClip;
   
   public class §2"6§ extends §]"4§
   {
       
      
      public var §0!h§:int;
      
      public var §9"2§:int;
      
      public var §4,§:int;
      
      public var §continue§:int;
      
      public var §`""§:Number;
      
      public var §]a§:Number;
      
      public var §=!V§:Number;
      
      public var §3!Z§:Number;
      
      public var §8!=§:Number;
      
      public function §2"6§(param1:XML, param2:§]"4§, param3:§;!j§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §[!§ = true;
      }
      
      public function §["5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§4,§ = param6;
         this.§continue§ = param1 * this.§4,§;
         this.§8!=§ = param7;
         this.§=!V§ = param2;
         this.§3!Z§ = param3;
         this.§`""§ = param4;
         this.§]a§ = param5;
         if(false)
         {
            this.§9"2§ = Math.max(1,Math.ceil(§ !"§.length / this.§continue§));
         }
         else
         {
            this.§9"2§ = 1;
            if(§ !"§.length > this.§continue§)
            {
               this.§9"2§ += Math.ceil((§ !"§.length - this.§continue§) / (this.§4,§ * this.§8!=§));
            }
         }
         this.§>!a§(0);
      }
      
      public function §>!a§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§9"2§)
         {
            param1 = this.§9"2§ - 1;
         }
         this.§0!h§ = param1;
         var _loc2_:int = this.§0!h§ * this.§8!=§ * this.§4,§;
         var _loc3_:int = _loc2_ + this.§continue§;
         var _loc4_:int = 0;
         while(_loc4_ < § !"§.length)
         {
            (§ !"§[_loc4_] as § !B§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§=!V§ - this.§0!h§ * this.§`""§;
         y = this.§3!Z§ - this.§0!h§ * this.§]a§;
      }
   }
}
