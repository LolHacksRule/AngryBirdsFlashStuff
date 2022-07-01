package §+g§
{
   public class §1!i§ extends §9!?§
   {
       
      
      protected var §&!5§:Number = -1;
      
      public function §1!i§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§'!e§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§'!e§ = null;
         var _loc1_:int = §0;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §0;§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §?K§ || _loc2_.y <= -this.§7!5§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §7p§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§7!5§ && _loc3_ < §?K§ && !§"s§(_loc1_))
            {
               _loc4_ = §4!Q§();
               §%!D§.addChild(_loc4_);
               setRendererData(_loc4_,§7p§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §0;§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §7!5§() : Number
      {
         var _loc1_:§'!e§ = null;
         if(this.§&!5§ == -1)
         {
            _loc1_ = §4!Q§();
            this.§&!5§ = _loc1_.height;
            §^!r§(_loc1_);
         }
         return this.§&!5§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §8!X§ = Math.floor(§?K§ / (this.§7!5§ + §8!^§));
      }
      
      override protected function calculateMargin() : void
      {
         §0!J§ = Math.min((§?K§ - §;"$§ * this.§7!5§) / §;"$§,§21§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§'!e§ = null;
         §?K§ = §%!D§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §;"$§ = Math.min(§8!X§,§7p§.length);
         §0!J§ = Math.min((§?K§ - §;"$§ * this.§7!5§) / §;"$§,§21§);
         while(§0;§.length > §8!X§)
         {
            _loc2_ = §0;§.pop();
            §%!D§.removeChild(_loc2_);
            §^!r§(_loc2_);
         }
         §&W§(0);
         § !`§ = §7!U§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §"w§ = §%!D§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§0!J§ / 2 + (param1 + § !`§) * (this.§7!5§ + §0!J§));
      }
   }
}
