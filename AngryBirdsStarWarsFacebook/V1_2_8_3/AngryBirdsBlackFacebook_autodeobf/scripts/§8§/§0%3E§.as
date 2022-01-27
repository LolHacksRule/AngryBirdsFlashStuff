package §8§#7
{
   public class §0>§ extends §""b§
   {
       
      
      protected var §6"g§:Number = -1;
      
      public function §0>§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§"!E§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§"!E§ = null;
         var _loc1_:int = §+7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+7§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §9!C§ || _loc2_.y <= -this.§1"<§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §+3§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§1"<§ && _loc3_ < §9!C§ && !§@!3§(_loc1_))
            {
               _loc4_ = §!e§();
               §0v§.addChild(_loc4_);
               §]#2§(_loc4_,§+3§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §+7§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §1"<§() : Number
      {
         var _loc1_:§"!E§ = null;
         if(this.§6"g§ == -1)
         {
            _loc1_ = §!e§();
            this.§6"g§ = _loc1_.height;
            §'f§(_loc1_);
         }
         return this.§6"g§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §6!,§ = Math.floor(§9!C§ / (this.§1"<§ + §9"9§));
      }
      
      override protected function calculateMargin() : void
      {
         §`!-§ = Math.min((§9!C§ - §,!t§ * this.§1"<§) / §,!t§,§+!!§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§"!E§ = null;
         §9!C§ = §0v§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §,!t§ = Math.min(§6!,§,§+3§.length);
         §`!-§ = Math.min((§9!C§ - §,!t§ * this.§1"<§) / §,!t§,§+!!§);
         while(§+7§.length > §6!,§)
         {
            _loc2_ = §+7§.pop();
            §0v§.removeChild(_loc2_);
            §'f§(_loc2_);
         }
         §1"j§(0);
         §`J§ = §&B§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §[b§ = §0v§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§`!-§ / 2 + (param1 + §`J§) * (this.§1"<§ + §`!-§));
      }
   }
}
