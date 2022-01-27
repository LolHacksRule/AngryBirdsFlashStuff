package §""d§
{
   import §4##§.§5!9§;
   import §^!`§.§6"!§;
   import flash.display.MovieClip;
   
   public class §!!s§ extends §,m§
   {
       
      
      public var §8"l§:int;
      
      public var §^"§:int;
      
      public var §2"j§:int;
      
      public var §@"0§:int;
      
      public var §`"1§:Number;
      
      public var §,!g§:Number;
      
      public var §]"'§:Number;
      
      public var §1"<§:Number;
      
      public var §6"L§:Number;
      
      public function §!!s§(param1:XML, param2:§,m§, param3:§6"!§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;!v§ = true;
      }
      
      public function §8!v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§2"j§ = param6;
         this.§@"0§ = param1 * this.§2"j§;
         this.§6"L§ = param7;
         this.§]"'§ = param2;
         this.§1"<§ = param3;
         this.§`"1§ = param4;
         this.§,!g§ = param5;
         if(false)
         {
            this.§^"§ = Math.max(1,Math.ceil(§+!C§.length / this.§@"0§));
         }
         else
         {
            this.§^"§ = 1;
            if(§+!C§.length > this.§@"0§)
            {
               this.§^"§ += Math.ceil((§+!C§.length - this.§@"0§) / (this.§2"j§ * this.§6"L§));
            }
         }
         this.§!"$§(0);
      }
      
      public function §!"$§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§^"§)
         {
            param1 = this.§^"§ - 1;
         }
         this.§8"l§ = param1;
         var _loc2_:int = this.§8"l§ * this.§6"L§ * this.§2"j§;
         var _loc3_:int = _loc2_ + this.§@"0§;
         var _loc4_:int = 0;
         while(_loc4_ < §+!C§.length)
         {
            (§+!C§[_loc4_] as §5!9§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§]"'§ - this.§8"l§ * this.§`"1§;
         y = this.§1"<§ - this.§8"l§ * this.§,!g§;
      }
   }
}
