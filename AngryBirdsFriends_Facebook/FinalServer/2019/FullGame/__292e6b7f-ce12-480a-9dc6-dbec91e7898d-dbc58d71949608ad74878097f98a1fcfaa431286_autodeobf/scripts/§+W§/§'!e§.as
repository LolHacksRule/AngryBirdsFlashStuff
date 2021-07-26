package §+W§
{
   public class §'!e§ extends §;"'§
   {
       
      
      protected var §@v§:Number = -1;
      
      public function §'!e§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§@"<§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§@"<§ = null;
         var _loc1_:int = §?#w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §?#w§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §;$+§ || _loc2_.y <= -this.§;"d§)
            {
               §&"h§.removeChild(_loc2_);
               §?#w§.splice(§?#w§.indexOf(_loc2_),1);
               §%#V§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §1!,§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§;"d§ && _loc3_ < §;$+§ && !§!"<§(_loc1_))
            {
               _loc4_ = §0"6§();
               §&"h§.addChild(_loc4_);
               _loc4_.data = §1!,§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §?#w§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §;"d§() : Number
      {
         var _loc1_:§@"<§ = null;
         if(this.§@v§ == -1)
         {
            _loc1_ = §0"6§();
            this.§@v§ = _loc1_.height;
            §%#V§(_loc1_);
         }
         return this.§@v§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §["u§ = Math.floor(§;$+§ / (this.§;"d§ + §;W§));
      }
      
      override protected function calculateMargin() : void
      {
         §3#e§ = Math.min((§;$+§ - §]"o§ * this.§;"d§) / §]"o§,§9"O§);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc2_:§@"<§ = null;
         §;$+§ = §&"h§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §]"o§ = Math.min(§["u§,§1!,§.length);
         §3#e§ = Math.min((§;$+§ - §]"o§ * this.§;"d§) / §]"o§,§9"O§);
         while(§?#w§.length > §["u§)
         {
            _loc2_ = §?#w§.pop();
            §&"h§.removeChild(_loc2_);
            §%#V§(_loc2_);
         }
         §-"u§(0);
         §&#`§ = §="g§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§3#e§ / 2 + (param1 + §&#`§) * (this.§;"d§ + §3#e§));
      }
   }
}
