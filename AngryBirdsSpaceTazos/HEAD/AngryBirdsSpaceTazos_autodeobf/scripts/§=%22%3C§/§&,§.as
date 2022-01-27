package §="<§
{
   import §,!M§.§ !;§;
   import §7!6§.§"!O§;
   import flash.display.MovieClip;
   
   public class §&,§ extends §,"$§
   {
       
      
      public var §=w§:int;
      
      public var §>"+§:int;
      
      public var §`0§:int;
      
      public var §5y§:int;
      
      public var §>,§:Number;
      
      public var §&5§:Number;
      
      public var §7"2§:Number;
      
      public var §4"-§:Number;
      
      public var §+G§:Number;
      
      public function §&,§(param1:XML, param2:§,"$§, param3:§ !;§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §<!1§ = true;
      }
      
      public function §2!a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§`0§ = param6;
         this.§5y§ = param1 * this.§`0§;
         this.§+G§ = param7;
         this.§7"2§ = param2;
         this.§4"-§ = param3;
         this.§>,§ = param4;
         this.§&5§ = param5;
         if(false)
         {
            this.§>"+§ = Math.max(1,Math.ceil(§,[§.length / this.§5y§));
         }
         else
         {
            this.§>"+§ = 1;
            if(§,[§.length > this.§5y§)
            {
               this.§>"+§ += Math.ceil((§,[§.length - this.§5y§) / (this.§`0§ * this.§+G§));
            }
         }
         this.§1"'§(0);
      }
      
      public function §1"'§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>"+§)
         {
            param1 = this.§>"+§ - 1;
         }
         this.§=w§ = param1;
         var _loc2_:int = this.§=w§ * this.§+G§ * this.§`0§;
         var _loc3_:int = _loc2_ + this.§5y§;
         var _loc4_:int = 0;
         while(_loc4_ < §,[§.length)
         {
            (§,[§[_loc4_] as §"!O§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§7"2§ - this.§=w§ * this.§>,§;
         y = this.§4"-§ - this.§=w§ * this.§&5§;
      }
   }
}
