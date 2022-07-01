package §#b§
{
   public class §!!8§ extends §0N§
   {
       
      
      protected var §9;§:Number = -1;
      
      public function §!!8§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§[9§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§[9§ = null;
         var _loc1_:int = §!c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!c§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §]!2§ || _loc2_.y <= -this.§2"6§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §9"-§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§2"6§ && _loc3_ < §]!2§ && !§9z§(_loc1_))
            {
               _loc4_ = §9w§();
               § C§.addChild(_loc4_);
               setRendererData(_loc4_,§9"-§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §!c§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §2"6§() : Number
      {
         var _loc1_:§[9§ = null;
         if(this.§9;§ == -1)
         {
            _loc1_ = §9w§();
            this.§9;§ = _loc1_.height;
            § !l§(_loc1_);
         }
         return this.§9;§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §8L§ = Math.floor(§]!2§ / (this.§2"6§ + §35§));
      }
      
      override protected function calculateMargin() : void
      {
         static = Math.min((§]!2§ - §="!§ * this.§2"6§) / §="!§,§]!l§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§[9§ = null;
         §]!2§ = § C§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §="!§ = Math.min(§8L§,§9"-§.length);
         static = Math.min((§]!2§ - §="!§ * this.§2"6§) / §="!§,§]!l§);
         while(§!c§.length > §8L§)
         {
            _loc2_ = §!c§.pop();
            § C§.removeChild(_loc2_);
            § !l§(_loc2_);
         }
         §,>§(0);
         §^-§ = §0!§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §,Y§ = § C§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(static / 2 + (param1 + §^-§) * (this.§2"6§ + static));
      }
   }
}
