package §0!d§
{
   import §4!t§.§=p§;
   import §<8§.§'X§;
   import flash.display.MovieClip;
   
   public class §8!p§ extends §7!a§
   {
       
      
      public var §`!$§:int;
      
      public var §8E§:int;
      
      public var §&",§:int;
      
      public var §5" §:int;
      
      public var §`!f§:Number;
      
      public var §3"!§:Number;
      
      public var §#!X§:Number;
      
      public var §^!@§:Number;
      
      public var §]E§:Number;
      
      public function §8!p§(param1:XML, param2:§7!a§, param3:§=p§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §%",§ = true;
      }
      
      public function §`U§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§&",§ = param6;
         this.§5" § = param1 * this.§&",§;
         this.§]E§ = param7;
         this.§#!X§ = param2;
         this.§^!@§ = param3;
         this.§`!f§ = param4;
         this.§3"!§ = param5;
         if(false)
         {
            this.§8E§ = Math.max(1,Math.ceil(§`F§.length / this.§5" §));
         }
         else
         {
            this.§8E§ = 1;
            if(§`F§.length > this.§5" §)
            {
               this.§8E§ += Math.ceil((§`F§.length - this.§5" §) / (this.§&",§ * this.§]E§));
            }
         }
         this.§@!q§(0);
      }
      
      public function §@!q§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§8E§)
         {
            param1 = this.§8E§ - 1;
         }
         this.§`!$§ = param1;
         var _loc2_:int = this.§`!$§ * this.§]E§ * this.§&",§;
         var _loc3_:int = _loc2_ + this.§5" §;
         var _loc4_:int = 0;
         while(_loc4_ < §`F§.length)
         {
            (§`F§[_loc4_] as §'X§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§#!X§ - this.§`!$§ * this.§`!f§;
         y = this.§^!@§ - this.§`!$§ * this.§3"!§;
      }
   }
}
