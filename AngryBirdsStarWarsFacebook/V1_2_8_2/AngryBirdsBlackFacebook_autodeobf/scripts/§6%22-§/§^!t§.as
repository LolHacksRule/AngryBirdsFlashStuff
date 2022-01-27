package §6"-§
{
   import §&!j§.§5#+§;
   import §1!G§.§9"b§;
   import §9"U§.§,N§;
   import §=Z§.§;g§;
   import flash.display.MovieClip;
   
   public class §^!t§
   {
       
      
      private var §-1§:§5#+§;
      
      private var §%#§:§,N§;
      
      public var view:§;g§;
      
      private var §5!Y§:§9"b§;
      
      private var §"v§:int;
      
      private var §`Z§:MovieClip;
      
      private var §&#7§:Number;
      
      public function §^!t§(param1:§;g§, param2:§5#+§, param3:§,N§, param4:int, param5:Number)
      {
         super();
         this.view = param1;
         this.§"v§ = param4;
         this.§-1§ = param2;
         this.§%#§ = param3;
         this.§&#7§ = param5;
         param1.mClip.mouseChildren = false;
         MovieClip(param1.mClip.icon).visbile = true;
         MovieClip(param1.mClip.icon).gotoAndStop(this.§"v§ + 1);
         this.§`Z§ = MovieClip(param1.mClip.checkMark);
         this.§`Z§.gotoAndStop(1);
         this.refresh();
      }
      
      public function set prices(param1:§9"b§) : void
      {
         this.§5!Y§ = param1;
         this.refresh();
      }
      
      public function get prices() : §9"b§
      {
         return this.§5!Y§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§&#7§ = param1;
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§-1§ = null;
      }
      
      public function notifyPurchase() : void
      {
         this.§`Z§.gotoAndPlay(1);
      }
      
      protected function refresh() : void
      {
         var _loc1_:int = 0;
         if(this.§5!Y§)
         {
            this.view.mClip.title.text = "x " + this.§=U§();
            this.view.mClip.cost.text = this.§%#§.§1!i§(this.§5!Y§.price);
            _loc1_ = this.§#!I§();
            this.view.mClip.offer.text = _loc1_ == 0 ? "" : "+ " + this.§#!I§() + " " + this.§-1§.getLocalizedString("starcoin_free");
         }
         else
         {
            this.view.mClip.title.text = "";
            this.view.mClip.cost.text = "";
            this.view.mClip.offer.text = "";
         }
      }
      
      protected function §=U§() : int
      {
         return this.§5!Y§.quantity - this.§#!I§();
      }
      
      protected function §#!I§() : int
      {
         if(this.§&#7§ == -1)
         {
            return 0;
         }
         var _loc1_:int = Math.floor(this.§5!Y§.quantity - (this.§5!Y§.price + §^!Q§.§1!t§) / this.§&#7§);
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
