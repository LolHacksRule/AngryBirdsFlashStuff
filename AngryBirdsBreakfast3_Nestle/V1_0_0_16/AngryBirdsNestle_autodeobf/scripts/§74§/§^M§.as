package §74§
{
   public class §^M§ extends §2!§
   {
       
      
      protected var §6O§:Number = -1;
      
      public function §^M§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§^z§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§^z§ = null;
         var _loc1_:int = §>1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §>1§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §+9§ || _loc2_.y <= -this.§4§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §7!?§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§4§ && _loc3_ < §+9§ && !§!Z§(_loc1_))
            {
               _loc4_ = §`E§();
               §&%§.addChild(_loc4_);
               setRendererData(_loc4_,§7!?§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §>1§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §4§() : Number
      {
         var _loc1_:§^z§ = null;
         if(this.§6O§ == -1)
         {
            _loc1_ = §`E§();
            this.§6O§ = _loc1_.height;
            §^!?§(_loc1_);
         }
         return this.§6O§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         § N§ = Math.floor(§+9§ / (this.§4§ + §@"5§));
      }
      
      override protected function calculateMargin() : void
      {
         §3!d§ = Math.min((§+9§ - §@!K§ * this.§4§) / §@!K§,§`!$§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§^z§ = null;
         §+9§ = §&%§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §@!K§ = Math.min(§ N§,§7!?§.length);
         §3!d§ = Math.min((§+9§ - §@!K§ * this.§4§) / §@!K§,§`!$§);
         while(§>1§.length > § N§)
         {
            _loc2_ = §>1§.pop();
            §&%§.removeChild(_loc2_);
            §^!?§(_loc2_);
         }
         §8!H§(0);
         §@q§ = §-!3§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §7F§ = §&%§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§3!d§ / 2 + (param1 + §@q§) * (this.§4§ + §3!d§));
      }
   }
}
