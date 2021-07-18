package §'!n§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §[#§ extends EventDispatcher
   {
      
      public static const §9!4§:String = "extra_bird_used";
       
      
      protected var §=#=§:§ #^§;
      
      protected var §`;§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §]!=§:String;
      
      protected var §4#J§:§@#B§;
      
      protected var §6"K§:§[!j§;
      
      protected var §&A§:Boolean;
      
      public function §[#§(param1:§ #^§)
      {
         super();
         this.init(param1);
      }
      
      public function get view() : § #^§
      {
         return this.§=#=§;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§&A§ = param1;
         this.refresh();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§&A§;
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§&A§ = true;
         this.§]!=§ = §6"w§.§1!m§;
         this.§=#=§ = param1;
         this.§`;§ = §^"m§(param1.getItemByName("Button_ExtraBird"));
         this.§'">§ = §0"$§(param1.getItemByName("MovieClip_GetMore"));
         this.§'">§.mClip.gotoAndStop(1);
         this.§'">§.mClip.mouseEnabled = false;
         this.§'">§.mClip.mouseChildren = false;
         this.§'">§.setVisibility(false);
         this.§4j§ = new §5" §(param1.getItemByName("MovieClip_Counter").mClip);
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§6"K§)
         {
            this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
         }
         this.§6"K§ = null;
         §4#;§.singleton.popupManager.removeEventListener(§+#[§.CLOSE,this.§<"!§);
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
         this.§4#J§ = null;
      }
      
      protected function refresh() : void
      {
         this.§4j§.count = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         this.§4j§.§ "r§ = this.§4#J§.§]"<§.§ #D§(this.§]!=§);
         if(this.§&A§)
         {
            this.§`;§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§`;§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§`;§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            this.§`;§.setComponentVisualState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         this.§`;§.setEnabled(this.§&A§);
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         if(param1.§6#R§ == this.§]!=§)
         {
            this.refresh();
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc2_:int = §@#B§(§4#;§.singleton.dataModel).§]"<§.§8#K§(this.§]!=§);
         if(param1.§=!k§.toUpperCase().indexOf("OVER_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§'">§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§=!k§.toUpperCase().indexOf("OUT_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§'">§.mClip.gotoAndStop(1);
            }
         }
         if(param1.§=!k§.toUpperCase() == "REPLAY_EXTRA_BIRD")
         {
            if(_loc2_ <= 0)
            {
               this.§8O§();
            }
            else
            {
               this.§0"[§();
            }
         }
      }
      
      private function §0"[§() : void
      {
         dispatchEvent(new Event(§9!4§));
      }
      
      private function §8O§() : void
      {
         this.§6"K§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
         §4#;§.singleton.popupManager.openPopup(this.§6"K§,true,true,true);
      }
      
      private function §<"!§(param1:§+#[§) : void
      {
         if(this.§6"K§ == null)
         {
            this.§&#D§();
         }
      }
      
      private function §9!3§(param1:§+#[§) : void
      {
         if(this.§6"K§)
         {
            this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
         }
         this.§6"K§ = null;
         this.§&#D§();
      }
      
      private function §&#D§() : void
      {
         var _loc1_:Boolean = §4#;§.singleton.popupManager.§""n§();
         var _loc2_:int = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         if(_loc2_ > 0 && !_loc1_)
         {
            §4#;§.singleton.popupManager.removeEventListener(§+#[§.CLOSE,this.§<"!§);
            this.§0"[§();
         }
      }
   }
}
