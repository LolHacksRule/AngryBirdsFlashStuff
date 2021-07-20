package §^@§
{
   import §1;§.§!!1§;
   import §1h§.§#H§;
   import flash.display.MovieClip;
   
   public class §#-§ extends §2q§
   {
       
      
      public var §^y§:int;
      
      public var §!#§:int;
      
      public var §5!H§:int;
      
      public var §9=§:int;
      
      public var §]!1§:Number;
      
      public var §"'§:Number;
      
      public var §&X§:Number;
      
      public var §9;§:Number;
      
      public var §"W§:Number;
      
      public function §#-§(param1:XML, param2:§2q§, param3:§!!1§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §5`§ = true;
      }
      
      public function §7b§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§5!H§ = param6;
         this.§9=§ = param1 * this.§5!H§;
         this.§"W§ = param7;
         this.§&X§ = param2;
         this.§9;§ = param3;
         this.§]!1§ = param4;
         this.§"'§ = param5;
         this.§!#§ = 1;
         if(§7!H§.length > this.§9=§)
         {
            this.§!#§ += Math.ceil((§7!H§.length - this.§9=§) / (this.§5!H§ * this.§"W§));
         }
         this.§6!=§(0);
      }
      
      public function §6!=§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§!#§)
         {
            param1 = this.§!#§ - 1;
         }
         this.§^y§ = param1;
         var _loc2_:int = this.§^y§ * this.§"W§ * this.§5!H§;
         var _loc3_:int = _loc2_ + this.§9=§;
         var _loc4_:int = 0;
         while(_loc4_ < §7!H§.length)
         {
            (§7!H§[_loc4_] as §#H§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§&X§ - this.§^y§ * this.§]!1§;
         y = this.§9;§ - this.§^y§ * this.§"'§;
      }
   }
}
