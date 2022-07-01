package §2u§
{
   import §'"!§.§<!7§;
   import §1`§.§9%§;
   import flash.display.MovieClip;
   
   public class §<Y§ extends §,6§
   {
       
      
      public var §'!6§:int;
      
      public var §^U§:int;
      
      public var §<!-§:int;
      
      public var §3!R§:int;
      
      public var §`!v§:Number;
      
      public var §^!>§:Number;
      
      public var §8"4§:Number;
      
      public var §0-§:Number;
      
      public var §,!V§:Number;
      
      public function §<Y§(param1:XML, param2:§,6§, param3:§9%§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6!>§ = true;
      }
      
      public function §<"-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§<!-§ = param6;
         this.§3!R§ = param1 * this.§<!-§;
         this.§,!V§ = param7;
         this.§8"4§ = param2;
         this.§0-§ = param3;
         this.§`!v§ = param4;
         this.§^!>§ = param5;
         if(false)
         {
            this.§^U§ = Math.max(1,Math.ceil(§,_§.length / this.§3!R§));
         }
         else
         {
            this.§^U§ = 1;
            if(§,_§.length > this.§3!R§)
            {
               this.§^U§ += Math.ceil((§,_§.length - this.§3!R§) / (this.§<!-§ * this.§,!V§));
            }
         }
         this.§""0§(0);
      }
      
      public function §""0§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§^U§)
         {
            param1 = this.§^U§ - 1;
         }
         this.§'!6§ = param1;
         var _loc2_:int = this.§'!6§ * this.§,!V§ * this.§<!-§;
         var _loc3_:int = _loc2_ + this.§3!R§;
         var _loc4_:int = 0;
         while(_loc4_ < §,_§.length)
         {
            (§,_§[_loc4_] as §<!7§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§8"4§ - this.§'!6§ * this.§`!v§;
         y = this.§0-§ - this.§'!6§ * this.§^!>§;
      }
   }
}
