package §=!H§
{
   import §2S§.§<!K§;
   import §9c§.§3i§;
   import flash.display.MovieClip;
   
   public class §#!$§ extends §9V§
   {
       
      
      public var §0P§:int;
      
      public var §#!O§:int;
      
      public var §;r§:int;
      
      public var §<!6§:int;
      
      public var §5f§:Number;
      
      public var §,e§:Number;
      
      public var §%]§:Number;
      
      public var §4!8§:Number;
      
      public var §@A§:Number;
      
      public function §#!$§(param1:XML, param2:§9V§, param3:§<!K§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §,n§ = true;
      }
      
      public function §]p§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§;r§ = param6;
         this.§<!6§ = param1 * this.§;r§;
         this.§@A§ = param7;
         this.§%]§ = param2;
         this.§4!8§ = param3;
         this.§5f§ = param4;
         this.§,e§ = param5;
         if(false)
         {
            this.§#!O§ = Math.max(1,Math.ceil(§=!L§.length / this.§<!6§));
         }
         else
         {
            this.§#!O§ = 1;
            if(§=!L§.length > this.§<!6§)
            {
               this.§#!O§ += Math.ceil((§=!L§.length - this.§<!6§) / (this.§;r§ * this.§@A§));
            }
         }
         this.§?!M§(0);
      }
      
      public function §?!M§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§#!O§)
         {
            param1 = this.§#!O§ - 1;
         }
         this.§0P§ = param1;
         var _loc2_:int = this.§0P§ * this.§@A§ * this.§;r§;
         var _loc3_:int = _loc2_ + this.§<!6§;
         var _loc4_:int = 0;
         while(_loc4_ < §=!L§.length)
         {
            (§=!L§[_loc4_] as §3i§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§%]§ - this.§0P§ * this.§5f§;
         y = this.§4!8§ - this.§0P§ * this.§,e§;
      }
   }
}
