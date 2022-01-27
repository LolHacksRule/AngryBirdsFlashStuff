package §4"k§
{
   import §"§.§0F§;
   import §"[§.§""h§;
   import §&!c§.§5!m§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §4"m§.§>" §;
   import §8!h§.§%"z§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§?b§;
   import §`"]§.§?"f§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §?"B§ extends EventDispatcher
   {
      
      public static const §+"t§:String = "mighty_eagle_used";
      
      public static const dynamic:String = "hide_complete";
      
      public static const §>"]§:String = "show_complete";
      
      private static const §"7§:String = "infinite";
      
      private static const §"!R§:String = "normal";
       
      
      protected var §%"h§:§%b§;
      
      protected var § !Q§:Boolean;
      
      protected var §,%§:Boolean;
      
      protected var §["1§:Boolean;
      
      protected var §3!m§:§@!8§;
      
      protected var §&"W§:§;g§;
      
      protected var §0!>§:§9!c§;
      
      protected var §+!s§:§?"f§;
      
      protected var §6!§:MovieClip;
      
      protected var §""#§:§[!b§;
      
      protected var §?!$§:§7"1§;
      
      protected var §,#,§:§5!m§;
      
      protected var §-""§:String;
      
      public function §?"B§(param1:§@!8§, param2:§5!m§)
      {
         super();
         this.init(param1);
         this.§,#,§ = param2;
      }
      
      public function get visible() : Boolean
      {
         return this.§ !Q§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§ !Q§ = param1;
         this.refresh();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§,%§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§,%§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§["1§ = param1;
         this.refresh();
      }
      
      public function get active() : Boolean
      {
         return this.§["1§;
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§3!m§ = param1;
         this.§ !Q§ = true;
         this.§["1§ = true;
         this.§-""§ = §[!b§.§9!m§;
         this.§&"W§ = §;g§(param1.getItemByName("Button_MightyEagle"));
         this.§0!>§ = §9!c§(param1.getItemByName("MovieClip_GetMore"));
         this.§0!>§.mClip.gotoAndStop(1);
         this.§0!>§.mClip.mouseEnabled = false;
         this.§0!>§.mClip.mouseChildren = false;
         this.§+!s§ = new §?"f§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         this.§?!$§.§@!K§.addEventListener(§?b§.§6,§,this.§2"s§);
         this.§3!m§.mClip.scaleY = 1;
         this.§3!m§.mClip.scaleX = 1;
         this.§3!m§.mClip.alpha = 1;
         this.§3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§6!§ = param1.mClip.sparkles;
         this.§""#§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         this.§""#§.addEventListener(§?b§.§in §,this.§!&§);
         this.§ "5§(this.§""#§.§1!O§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§""#§.removeEventListener(§?b§.§in §,this.§!&§);
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§?!$§.§@!K§.removeEventListener(§?b§.§6,§,this.§2"s§);
         if(this.§%"h§ != null)
         {
            this.§%"h§.stop();
            this.§%"h§ = null;
         }
      }
      
      public function isEagleUsed() : Boolean
      {
         return §0F§(§<!J§.§=!%§).§"Y§(this.§-""§);
      }
      
      protected function refresh() : void
      {
         this.§+!s§.count = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         this.§+!s§.§ var§ = this.§?!$§.§@!K§.§5!<§(this.§-""§);
         if(this.§,%§ && this.§["1§)
         {
            this.§&"W§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§&"W§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§&"W§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            this.§&"W§.setComponentVisualState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         this.§&"W§.setEnabled(this.§,%§ && this.§["1§);
         this.§3!m§.mClip.visible = !this.§["1§ ? false : Boolean(this.§ !Q§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         if(!this.§["1§)
         {
            return;
         }
         this.§ !Q§ = false;
         if(this.§%"h§)
         {
            this.§%"h§.stop();
         }
         this.§%"h§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%"h§.onComplete = this.§]!t§;
         this.§%"h§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§%"h§.play();
      }
      
      public function show(param1:Boolean = true) : void
      {
         if(!this.§["1§)
         {
            return;
         }
         this.§ !Q§ = true;
         this.§3!m§.mClip.visible = this.§ !Q§;
         if(this.§%"h§)
         {
            this.§%"h§.stop();
         }
         var _loc2_:Object = !!param1 ? {
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         } : {
            "scaleX":1,
            "scaleY":1
         };
         this.§%"h§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,_loc2_,null,0.25);
         this.§%"h§.onComplete = this.§+m§;
         this.§%"h§.play();
      }
      
      protected function §!&§(param1:§?b§) : void
      {
         this.§ "5§(param1.§8!#§);
      }
      
      protected function § "5§(param1:String) : void
      {
         if(!this.§,%§)
         {
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§-""§)
         {
            this.§6!§.visible = true;
            this.§6!§.gotoAndPlay(1);
         }
         else
         {
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
         }
      }
      
      public function §#"8§() : void
      {
         if(!this.§["1§)
         {
            return;
         }
         this.§,%§ = false;
         this.§&"W§.setEnabled(this.§,%§);
         if(this.§%"h§)
         {
            this.§%"h§.stop();
         }
         this.§%"h§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§%"h§.play();
      }
      
      protected function §]!t§() : void
      {
         this.refresh();
         dispatchEvent(new Event(dynamic));
      }
      
      protected function §+m§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§>"]§));
      }
      
      private function §2"s§(param1:§?b§) : void
      {
         if(param1.§8!#§ == this.§-""§)
         {
            this.refresh();
         }
      }
      
      private function §'Y§(param1:§%b§) : void
      {
         if(param1)
         {
            param1.§=!L§();
         }
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         if(!this.§["1§)
         {
            return;
         }
         var _loc2_:Boolean = this.§?!$§.§@!K§.§5!<§(this.§-""§);
         var _loc3_:int = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         if(param1.§5!u§.toUpperCase().indexOf("OVER_MIGHTY_EAGLE") == 0)
         {
            if(_loc3_ <= 0 && _loc2_ == false)
            {
               this.§0!>§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§5!u§.toUpperCase().indexOf("OUT_MIGHTY_EAGLE") == 0)
         {
            this.§0!>§.mClip.gotoAndStop(1);
         }
         if(param1.§5!u§.toUpperCase() == "MIGHTY_EAGLE")
         {
            if(_loc3_ <= 0 && _loc2_ == false)
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
         var _loc1_:int = this.§,#,§.§ #,§(this.§-""§);
         var _loc2_:Boolean = _loc1_ == §5!m§.§"!g§ ? true : false;
         if(_loc2_)
         {
            dispatchEvent(new Event(§+"t§));
         }
      }
      
      private function § "[§() : void
      {
         var _loc1_:§3!§ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§,§""h§.§%!m§,this.§-""§);
         §4"#§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
   }
}
