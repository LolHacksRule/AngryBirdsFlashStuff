package §[!a§
{
   public class §]!@§ extends §^!w§
   {
       
      
      protected var §>V§:Number = -1;
      
      public function §]!@§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§`?§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`?§ = null;
         var _loc1_:int = §^`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §^`§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §@I§ || _loc2_.y <= -this.§@@§)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §7n§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§@@§ && _loc3_ < §@I§ && !§5!0§(_loc1_))
            {
               _loc4_ = §[E§();
               §[<§.addChild(_loc4_);
               setRendererData(_loc4_,§7n§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §^`§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §@@§() : Number
      {
         var _loc1_:§`?§ = null;
         if(this.§>V§ == -1)
         {
            _loc1_ = §[E§();
            this.§>V§ = _loc1_.height;
            §!>§(_loc1_);
         }
         return this.§>V§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §@b§ = Math.floor(§@I§ / (this.§@@§ + §`k§));
      }
      
      override protected function calculateMargin() : void
      {
         §><§ = Math.min((§@I§ - §6K§ * this.§@@§) / §6K§,§&!w§);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:§`?§ = null;
         §@I§ = §[<§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §6K§ = Math.min(§@b§,§7n§.length);
         §><§ = Math.min((§@I§ - §6K§ * this.§@@§) / §6K§,§&!w§);
         while(§^`§.length > §@b§)
         {
            _loc2_ = §^`§.pop();
            §[<§.removeChild(_loc2_);
            §!>§(_loc2_);
         }
         § c§(0);
         §?!W§ = §;!,§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         §^J§ = §[<§.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§><§ / 2 + (param1 + §?!W§) * (this.§@@§ + §><§));
      }
   }
}
