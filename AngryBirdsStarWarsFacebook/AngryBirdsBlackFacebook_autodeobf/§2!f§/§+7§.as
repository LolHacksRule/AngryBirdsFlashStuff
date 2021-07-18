package §2!f§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §>@§.§5"H§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   
   public class §+7§
   {
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §1>§:§["i§;
      
      private var §!#A§:int;
      
      private var §`!e§:MovieClip;
      
      private var §?!v§:Number;
      
      public function §+7§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:int, param5:Number)
      {
         super();
         this.view = param1;
         this.§!#A§ = param4;
         this.§^"N§ = param2;
         this.§8!J§ = param3;
         this.§?!v§ = param5;
         param1.mClip.mouseChildren = false;
         MovieClip(param1.mClip.icon).visbile = true;
         MovieClip(param1.mClip.icon).gotoAndStop(this.§!#A§ + 1);
         this.§`!e§ = MovieClip(param1.mClip.checkMark);
         this.§`!e§.gotoAndStop(1);
         this.refresh();
      }
      
      public function set prices(param1:§["i§) : void
      {
         this.§1>§ = param1;
         this.refresh();
      }
      
      public function get prices() : §["i§
      {
         return this.§1>§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§?!v§ = param1;
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§^"N§ = null;
      }
      
      public function notifyPurchase() : void
      {
         this.§`!e§.gotoAndPlay(1);
      }
      
      protected function refresh() : void
      {
         var _loc1_:int = 0;
         if(this.§1>§)
         {
            this.view.mClip.title.text = "x " + this.§;C§();
            this.view.mClip.cost.text = this.§8!J§.§<H§(this.§1>§.price);
            _loc1_ = this.§`§();
            this.view.mClip.offer.text = _loc1_ == 0 ? "" : "+ " + this.§`§() + " " + this.§^"N§.getLocalizedString("starcoin_free");
         }
         else
         {
            this.view.mClip.title.text = "";
            this.view.mClip.cost.text = "";
            this.view.mClip.offer.text = "";
         }
      }
      
      protected function §;C§() : int
      {
         return this.§1>§.quantity - this.§`§();
      }
      
      protected function §`§() : int
      {
         if(this.§?!v§ == -1)
         {
            return 0;
         }
         var _loc1_:int = Math.floor(this.§1>§.quantity - (this.§1>§.price + §]!J§.§ "2§) / this.§?!v§);
         var _loc2_:int = _loc1_ == 0 ? 1 : int(Math.log(_loc1_) / Math.log(10) + 1);
         var _loc3_:* = "1";
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ += "0";
            _loc4_++;
         }
         var _loc5_:int = (_loc5_ = int(parseInt(_loc3_))) > 100 ? 100 : int(_loc5_);
         return int(Math.round(_loc1_ / _loc5_) * _loc5_);
      }
   }
}
