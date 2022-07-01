package §for §
{
   public class §extends§ extends §#!"§
   {
       
      
      protected var §>M§:Number = -1;
      
      public function §extends§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§<!]§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§<!]§ = null;
         var _loc1_:int = §'Q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §'Q§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §,!i§ || _loc2_.y <= -this.§-N§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §5!d§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§-N§ && _loc3_ < §,!i§ && !§"!c§(_loc1_))
            {
               _loc4_ = §7!0§();
               §]!c§.addChild(_loc4_);
               setRendererData(_loc4_,§5!d§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §'Q§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §-N§() : Number
      {
         var _loc1_:§<!]§ = null;
         if(this.§>M§ == -1)
         {
            _loc1_ = §7!0§();
            this.§>M§ = _loc1_.height;
            §%!J§(_loc1_);
         }
         return this.§>M§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §2&§ = Math.floor(§,!i§ / (this.§-N§ + §3!n§));
      }
      
      override protected function calculateMargin() : void
      {
         §;^§ = Math.min((§,!i§ - §8!y§ * this.§-N§) / §8!y§,§`!m§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§<!]§ = null;
         §,!i§ = §]!c§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §8!y§ = Math.min(§2&§,§5!d§.length);
         §;^§ = Math.min((§,!i§ - §8!y§ * this.§-N§) / §8!y§,§`!m§);
         while(§'Q§.length > §2&§)
         {
            _loc2_ = §'Q§.pop();
            §]!c§.removeChild(_loc2_);
            §%!J§(_loc2_);
         }
         § r§(0);
         §'!q§ = §import§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §@!1§ = §]!c§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§;^§ / 2 + (param1 + §'!q§) * (this.§-N§ + §;^§));
      }
   }
}
