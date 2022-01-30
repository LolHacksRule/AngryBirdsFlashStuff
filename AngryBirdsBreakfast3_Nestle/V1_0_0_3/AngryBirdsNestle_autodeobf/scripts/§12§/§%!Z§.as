package §12§
{
   public class §%!Z§ extends §[L§
   {
       
      
      protected var §%$§:Number = -1;
      
      public function §%!Z§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§-!U§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§-!U§ = null;
         var _loc1_:int = §'W§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §'W§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §7"+§ || _loc2_.y <= -this.§`9§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §@r§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§`9§ && _loc3_ < §7"+§ && !§@!@§(_loc1_))
            {
               _loc4_ = §2!u§();
               §<q§.addChild(_loc4_);
               setRendererData(_loc4_,§@r§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §'W§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §`9§() : Number
      {
         var _loc1_:§-!U§ = null;
         if(this.§%$§ == -1)
         {
            _loc1_ = §2!u§();
            this.§%$§ = _loc1_.height;
            §3!1§(_loc1_);
         }
         return this.§%$§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §;o§ = Math.floor(§7"+§ / (this.§`9§ + §>!;§));
      }
      
      override protected function calculateMargin() : void
      {
         §?!v§ = Math.min((§7"+§ - §+N§ * this.§`9§) / §+N§,§>!+§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§-!U§ = null;
         §7"+§ = §<q§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §+N§ = Math.min(§;o§,§@r§.length);
         §?!v§ = Math.min((§7"+§ - §+N§ * this.§`9§) / §+N§,§>!+§);
         while(§'W§.length > §;o§)
         {
            _loc2_ = §'W§.pop();
            §<q§.removeChild(_loc2_);
            §3!1§(_loc2_);
         }
         §+"5§(0);
         §[!A§ = §3"+§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §`!o§ = §<q§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§?!v§ / 2 + (param1 + §[!A§) * (this.§`9§ + §?!v§));
      }
   }
}
