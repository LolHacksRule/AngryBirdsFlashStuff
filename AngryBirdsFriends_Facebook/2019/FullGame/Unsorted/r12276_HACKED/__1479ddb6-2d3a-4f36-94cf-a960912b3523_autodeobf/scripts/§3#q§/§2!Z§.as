package §3#q§
{
   public class §2!Z§ extends §;$$§
   {
       
      
      protected var §+u§:Number = -1;
      
      public function §2!Z§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§ !Q§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§ !Q§ = null;
         var _loc1_:int = §=#]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §=#]§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §!"%§ || _loc2_.y <= -this.§,#+§)
            {
               §]#+§.removeChild(_loc2_);
               §=#]§.splice(§=#]§.indexOf(_loc2_),1);
               §9#o§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §6"G§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§,#+§ && _loc3_ < §!"%§ && !§<e§(_loc1_))
            {
               _loc4_ = §6"8§();
               §]#+§.addChild(_loc4_);
               _loc4_.data = §6"G§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §=#]§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §,#+§() : Number
      {
         var _loc1_:§ !Q§ = null;
         if(this.§+u§ == -1)
         {
            _loc1_ = §6"8§();
            this.§+u§ = _loc1_.height;
            §9#o§(_loc1_);
         }
         return this.§+u§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §2$2§ = Math.floor(§!"%§ / (this.§,#+§ + §[$9§));
      }
      
      override protected function calculateMargin() : void
      {
         §@[§ = Math.min((§!"%§ - §7"i§ * this.§,#+§) / §7"i§,§1>§);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc2_:§ !Q§ = null;
         §!"%§ = §]#+§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §7"i§ = Math.min(§2$2§,§6"G§.length);
         §@[§ = Math.min((§!"%§ - §7"i§ * this.§,#+§) / §7"i§,§1>§);
         while(§=#]§.length > §2$2§)
         {
            _loc2_ = §=#]§.pop();
            §]#+§.removeChild(_loc2_);
            §9#o§(_loc2_);
         }
         §;$?§(0);
         §]!C§ = §#"S§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§@[§ / 2 + (param1 + §]!C§) * (this.§,#+§ + §@[§));
      }
   }
}
