package §2!u§
{
   public class §!!q§ extends §1#q§
   {
       
      
      protected var §5#7§:Number = -1;
      
      public function §!!q§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§<#h§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§<#h§ = null;
         var _loc1_:int = §9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §9n§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §!l§ || _loc2_.y <= -this.§2!!§)
            {
               § U§.removeChild(_loc2_);
               §9n§.splice(§9n§.indexOf(_loc2_),1);
               §4$%§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §"""§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§2!!§ && _loc3_ < §!l§ && !§^$ §(_loc1_))
            {
               _loc4_ = §3"C§();
               § U§.addChild(_loc4_);
               _loc4_.data = §"""§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §9n§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §2!!§() : Number
      {
         var _loc1_:§<#h§ = null;
         if(this.§5#7§ == -1)
         {
            _loc1_ = §3"C§();
            this.§5#7§ = _loc1_.height;
            §4$%§(_loc1_);
         }
         return this.§5#7§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §,$ § = Math.floor(§!l§ / (this.§2!!§ + §'#1§));
      }
      
      override protected function calculateMargin() : void
      {
         §1#<§ = Math.min((§!l§ - §8"d§ * this.§2!!§) / §8"d§,§%"&§);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc2_:§<#h§ = null;
         §!l§ = § U§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §8"d§ = Math.min(§,$ §,§"""§.length);
         §1#<§ = Math.min((§!l§ - §8"d§ * this.§2!!§) / §8"d§,§%"&§);
         while(§9n§.length > §,$ §)
         {
            _loc2_ = §9n§.pop();
            § U§.removeChild(_loc2_);
            §4$%§(_loc2_);
         }
         §5u§(0);
         §'#B§ = §@#+§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§1#<§ / 2 + (param1 + §'#B§) * (this.§2!!§ + §1#<§));
      }
   }
}
