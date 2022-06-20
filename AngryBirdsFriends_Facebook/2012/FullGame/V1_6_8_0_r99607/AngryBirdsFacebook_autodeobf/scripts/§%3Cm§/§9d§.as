package §<m§
{
   public class §9d§ extends §9"1§
   {
       
      
      protected var §#!?§:Number = -1;
      
      public function §9d§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§,0§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§,0§ = null;
         var _loc1_:int = §""#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §""#§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §^!p§ || _loc2_.y <= -this.§1"+§)
            {
               §3!b§.removeChild(_loc2_);
               §""#§.splice(§""#§.indexOf(_loc2_),1);
               §!%§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < § 9§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§1"+§ && _loc3_ < §^!p§ && !§%Z§(_loc1_))
            {
               _loc4_ = §#"<§();
               §3!b§.addChild(_loc4_);
               _loc4_.data = § 9§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §""#§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §1"+§() : Number
      {
         var _loc1_:§,0§ = null;
         if(this.§#!?§ == -1)
         {
            _loc1_ = §#"<§();
            this.§#!?§ = _loc1_.height;
            §!%§(_loc1_);
         }
         return this.§#!?§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §>h§ = Math.floor(§^!p§ / (this.§1"+§ + §=!8§));
      }
      
      override protected function calculateMargin() : void
      {
         §;!H§ = Math.min((§^!p§ - §0!B§ * this.§1"+§) / §0!B§,§%!N§);
      }
      
      public function §#!w§(param1:Number) : void
      {
         var _loc2_:§,0§ = null;
         §^!p§ = §3!b§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §0!B§ = Math.min(§>h§,§ 9§.length);
         §;!H§ = Math.min((§^!p§ - §0!B§ * this.§1"+§) / §0!B§,§%!N§);
         while(§""#§.length > §>h§)
         {
            _loc2_ = §""#§.pop();
            §3!b§.removeChild(_loc2_);
            §!%§(_loc2_);
         }
         §&!Y§(0);
         §0!"§ = §'"&§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§;!H§ / 2 + (param1 + §0!"§) * (this.§1"+§ + §;!H§));
      }
   }
}
