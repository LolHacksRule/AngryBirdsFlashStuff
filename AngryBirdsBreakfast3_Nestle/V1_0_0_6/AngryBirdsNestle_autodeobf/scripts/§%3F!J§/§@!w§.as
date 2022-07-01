package §?!J§
{
   public class §@!w§ extends §3!2§
   {
       
      
      protected var §<5§:Number = -1;
      
      public function §@!w§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§#e§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§#e§ = null;
         var _loc1_:int = §+&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+&§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §^,§ || _loc2_.y <= -this.§]!V§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §]"+§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§]!V§ && _loc3_ < §^,§ && !§ x§(_loc1_))
            {
               _loc4_ = §4]§();
               §2!&§.addChild(_loc4_);
               setRendererData(_loc4_,§]"+§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §+&§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §]!V§() : Number
      {
         var _loc1_:§#e§ = null;
         if(this.§<5§ == -1)
         {
            _loc1_ = §4]§();
            this.§<5§ = _loc1_.height;
            §"n§(_loc1_);
         }
         return this.§<5§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §""6§ = Math.floor(§^,§ / (this.§]!V§ + §&+§));
      }
      
      override protected function calculateMargin() : void
      {
         §@"$§ = Math.min((§^,§ - §'m§ * this.§]!V§) / §'m§,§2!1§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§#e§ = null;
         §^,§ = §2!&§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §'m§ = Math.min(§""6§,§]"+§.length);
         §@"$§ = Math.min((§^,§ - §'m§ * this.§]!V§) / §'m§,§2!1§);
         while(§+&§.length > §""6§)
         {
            _loc2_ = §+&§.pop();
            §2!&§.removeChild(_loc2_);
            §"n§(_loc2_);
         }
         §^x§(0);
         §1G§ = §#!"§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §`T§ = §2!&§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§@"$§ / 2 + (param1 + §1G§) * (this.§]!V§ + §@"$§));
      }
   }
}
