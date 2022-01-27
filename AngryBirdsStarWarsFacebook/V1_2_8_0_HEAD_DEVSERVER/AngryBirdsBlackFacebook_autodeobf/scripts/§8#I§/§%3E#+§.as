package §8#I§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import flash.text.TextField;
   
   public class §>#+§
   {
      
      public static const §2#W§:String = "friends";
      
      public static const § !0§:String = "normal";
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §;"-§:String;
      
      private var §]"u§:Boolean;
      
      private var §?!v§:Number;
      
      private var §!#A§:int;
      
      public function §>#+§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:int, param5:String, param6:§,T§, param7:String, param8:int)
      {
         super();
         this.view = param1;
         this.§]!=§ = param5;
         this.§1>§ = param6;
         this.§!#A§ = param4;
         this.§;"-§ = param7;
         this.§?!v§ = param8;
         this.§^"N§ = param2;
         this.§8!J§ = param3;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§]!=§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         this.§1>§ = param1;
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§]"u§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.view.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.view.visible;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§?!v§ = param1;
         this.refresh();
      }
      
      public function §3"&§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §?!r§.§"#_§("black_shop_purchase");
      }
      
      protected function §?"6§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      public function refresh() : void
      {
         var _loc2_:int = 0;
         if(this.§]"u§)
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         switch(this.§;"-§)
         {
            case §2#W§:
               if(this.§]!=§ && this.§1>§)
               {
                  this.view.mClip.title.htmlText = this.§^"N§.§@"n§("shop_friends_title");
               }
               else
               {
                  this.view.mClip.title.text = "";
               }
               this.view.mClip.quantity.text = "";
               this.view.mClip.offer.text = "";
               TextField(this.view.mClip.title).mouseEnabled = false;
               TextField(this.view.mClip.offer).mouseEnabled = false;
               TextField(this.view.mClip.quantity).mouseEnabled = false;
               break;
            case § !0§:
            default:
               if(this.§1>§ && !this.§]"u§)
               {
                  this.view.mClip.cost.htmlText = this.§?"6§(this.§1>§.price.toString());
               }
               else
               {
                  this.view.mClip.cost.text = "";
               }
               if(this.§]!=§ && this.§1>§)
               {
                  _loc2_ = this.§!#A§ == 0 ? 1 : 2;
                  this.view.mClip.diamondIcon.gotoAndStop(_loc2_);
                  this.view.mClip.quantity.htmlText = this.§?"6§(this.§;C§().toString());
                  this.view.mClip.offer.htmlText = this.§?"6§(this.§`§() == 0 ? "Crystals" : "Crystals +" + this.§`§() + " " + this.§^"N§.getLocalizedString("starcoin_free"));
               }
               else
               {
                  this.view.mClip.quantity.text = "";
                  this.view.mClip.offer.text = "";
                  this.view.mClip.diamondIcon.gotoAndStop(1);
               }
               TextField(this.view.mClip.cost).mouseEnabled = false;
               TextField(this.view.mClip.offer).mouseEnabled = false;
               TextField(this.view.mClip.quantity).mouseEnabled = false;
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
         return Math.floor(this.§1>§.quantity - this.§1>§.price / this.§?!v§);
      }
   }
}
