package §'!N§
{
   import §8P§.§&-§;
   import §<u§.§]!Q§;
   import flash.display.MovieClip;
   
   public class §#v§ extends §2O§
   {
       
      
      public var §2!T§:int;
      
      public var §@"§:int;
      
      public var §!!`§:int;
      
      public var §!!"§:int;
      
      public var §-!S§:Number;
      
      public var §@3§:Number;
      
      public var §9G§:Number;
      
      public var §-!c§:Number;
      
      public var §&J§:Number;
      
      public function §#v§(param1:XML, param2:§2O§, param3:§]!Q§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §3!_§ = true;
      }
      
      public function §;!H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§!!`§ = param6;
         this.§!!"§ = param1 * this.§!!`§;
         this.§&J§ = param7;
         this.§9G§ = param2;
         this.§-!c§ = param3;
         this.§-!S§ = param4;
         this.§@3§ = param5;
         if(false)
         {
            this.§@"§ = Math.max(1,Math.ceil(§],§.length / this.§!!"§));
         }
         else
         {
            this.§@"§ = 1;
            if(§],§.length > this.§!!"§)
            {
               this.§@"§ += Math.ceil((§],§.length - this.§!!"§) / (this.§!!`§ * this.§&J§));
            }
         }
         this.§%<§(0);
      }
      
      public function §%<§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§@"§)
         {
            param1 = this.§@"§ - 1;
         }
         this.§2!T§ = param1;
         var _loc2_:int = this.§2!T§ * this.§&J§ * this.§!!`§;
         var _loc3_:int = _loc2_ + this.§!!"§;
         var _loc4_:int = 0;
         while(_loc4_ < §],§.length)
         {
            (§],§[_loc4_] as §&-§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9G§ - this.§2!T§ * this.§-!S§;
         y = this.§-!c§ - this.§2!T§ * this.§@3§;
      }
   }
}
