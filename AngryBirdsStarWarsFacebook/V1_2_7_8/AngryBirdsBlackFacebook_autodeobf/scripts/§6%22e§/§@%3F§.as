package §6"e§
{
   import § #,§.§!B§;
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §`"8§.§[F§;
   import flash.display.MovieClip;
   
   public class §@?§
   {
       
      
      private var §8-§:§="B§;
      
      private var §%<§:§[F§;
      
      public var view:§2"8§;
      
      private var §@J§:§!B§;
      
      private var §-l§:int;
      
      private var §[n§:MovieClip;
      
      private var §#G§:Number;
      
      public function §@?§(param1:§2"8§, param2:§="B§, param3:§[F§, param4:int, param5:Number)
      {
         super();
         this.view = param1;
         this.§-l§ = param4;
         this.§8-§ = param2;
         this.§%<§ = param3;
         this.§#G§ = param5;
         param1.mClip.mouseChildren = false;
         MovieClip(param1.mClip.icon).visbile = true;
         MovieClip(param1.mClip.icon).gotoAndStop(this.§-l§ + 1);
         this.§[n§ = MovieClip(param1.mClip.checkMark);
         this.§[n§.gotoAndStop(1);
         this.refresh();
      }
      
      public function set prices(param1:§!B§) : void
      {
         this.§@J§ = param1;
         this.refresh();
      }
      
      public function get prices() : §!B§
      {
         return this.§@J§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§#G§ = param1;
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§8-§ = null;
      }
      
      public function notifyPurchase() : void
      {
         this.§[n§.gotoAndPlay(1);
      }
      
      protected function refresh() : void
      {
         var _loc1_:int = 0;
         if(this.§@J§)
         {
            this.view.mClip.title.text = "x " + this.§";§();
            this.view.mClip.cost.text = this.§%<§.§7e§(this.§@J§.price);
            _loc1_ = this.§ var§();
            this.view.mClip.offer.text = _loc1_ == 0 ? "" : "+ " + this.§ var§() + " " + this.§8-§.getLocalizedString("starcoin_free");
         }
         else
         {
            this.view.mClip.title.text = "";
            this.view.mClip.cost.text = "";
            this.view.mClip.offer.text = "";
         }
      }
      
      protected function §";§() : int
      {
         return this.§@J§.quantity - this.§ var§();
      }
      
      protected function § var§() : int
      {
         if(this.§#G§ == -1)
         {
            return 0;
         }
         var _loc1_:int = Math.floor(this.§@J§.quantity - (this.§@J§.price + §+!§.§>!6§) / this.§#G§);
         var _loc2_:int = _loc1_ == 0 ? 1 : int(Math.log(_loc1_) / Math.log(10) + 1);
         var _loc3_:* = "1";
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ += "0";
            _loc4_++;
         }
         var _loc5_:int = (_loc5_ = parseInt(_loc3_)) > 100 ? 100 : int(_loc5_);
         return int(Math.round(_loc1_ / _loc5_) * _loc5_);
      }
   }
}
