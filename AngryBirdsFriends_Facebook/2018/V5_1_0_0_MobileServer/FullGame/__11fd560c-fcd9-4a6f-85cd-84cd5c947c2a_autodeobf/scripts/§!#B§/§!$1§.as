package §!#B§
{
   public class §!$1§ extends §`#P§
   {
       
      
      protected var §<!,§:Number = -1;
      
      public function §!$1§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§;+§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§;+§ = null;
         var _loc1_:int = §2"k§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2"k§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §]"]§ || _loc2_.y <= -this.§3!A§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §["[§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§3!A§ && _loc3_ < §]"]§ && !§6"$§(_loc1_))
            {
               _loc4_ = §>"u§();
               §4"D§.addChild(_loc4_);
               §12§(_loc4_,§["[§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §2"k§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §3!A§() : Number
      {
         var _loc1_:§;+§ = null;
         if(this.§<!,§ == -1)
         {
            _loc1_ = §>"u§();
            this.§<!,§ = _loc1_.height;
            §`"4§(_loc1_);
         }
         return this.§<!,§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §<!I§ = Math.floor(§]"]§ / (this.§3!A§ + §""l§));
      }
      
      override protected function calculateMargin() : void
      {
         §7%§ = Math.min((§]"]§ - §>!T§ * this.§3!A§) / §>!T§,§!#'§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§;+§ = null;
         §]"]§ = §4"D§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §>!T§ = Math.min(§<!I§,§["[§.length);
         §7%§ = Math.min((§]"]§ - §>!T§ * this.§3!A§) / §>!T§,§!#'§);
         while(§2"k§.length > §<!I§)
         {
            _loc2_ = §2"k§.pop();
            §4"D§.removeChild(_loc2_);
            §`"4§(_loc2_);
         }
         §?d§(0);
         §9"7§ = §`!M§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §5"S§ = §4"D§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§7%§ / 2 + (param1 + §9"7§) * (this.§3!A§ + §7%§));
      }
   }
}
