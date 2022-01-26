package §]!&§
{
   import §]!5§.§1k§;
   import §]!Y§.§5W§;
   import flash.display.MovieClip;
   
   public class §7z§ extends §]!K§
   {
       
      
      public var §'x§:int;
      
      public var §5C§:int;
      
      public var §!>§:int;
      
      public var §=4§:int;
      
      public var §+M§:Number;
      
      public var §+-§:Number;
      
      public var §>!Z§:Number;
      
      public var §=z§:Number;
      
      public var §6!W§:Number;
      
      public function §7z§(param1:XML, param2:§]!K§, param3:§5W§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §"!L§ = true;
      }
      
      public function §0j§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!>§ = param6;
         this.§=4§ = param1 * this.§!>§;
         this.§6!W§ = param7;
         this.§>!Z§ = param2;
         this.§=z§ = param3;
         this.§+M§ = param4;
         this.§+-§ = param5;
         if(false)
         {
            this.§5C§ = Math.max(1,Math.ceil(§0!R§.length / this.§=4§));
         }
         else
         {
            this.§5C§ = 1;
            if(§0!R§.length > this.§=4§)
            {
               this.§5C§ += Math.ceil((§0!R§.length - this.§=4§) / (this.§!>§ * this.§6!W§));
            }
         }
         this.§'3§(0);
      }
      
      public function §'3§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§5C§)
         {
            param1 = this.§5C§ - 1;
         }
         this.§'x§ = param1;
         var _loc2_:int = this.§'x§ * this.§6!W§ * this.§!>§;
         var _loc3_:int = _loc2_ + this.§=4§;
         var _loc4_:int = 0;
         while(_loc4_ < §0!R§.length)
         {
            (§0!R§[_loc4_] as §1k§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§>!Z§ - this.§'x§ * this.§+M§;
         y = this.§=z§ - this.§'x§ * this.§+-§;
      }
   }
}
