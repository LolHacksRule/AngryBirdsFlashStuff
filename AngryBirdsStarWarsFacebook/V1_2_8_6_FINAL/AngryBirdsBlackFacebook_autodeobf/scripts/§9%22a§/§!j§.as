package §9"a§
{
   import §"[§.§""h§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §4"m§.§>" §;
   import §7!n§.§>"H§;
   import §8!h§.§%"z§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§?b§;
   import §`"]§.§?"f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §!j§ extends EventDispatcher
   {
      
      public static const §!!r§:String = "extra_bird_used";
       
      
      protected var §3!m§:§@!8§;
      
      protected var § s§:§;g§;
      
      protected var §0!>§:§9!c§;
      
      protected var §+!s§:§?"f§;
      
      protected var §-""§:String;
      
      protected var §?!$§:§7"1§;
      
      protected var §@!h§:§3!§;
      
      protected var §,%§:Boolean;
      
      public function §!j§(param1:§@!8§)
      {
         super();
         this.init(param1);
      }
      
      public function get view() : §@!8§
      {
         return this.§3!m§;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§,%§ = param1;
         this.refresh();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§,%§;
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§,%§ = true;
         this.§-""§ = §[!b§.§]!F§;
         this.§3!m§ = param1;
         this.§ s§ = §;g§(param1.getItemByName("Button_ExtraBird"));
         this.§0!>§ = §9!c§(param1.getItemByName("MovieClip_GetMore"));
         this.§0!>§.mClip.gotoAndStop(1);
         this.§0!>§.mClip.mouseEnabled = false;
         this.§0!>§.mClip.mouseChildren = false;
         this.§0!>§.setVisibility(false);
         this.§+!s§ = new §?"f§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         this.§?!$§.§@!K§.addEventListener(§?b§.§6,§,this.§2"s§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§@!h§)
         {
            this.§@!h§.removeEventListener(§>"H§.CLOSE,this.§=9§);
         }
         this.§@!h§ = null;
         §4"#§.singleton.popupManager.removeEventListener(§>"H§.CLOSE,this.§-!8§);
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§?!$§.§@!K§.removeEventListener(§?b§.§6,§,this.§2"s§);
         this.§?!$§ = null;
      }
      
      protected function refresh() : void
      {
         this.§+!s§.count = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         this.§+!s§.§ var§ = this.§?!$§.§@!K§.§5!<§(this.§-""§);
         if(this.§,%§)
         {
            this.§ s§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§ s§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§ s§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            this.§ s§.setComponentVisualState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         this.§ s§.setEnabled(this.§,%§);
      }
      
      private function §2"s§(param1:§?b§) : void
      {
         if(param1.§8!#§ == this.§-""§)
         {
            this.refresh();
         }
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         var _loc2_:int = §7"1§(§4"#§.singleton.dataModel).§@!K§.§6"0§(this.§-""§);
         if(param1.§5!u§.toUpperCase().indexOf("OVER_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§0!>§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§5!u§.toUpperCase().indexOf("OUT_EXTRA_BIRD") == 0)
         {
            if(_loc2_ <= 0)
            {
               this.§0!>§.mClip.gotoAndStop(1);
            }
         }
         if(param1.§5!u§.toUpperCase() == "REPLAY_EXTRA_BIRD")
         {
            if(_loc2_ <= 0)
            {
               this.§ "[§();
            }
            else
            {
               this.§ #,§();
            }
         }
      }
      
      private function § #,§() : void
      {
         dispatchEvent(new Event(§!!r§));
      }
      
      private function § "[§() : void
      {
         this.§@!h§ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§,§""h§.§%!m§,this.§-""§);
         §4"#§.singleton.popupManager.openPopup(this.§@!h§,true,true,true);
      }
      
      private function §-!8§(param1:§>"H§) : void
      {
         if(this.§@!h§ == null)
         {
            this.§,5§();
         }
      }
      
      private function §=9§(param1:§>"H§) : void
      {
         if(this.§@!h§)
         {
            this.§@!h§.removeEventListener(§>"H§.CLOSE,this.§=9§);
         }
         this.§@!h§ = null;
         this.§,5§();
      }
      
      private function §,5§() : void
      {
         var _loc1_:Boolean = §4"#§.singleton.popupManager.§#"E§();
         var _loc2_:int = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         if(_loc2_ > 0 && !_loc1_)
         {
            §4"#§.singleton.popupManager.removeEventListener(§>"H§.CLOSE,this.§-!8§);
            this.§ #,§();
         }
      }
   }
}
