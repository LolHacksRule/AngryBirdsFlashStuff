package §0a§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §#<§.§8!j§;
   import §1!o§.§#"y§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §7""§.§0!C§;
   import §7#+§.§[##§;
   import §<"s§.§0u§;
   import §^9§.§<! §;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>M§ extends EventDispatcher
   {
      
      public static const §8#5§:String = "extra_bird_used";
       
      
      protected var §=5§:§,m§;
      
      protected var §,G§:§2"8§;
      
      protected var §1'§:§<`§;
      
      protected var §`A§:§0!C§;
      
      protected var §?§:String;
      
      protected var §]S§:§-!w§;
      
      protected var §-F§:§5!R§;
      
      protected var §^"N§:Boolean;
      
      public function §>M§(param1:§,m§)
      {
         super();
         this.init(param1);
      }
      
      public function get view() : §,m§
      {
         return this.§=5§;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§^"N§ = param1;
         this.refresh();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§^"N§;
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§^"N§ = true;
         this.§?§ = §#f§.§]"i§;
         this.§=5§ = param1;
         this.§,G§ = §2"8§(param1.getItemByName("Button_ExtraBird"));
         this.§1'§ = §<`§(param1.getItemByName("MovieClip_GetMore"));
         this.§1'§.mClip.gotoAndStop(1);
         this.§1'§.mClip.mouseEnabled = false;
         this.§1'§.mClip.mouseChildren = false;
         this.§1'§.setVisibility(false);
         this.§`A§ = new §0!C§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         this.§]S§.§=>§.addEventListener(§#"y§.§4f§,this.§ "[§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§-F§)
         {
            this.§-F§.removeEventListener(§8!j§.CLOSE,this.§1"3§);
         }
         this.§-F§ = null;
         §;"@§.singleton.popupManager.removeEventListener(§8!j§.CLOSE,this.§=""§);
         this.§=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§]S§.§=>§.removeEventListener(§#"y§.§4f§,this.§ "[§);
         this.§]S§ = null;
      }
      
      protected function refresh() : void
      {
         this.§`A§.count = this.§]S§.§=>§.§"!V§(this.§?§);
         this.§`A§.§1"r§ = this.§]S§.§=>§.§="&§(this.§?§);
         if(this.§^"N§)
         {
            this.§,G§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§,G§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§,G§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            this.§,G§.setComponentVisualState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         this.§,G§.setEnabled(this.§^"N§);
      }
      
      private function § "[§(param1:§#"y§) : void
      {
         if(param1.§9u§ == this.§?§)
         {
            this.refresh();
         }
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         var _loc2_:int = §-!w§(§;"@§.singleton.dataModel).§=>§.§"!V§(this.§?§);
         if(param1.§84§.toUpperCase().indexOf("OVER_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§1'§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§84§.toUpperCase().indexOf("OUT_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§1'§.mClip.gotoAndStop(1);
            }
         }
         if(param1.§84§.toUpperCase() == "REPLAY_EXTRA_BIRD")
         {
            if(_loc2_ <= 0)
            {
               this.§&z§();
            }
            else
            {
               this.§8"E§();
            }
         }
      }
      
      private function §8"E§() : void
      {
         dispatchEvent(new Event(§8#5§));
      }
      
      private function §&z§() : void
      {
         this.§-F§ = new §<! §(§0u§.§]!?§,§^T§.§0O§,§[##§.§9"U§,this.§?§);
         §;"@§.singleton.popupManager.openPopup(this.§-F§,true,true,true);
      }
      
      private function §=""§(param1:§8!j§) : void
      {
         if(this.§-F§ == null)
         {
            this.§;w§();
         }
      }
      
      private function §1"3§(param1:§8!j§) : void
      {
         if(this.§-F§)
         {
            this.§-F§.removeEventListener(§8!j§.CLOSE,this.§1"3§);
         }
         this.§-F§ = null;
         this.§;w§();
      }
      
      private function §;w§() : void
      {
         var _loc1_:Boolean = §;"@§.singleton.popupManager.§;"<§();
         var _loc2_:int = this.§]S§.§=>§.§"!V§(this.§?§);
         if(_loc2_ > 0 && !_loc1_)
         {
            §;"@§.singleton.popupManager.removeEventListener(§8!j§.CLOSE,this.§=""§);
            this.§8"E§();
         }
      }
   }
}
