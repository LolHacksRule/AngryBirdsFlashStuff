package §-!u§
{
   public class §@!c§ extends §&"-§
   {
       
      
      protected var §5b§:Number = -1;
      
      public function §@!c§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§2u§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§2u§ = null;
         var _loc1_:int = §+7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+7§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §,2§ || _loc2_.y <= -this.§5" §)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §&"$§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§5" § && _loc3_ < §,2§ && !§3!L§(_loc1_))
            {
               _loc4_ = §"!n§();
               §#e§.addChild(_loc4_);
               setRendererData(_loc4_,§&"$§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §+7§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §5" §() : Number
      {
         var _loc1_:§2u§ = null;
         if(this.§5b§ == -1)
         {
            _loc1_ = §"!n§();
            this.§5b§ = _loc1_.height;
            §@!e§(_loc1_);
         }
         return this.§5b§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §0!r§ = Math.floor(§,2§ / (this.§5" § + §'!=§));
      }
      
      override protected function calculateMargin() : void
      {
         §<N§ = Math.min((§,2§ - §'",§ * this.§5" §) / §'",§,§!!x§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§2u§ = null;
         §,2§ = §#e§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §'",§ = Math.min(§0!r§,§&"$§.length);
         §<N§ = Math.min((§,2§ - §'",§ * this.§5" §) / §'",§,§!!x§);
         while(§+7§.length > §0!r§)
         {
            _loc2_ = §+7§.pop();
            §#e§.removeChild(_loc2_);
            §@!e§(_loc2_);
         }
         §8!`§(0);
         §'!"§ = §8! §;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §^!,§ = §#e§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§<N§ / 2 + (param1 + §'!"§) * (this.§5" § + §<N§));
      }
   }
}
