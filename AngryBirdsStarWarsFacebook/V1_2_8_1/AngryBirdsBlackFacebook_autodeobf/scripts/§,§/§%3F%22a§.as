package §,§#6
{
   import §&!j§.§5#+§;
   import §8!h§.§%"z§;
   import §9"U§.§,!c§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §98§.§'"M§;
   import §=Z§.§;g§;
   import §`"1§.§=Q§;
   import flash.text.TextField;
   
   public class §?"a§
   {
      
      public static const §>!Q§:String = "friends";
      
      public static const §=o§:String = "normal";
       
      
      private var §-1§:§5#+§;
      
      private var §%#§:§,N§;
      
      public var view:§;g§;
      
      private var §-""§:String;
      
      private var §5!Y§:§'"M§;
      
      private var §=B§:String;
      
      private var §2@§:Boolean;
      
      private var §&#7§:Number;
      
      private var §"v§:int;
      
      public function §?"a§(param1:§;g§, param2:§5#+§, param3:§,N§, param4:int, param5:String, param6:§'"M§, param7:String, param8:int)
      {
         super();
         this.view = param1;
         this.§-""§ = param5;
         this.§5!Y§ = param6;
         this.§"v§ = param4;
         this.§=B§ = param7;
         this.§&#7§ = param8;
         this.§-1§ = param2;
         this.§%#§ = param3;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§-""§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set prices(param1:§'"M§) : void
      {
         this.§5!Y§ = param1;
      }
      
      public function get prices() : §'"M§
      {
         return this.§5!Y§;
      }
      
      public function get type() : String
      {
         return this.§=B§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§2@§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§2@§;
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
         this.§&#7§ = param1;
         this.refresh();
      }
      
      public function §5"d§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §=Q§.§`!A§("black_shop_purchase");
      }
      
      protected function §>"b§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      public function refresh() : void
      {
         var _loc2_:int = 0;
         if(this.§2@§)
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         var _loc1_:§,!c§ = §7"1§(§4"#§.singleton.dataModel).§9"$§;
         switch(this.§=B§)
         {
            case §>!Q§:
               if(this.§-""§ && this.§5!Y§)
               {
                  this.view.mClip.title.htmlText = this.§-1§.§2"V§("shop_friends_title");
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
            case §=o§:
            default:
               if(this.§5!Y§ && !this.§2@§)
               {
                  this.view.mClip.cost.htmlText = this.§>"b§(this.§5!Y§.price.toString());
               }
               else
               {
                  this.view.mClip.cost.text = "";
               }
               if(this.§-""§ && this.§5!Y§)
               {
                  _loc2_ = this.§"v§ == 0 ? 1 : 2;
                  this.view.mClip.diamondIcon.gotoAndStop(_loc2_);
                  this.view.mClip.quantity.htmlText = this.§>"b§(this.§=U§().toString());
                  this.view.mClip.offer.htmlText = this.§>"b§(this.§#!I§() == 0 ? "Crystals" : "Crystals +" + this.§#!I§() + " " + this.§-1§.getLocalizedString("starcoin_free"));
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
         return Math.floor(this.§5!Y§.quantity - this.§5!Y§.price / this.§&#7§);
      }
   }
}
