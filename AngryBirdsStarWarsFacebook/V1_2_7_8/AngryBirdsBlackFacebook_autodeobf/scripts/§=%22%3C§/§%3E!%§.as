package §="<§
{
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §4##§.§7!Y§;
   import §;q§.§ true§;
   import §`"8§.§-!w§;
   import §`"8§.§@T§;
   import §`"8§.§[F§;
   import flash.text.TextField;
   
   public class §>!%§
   {
      
      public static const §;!d§:String = "friends";
      
      public static const §>"P§:String = "normal";
       
      
      private var §8-§:§="B§;
      
      private var §%<§:§[F§;
      
      public var view:§2"8§;
      
      private var §?§:String;
      
      private var §@J§:§ true§;
      
      private var §]m§:String;
      
      private var §1!?§:Boolean;
      
      private var §#G§:Number;
      
      private var §-l§:int;
      
      public function §>!%§(param1:§2"8§, param2:§="B§, param3:§[F§, param4:int, param5:String, param6:§ true§, param7:String, param8:int)
      {
         super();
         this.view = param1;
         this.§?§ = param5;
         this.§@J§ = param6;
         this.§-l§ = param4;
         this.§]m§ = param7;
         this.§#G§ = param8;
         this.§8-§ = param2;
         this.§%<§ = param3;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§?§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set prices(param1:§ true§) : void
      {
         this.§@J§ = param1;
      }
      
      public function get prices() : § true§
      {
         return this.§@J§;
      }
      
      public function get type() : String
      {
         return this.§]m§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§1!?§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§1!?§;
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
         this.§#G§ = param1;
         this.refresh();
      }
      
      public function §&!y§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §@§.§=Y§("black_shop_purchase");
      }
      
      protected function §!!%§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      public function refresh() : void
      {
         var _loc2_:int = 0;
         if(this.§1!?§)
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         var _loc1_:§@T§ = §-!w§(§;"@§.singleton.dataModel).§`!§;
         switch(this.§]m§)
         {
            case §;!d§:
               if(this.§?§ && this.§@J§)
               {
                  this.view.mClip.title.htmlText = this.§8-§.§&!5§("shop_friends_title");
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
            case §>"P§:
            default:
               if(this.§@J§ && !this.§1!?§)
               {
                  this.view.mClip.cost.htmlText = this.§!!%§(this.§@J§.price.toString());
               }
               else
               {
                  this.view.mClip.cost.text = "";
               }
               if(this.§?§ && this.§@J§)
               {
                  _loc2_ = this.§-l§ == 0 ? 1 : 2;
                  this.view.mClip.diamondIcon.gotoAndStop(_loc2_);
                  this.view.mClip.quantity.htmlText = this.§!!%§(this.§";§().toString());
                  this.view.mClip.offer.htmlText = this.§!!%§(this.§ var§() == 0 ? "Crystals" : "Crystals +" + this.§ var§() + " " + this.§8-§.getLocalizedString("starcoin_free"));
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
         return Math.floor(this.§@J§.quantity - this.§@J§.price / this.§#G§);
      }
   }
}
