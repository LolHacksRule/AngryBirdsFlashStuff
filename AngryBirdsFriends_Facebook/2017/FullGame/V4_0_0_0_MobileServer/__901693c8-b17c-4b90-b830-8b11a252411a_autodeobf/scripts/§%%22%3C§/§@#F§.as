package §%"<§
{
   public class §@#F§ extends §?$8§
   {
       
      
      protected var §2P§:Number = -1;
      
      public function §@#F§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§9@§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§9@§ = null;
         var _loc1_:int = §]B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]B§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §"#S§ || _loc2_.y <= -this.§,#9§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §]!$§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§,#9§ && _loc3_ < §"#S§ && !§"D§(_loc1_))
            {
               _loc4_ = §;!Z§();
               §'$&§.addChild(_loc4_);
               §-!,§(_loc4_,§]!$§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §]B§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §,#9§() : Number
      {
         var _loc1_:§9@§ = null;
         if(this.§2P§ == -1)
         {
            _loc1_ = §;!Z§();
            this.§2P§ = _loc1_.height;
            §!"T§(_loc1_);
         }
         return this.§2P§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §5!0§ = Math.floor(§"#S§ / (this.§,#9§ + §0!R§));
      }
      
      override protected function calculateMargin() : void
      {
         §`"t§ = Math.min((§"#S§ - §@$"§ * this.§,#9§) / §@$"§,§46§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§9@§ = null;
         §"#S§ = §'$&§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §@$"§ = Math.min(§5!0§,§]!$§.length);
         §`"t§ = Math.min((§"#S§ - §@$"§ * this.§,#9§) / §@$"§,§46§);
         while(§]B§.length > §5!0§)
         {
            _loc2_ = §]B§.pop();
            §'$&§.removeChild(_loc2_);
            §!"T§(_loc2_);
         }
         §=$9§(0);
         §@!a§ = §+!g§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §0O§ = §'$&§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§`"t§ / 2 + (param1 + §@!a§) * (this.§,#9§ + §`"t§));
      }
   }
}
