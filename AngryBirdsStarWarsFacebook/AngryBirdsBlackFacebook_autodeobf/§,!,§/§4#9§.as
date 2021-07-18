package §,!,§
{
   public class §4#9§ extends §1b§
   {
       
      
      protected var §##F§:Number = -1;
      
      public function §4#9§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§0!d§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§0!d§ = null;
         var _loc1_:int = §!#S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!#S§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §-[§ || _loc2_.y <= -this.§'D§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §%4§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§'D§ && _loc3_ < §-[§ && !§'!_§(_loc1_))
            {
               _loc4_ = §`m§();
               §%G§.addChild(_loc4_);
               §6%§(_loc4_,§%4§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §!#S§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §'D§() : Number
      {
         var _loc1_:§0!d§ = null;
         if(this.§##F§ == -1)
         {
            _loc1_ = §`m§();
            this.§##F§ = _loc1_.height;
            §<"j§(_loc1_);
         }
         return this.§##F§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §"5§ = Math.floor(§-[§ / (this.§'D§ + §%!A§));
      }
      
      override protected function calculateMargin() : void
      {
         §;!O§ = Math.min((§-[§ - §!L§ * this.§'D§) / §!L§,§=H§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§0!d§ = null;
         §-[§ = §%G§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §!L§ = Math.min(§"5§,§%4§.length);
         §;!O§ = Math.min((§-[§ - §!L§ * this.§'D§) / §!L§,§=H§);
         while(§!#S§.length > §"5§)
         {
            _loc2_ = §!#S§.pop();
            §%G§.removeChild(_loc2_);
            §<"j§(_loc2_);
         }
         §^#;§(0);
         §?"j§ = §[y§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §7#4§ = §%G§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§;!O§ / 2 + (param1 + §?"j§) * (this.§'D§ + §;!O§));
      }
   }
}
