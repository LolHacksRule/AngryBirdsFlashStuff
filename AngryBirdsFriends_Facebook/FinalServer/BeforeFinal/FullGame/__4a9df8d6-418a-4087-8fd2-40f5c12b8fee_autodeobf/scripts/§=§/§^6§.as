package §=§#0
{
   public class §^6§ extends §>"8§
   {
       
      
      protected var §1"R§:Number = -1;
      
      public function §^6§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§>!Y§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§>!Y§ = null;
         var _loc1_:int = §4$!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §4$!§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §]!G§ || _loc2_.y <= -this.§[#S§)
            {
               §'#f§.removeChild(_loc2_);
               §4$!§.splice(§4$!§.indexOf(_loc2_),1);
               §6!Y§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §8#f§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§[#S§ && _loc3_ < §]!G§ && !§>@§(_loc1_))
            {
               _loc4_ = §!"<§();
               §'#f§.addChild(_loc4_);
               _loc4_.data = §8#f§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §4$!§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §[#S§() : Number
      {
         var _loc1_:§>!Y§ = null;
         if(this.§1"R§ == -1)
         {
            _loc1_ = §!"<§();
            this.§1"R§ = _loc1_.height;
            §6!Y§(_loc1_);
         }
         return this.§1"R§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §&!V§ = Math.floor(§]!G§ / (this.§[#S§ + §[!Q§));
      }
      
      override protected function calculateMargin() : void
      {
         §>A§ = Math.min((§]!G§ - §6#^§ * this.§[#S§) / §6#^§,§9#e§);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc2_:§>!Y§ = null;
         §]!G§ = §'#f§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §6#^§ = Math.min(§&!V§,§8#f§.length);
         §>A§ = Math.min((§]!G§ - §6#^§ * this.§[#S§) / §6#^§,§9#e§);
         while(§4$!§.length > §&!V§)
         {
            _loc2_ = §4$!§.pop();
            §'#f§.removeChild(_loc2_);
            §6!Y§(_loc2_);
         }
         §[B§(0);
         §`#e§ = §;=§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§>A§ / 2 + (param1 + §`#e§) * (this.§[#S§ + §>A§));
      }
   }
}
