package §2!o§
{
   public class §?r§ extends §-"%§
   {
       
      
      protected var §?!w§:Number = -1;
      
      public function §?r§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§2"3§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§2"3§ = null;
         var _loc1_:int = §5C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5C§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §,9§ || _loc2_.y <= -this.§#!G§)
            {
               §?!T§.removeChild(_loc2_);
               §5C§.splice(§5C§.indexOf(_loc2_),1);
               §&!N§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §+]§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§#!G§ && _loc3_ < §,9§ && !§2X§(_loc1_))
            {
               _loc4_ = §5!v§();
               §?!T§.addChild(_loc4_);
               _loc4_.data = §+]§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §5C§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §#!G§() : Number
      {
         var _loc1_:§2"3§ = null;
         if(this.§?!w§ == -1)
         {
            _loc1_ = §5!v§();
            this.§?!w§ = _loc1_.height;
            §&!N§(_loc1_);
         }
         return this.§?!w§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §<M§ = Math.floor(§,9§ / (this.§#!G§ + §="-§));
      }
      
      override protected function calculateMargin() : void
      {
         §1^§ = Math.min((§,9§ - §7"A§ * this.§#!G§) / §7"A§,§const§);
      }
      
      public function §""5§(param1:Number) : void
      {
         var _loc2_:§2"3§ = null;
         §,9§ = §?!T§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §7"A§ = Math.min(§<M§,§+]§.length);
         §1^§ = Math.min((§,9§ - §7"A§ * this.§#!G§) / §7"A§,§const§);
         while(§5C§.length > §<M§)
         {
            _loc2_ = §5C§.pop();
            §?!T§.removeChild(_loc2_);
            §&!N§(_loc2_);
         }
         §@+§(0);
         §&"P§ = §#w§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§1^§ / 2 + (param1 + §&"P§) * (this.§#!G§ + §1^§));
      }
   }
}
