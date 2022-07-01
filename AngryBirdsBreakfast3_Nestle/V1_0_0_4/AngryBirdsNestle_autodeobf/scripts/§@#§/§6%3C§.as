package §@#§
{
   import §02§.§`%§;
   import §[!b§.§2!O§;
   import flash.display.MovieClip;
   
   public class §6<§ extends §9!'§
   {
       
      
      public var §;p§:int;
      
      public var §;!#§:int;
      
      public var §!"-§:int;
      
      public var §5H§:int;
      
      public var §8"#§:Number;
      
      public var §]!2§:Number;
      
      public var §[!V§:Number;
      
      public var §0"0§:Number;
      
      public var §0! §:Number;
      
      public function §6<§(param1:XML, param2:§9!'§, param3:§`%§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §>f§ = true;
      }
      
      public function §&"-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!"-§ = param6;
         this.§5H§ = param1 * this.§!"-§;
         this.§0! § = param7;
         this.§[!V§ = param2;
         this.§0"0§ = param3;
         this.§8"#§ = param4;
         this.§]!2§ = param5;
         if(false)
         {
            this.§;!#§ = Math.max(1,Math.ceil(§3H§.length / this.§5H§));
         }
         else
         {
            this.§;!#§ = 1;
            if(§3H§.length > this.§5H§)
            {
               this.§;!#§ += Math.ceil((§3H§.length - this.§5H§) / (this.§!"-§ * this.§0! §));
            }
         }
         this.§"!h§(0);
      }
      
      public function §"!h§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§;!#§)
         {
            param1 = this.§;!#§ - 1;
         }
         this.§;p§ = param1;
         var _loc2_:int = this.§;p§ * this.§0! § * this.§!"-§;
         var _loc3_:int = _loc2_ + this.§5H§;
         var _loc4_:int = 0;
         while(_loc4_ < §3H§.length)
         {
            (§3H§[_loc4_] as §2!O§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§[!V§ - this.§;p§ * this.§8"#§;
         y = this.§0"0§ - this.§;p§ * this.§]!2§;
      }
   }
}
