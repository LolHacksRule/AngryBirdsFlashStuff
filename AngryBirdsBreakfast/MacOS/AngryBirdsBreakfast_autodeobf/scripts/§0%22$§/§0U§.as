package §0"$§
{
   import §,L§.§;[§;
   import §7!§.§2W§;
   import flash.display.MovieClip;
   
   public class §0U§ extends §"!a§
   {
       
      
      public var §!b§:int;
      
      public var §`!T§:int;
      
      public var §2!3§:int;
      
      public var §1"'§:int;
      
      public var §1X§:Number;
      
      public var § !l§:Number;
      
      public var §"!5§:Number;
      
      public var §4!D§:Number;
      
      public var §=6§:Number;
      
      public function §0U§(param1:XML, param2:§"!a§, param3:§2W§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §13§ = true;
      }
      
      public function §<!u§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§2!3§ = param6;
         this.§1"'§ = param1 * this.§2!3§;
         this.§=6§ = param7;
         this.§"!5§ = param2;
         this.§4!D§ = param3;
         this.§1X§ = param4;
         this.§ !l§ = param5;
         if(false)
         {
            this.§`!T§ = Math.max(1,Math.ceil(§<C§.length / this.§1"'§));
         }
         else
         {
            this.§`!T§ = 1;
            if(§<C§.length > this.§1"'§)
            {
               this.§`!T§ += Math.ceil((§<C§.length - this.§1"'§) / (this.§2!3§ * this.§=6§));
            }
         }
         this.§&p§(0);
      }
      
      public function §&p§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§`!T§)
         {
            param1 = this.§`!T§ - 1;
         }
         this.§!b§ = param1;
         var _loc2_:int = this.§!b§ * this.§=6§ * this.§2!3§;
         var _loc3_:int = _loc2_ + this.§1"'§;
         var _loc4_:int = 0;
         while(_loc4_ < §<C§.length)
         {
            (§<C§[_loc4_] as §;[§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§"!5§ - this.§!b§ * this.§1X§;
         y = this.§4!D§ - this.§!b§ * this.§ !l§;
      }
   }
}
