package §8!E§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §"O§.§^#]§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"!#§ extends EventDispatcher
   {
      
      public static const §9"9§:String = "mighty_eagle_used";
      
      public static const §0!M§:String = "hide_complete";
      
      public static const §<!§:String = "show_complete";
      
      private static const §;"s§:String = "infinite";
      
      private static const § "!§:String = "normal";
       
      
      protected var §%8§:§[#R§;
      
      protected var §"!A§:Boolean;
      
      protected var §&A§:Boolean;
      
      protected var §;"w§:Boolean;
      
      protected var §=#=§:§ #^§;
      
      protected var §9"3§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §?#Y§:MovieClip;
      
      protected var §[!+§:§6"w§;
      
      protected var §4#J§:§@#B§;
      
      protected var §try§:§^#]§;
      
      protected var §]!=§:String;
      
      public function §"!#§(param1:§ #^§, param2:§^#]§)
      {
         super();
         this.init(param1);
         this.§try§ = param2;
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§"!A§ = param1;
         this.refresh();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§&A§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§;"w§ = param1;
         this.refresh();
      }
      
      public function get active() : Boolean
      {
         return this.§;"w§;
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§=#=§ = param1;
         this.§"!A§ = true;
         this.§;"w§ = true;
         this.§]!=§ = §6"w§.§+!G§;
         this.§9"3§ = §^"m§(param1.getItemByName("Button_MightyEagle"));
         this.§'">§ = §0"$§(param1.getItemByName("MovieClip_GetMore"));
         this.§'">§.mClip.gotoAndStop(1);
         this.§'">§.mClip.mouseEnabled = false;
         this.§'">§.mClip.mouseChildren = false;
         this.§4j§ = new §5" §(param1.getItemByName("MovieClip_Counter").mClip);
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
         this.§=#=§.mClip.scaleY = 1;
         this.§=#=§.mClip.scaleX = 1;
         this.§=#=§.mClip.alpha = 1;
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§?#Y§ = param1.mClip.sparkles;
         this.§[!+§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         this.§[!+§.addEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§3J§(this.§[!+§.§#"0§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§[!+§.removeEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
         if(this.§%8§ != null)
         {
            this.§%8§.stop();
            this.§%8§ = null;
         }
      }
      
      public function isEagleUsed() : Boolean
      {
         return §8"f§(§,!q§.§9!,§).§8%§(this.§]!=§);
      }
      
      protected function refresh() : void
      {
         this.§4j§.count = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         this.§4j§.§ "r§ = this.§4#J§.§]"<§.§ #D§(this.§]!=§);
         if(this.§&A§ && this.§;"w§)
         {
            this.§9"3§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§9"3§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§9"3§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            this.§9"3§.setComponentVisualState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         this.§9"3§.setEnabled(this.§&A§ && this.§;"w§);
         this.§=#=§.mClip.visible = !this.§;"w§ ? false : Boolean(this.§"!A§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         if(!this.§;"w§)
         {
            return;
         }
         this.§"!A§ = false;
         if(this.§%8§)
         {
            this.§%8§.stop();
         }
         this.§%8§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%8§.onComplete = this.§-##§;
         this.§%8§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§%8§.play();
      }
      
      public function show(param1:Boolean = true) : void
      {
         if(!this.§;"w§)
         {
            return;
         }
         this.§"!A§ = true;
         this.§=#=§.mClip.visible = this.§"!A§;
         if(this.§%8§)
         {
            this.§%8§.stop();
         }
         var _loc2_:Object = !!param1 ? {
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         } : {
            "scaleX":1,
            "scaleY":1
         };
         this.§%8§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,_loc2_,null,0.25);
         this.§%8§.onComplete = this.§2!x§;
         this.§%8§.play();
      }
      
      protected function §4!D§(param1:§@!X§) : void
      {
         this.§3J§(param1.§6#R§);
      }
      
      protected function §3J§(param1:String) : void
      {
         if(!this.§&A§)
         {
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§]!=§)
         {
            this.§?#Y§.visible = true;
            this.§?#Y§.gotoAndPlay(1);
         }
         else
         {
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
         }
      }
      
      public function §1e§() : void
      {
         if(!this.§;"w§)
         {
            return;
         }
         this.§&A§ = false;
         this.§9"3§.setEnabled(this.§&A§);
         if(this.§%8§)
         {
            this.§%8§.stop();
         }
         this.§%8§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§%8§.play();
      }
      
      protected function §-##§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§0!M§));
      }
      
      protected function §2!x§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§<!§));
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         if(param1.§6#R§ == this.§]!=§)
         {
            this.refresh();
         }
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         if(param1)
         {
            param1.§^"P§();
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         if(!this.§;"w§)
         {
            return;
         }
         var _loc2_:Boolean = this.§4#J§.§]"<§.§ #D§(this.§]!=§);
         var _loc3_:int = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         if(param1.§=!k§.toUpperCase().indexOf("OVER_MIGHTY_EAGLE") == 0)
         {
            if(_loc3_ <= 0 && _loc2_ == false)
            {
               this.§'">§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§=!k§.toUpperCase().indexOf("OUT_MIGHTY_EAGLE") == 0)
         {
            this.§'">§.mClip.gotoAndStop(1);
         }
         if(param1.§=!k§.toUpperCase() == "MIGHTY_EAGLE")
         {
            if(_loc3_ <= 0 && _loc2_ == false)
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
         var _loc1_:int = this.§try§.§0"[§(this.§]!=§);
         var _loc2_:Boolean = _loc1_ == §^#]§.§5!&§ ? true : false;
         if(_loc2_)
         {
            dispatchEvent(new Event(§9"9§));
         }
      }
      
      private function §8O§() : void
      {
         var _loc1_:§[!j§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
         §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
   }
}
