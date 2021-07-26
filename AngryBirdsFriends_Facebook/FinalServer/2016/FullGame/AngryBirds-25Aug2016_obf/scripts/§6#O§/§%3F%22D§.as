package §6#O§
{
   public class §?"D§ extends §%"`§
   {
       
      
      protected var §^!9§:Number = -1;
      
      public function §?"D§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§3?§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§3?§ = null;
         var _loc1_:int = §+##§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+##§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §%"e§ || _loc2_.y <= -this.§ $8§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §+!&§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§ $8§ && _loc3_ < §%"e§ && !§27§(_loc1_))
            {
               _loc4_ = §5=§();
               §]Y§.addChild(_loc4_);
               §[#%§(_loc4_,§+!&§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §+##§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get § $8§() : Number
      {
         var _loc1_:§3?§ = null;
         if(this.§^!9§ == -1)
         {
            _loc1_ = §5=§();
            this.§^!9§ = _loc1_.height;
            §4;§(_loc1_);
         }
         return this.§^!9§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §41§ = Math.floor(§%"e§ / (this.§ $8§ + §3!u§));
      }
      
      override protected function calculateMargin() : void
      {
         §7!=§ = Math.min((§%"e§ - §34§ * this.§ $8§) / §34§,§&"c§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§3?§ = null;
         §%"e§ = §]Y§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §34§ = Math.min(§41§,§+!&§.length);
         §7!=§ = Math.min((§%"e§ - §34§ * this.§ $8§) / §34§,§&"c§);
         while(§+##§.length > §41§)
         {
            _loc2_ = §+##§.pop();
            §]Y§.removeChild(_loc2_);
            §4;§(_loc2_);
         }
         §]$6§(0);
         §!"1§ = §&"_§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §3#l§ = §]Y§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§7!=§ / 2 + (param1 + §!"1§) * (this.§ $8§ + §7!=§));
      }
   }
}
