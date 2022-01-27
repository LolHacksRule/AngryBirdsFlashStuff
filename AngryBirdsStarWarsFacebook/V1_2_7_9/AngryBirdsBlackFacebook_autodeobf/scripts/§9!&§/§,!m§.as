package §9!&§
{
   public class §,!m§ extends §"W§
   {
       
      
      protected var §0!?§:Number = -1;
      
      public function §,!m§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§`-§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`-§ = null;
         var _loc1_:int = §?"O§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §?"O§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §8"[§ || _loc2_.y <= -this.§=<§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §,6§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§=<§ && _loc3_ < §8"[§ && !§@1§(_loc1_))
            {
               _loc4_ = §%^§();
               § "6§.addChild(_loc4_);
               §3"U§(_loc4_,§,6§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §?"O§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §=<§() : Number
      {
         var _loc1_:§`-§ = null;
         if(this.§0!?§ == -1)
         {
            _loc1_ = §%^§();
            this.§0!?§ = _loc1_.height;
            §0"R§(_loc1_);
         }
         return this.§0!?§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §2T§ = Math.floor(§8"[§ / (this.§=<§ + §`!+§));
      }
      
      override protected function calculateMargin() : void
      {
         §3!P§ = Math.min((§8"[§ - §1!=§ * this.§=<§) / §1!=§,§#R§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§`-§ = null;
         §8"[§ = § "6§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §1!=§ = Math.min(§2T§,§,6§.length);
         §3!P§ = Math.min((§8"[§ - §1!=§ * this.§=<§) / §1!=§,§#R§);
         while(§?"O§.length > §2T§)
         {
            _loc2_ = §?"O§.pop();
            § "6§.removeChild(_loc2_);
            §0"R§(_loc2_);
         }
         §1§(0);
         §&"4§ = §>!-§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §^!l§ = § "6§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§3!P§ / 2 + (param1 + §&"4§) * (this.§=<§ + §3!P§));
      }
   }
}
