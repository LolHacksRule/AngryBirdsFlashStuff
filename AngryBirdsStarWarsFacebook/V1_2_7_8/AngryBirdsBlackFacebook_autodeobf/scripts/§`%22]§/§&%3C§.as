package §`"]§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §1!o§.§#"y§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §5!q§.§6"@§;
   import §7""§.§0!C§;
   import §7#+§.§[##§;
   import §<"s§.§0u§;
   import §="8§.§,#!§;
   import §^9§.§<! §;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §&<§ extends EventDispatcher
   {
      
      public static const §-f§:String = "mighty_eagle_used";
      
      public static const § 8§:String = "hide_complete";
      
      public static const §7# §:String = "show_complete";
      
      private static const §<!i§:String = "infinite";
      
      private static const §]!`§:String = "normal";
       
      
      protected var §5"P§:§4!Q§;
      
      protected var §'!k§:Boolean;
      
      protected var §^"N§:Boolean;
      
      protected var §@"r§:Boolean;
      
      protected var §=5§:§,m§;
      
      protected var §8!?§:§2"8§;
      
      protected var §1'§:§<`§;
      
      protected var §`A§:§0!C§;
      
      protected var §5C§:MovieClip;
      
      protected var §7!8§:§#f§;
      
      protected var §]S§:§-!w§;
      
      protected var §?r§:§,#!§;
      
      protected var §?§:String;
      
      public function §&<§(param1:§,m§, param2:§,#!§)
      {
         super();
         this.init(param1);
         this.§?r§ = param2;
      }
      
      public function get visible() : Boolean
      {
         return this.§'!k§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§'!k§ = param1;
         this.refresh();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§^"N§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§^"N§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§@"r§ = param1;
         this.refresh();
      }
      
      public function get active() : Boolean
      {
         return this.§@"r§;
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§=5§ = param1;
         this.§'!k§ = true;
         this.§@"r§ = true;
         this.§?§ = §#f§.§"X§;
         this.§8!?§ = §2"8§(param1.getItemByName("Button_MightyEagle"));
         this.§1'§ = §<`§(param1.getItemByName("MovieClip_GetMore"));
         this.§1'§.mClip.gotoAndStop(1);
         this.§1'§.mClip.mouseEnabled = false;
         this.§1'§.mClip.mouseChildren = false;
         this.§`A§ = new §0!C§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         this.§]S§.§=>§.addEventListener(§#"y§.§4f§,this.§ "[§);
         this.§=5§.mClip.scaleY = 1;
         this.§=5§.mClip.scaleX = 1;
         this.§=5§.mClip.alpha = 1;
         this.§=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§5C§ = param1.mClip.sparkles;
         this.§7!8§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         this.§7!8§.addEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§!!8§(this.§7!8§.§^Z§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         this.§7!8§.removeEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§]S§.§=>§.removeEventListener(§#"y§.§4f§,this.§ "[§);
         if(this.§5"P§ != null)
         {
            this.§5"P§.stop();
            this.§5"P§ = null;
         }
      }
      
      public function isEagleUsed() : Boolean
      {
         return §6"@§(§;!e§.§<x§).§`#§(this.§?§);
      }
      
      protected function refresh() : void
      {
         this.§`A§.count = this.§]S§.§=>§.§"!V§(this.§?§);
         this.§`A§.§1"r§ = this.§]S§.§=>§.§="&§(this.§?§);
         if(this.§^"N§ && this.§@"r§)
         {
            this.§8!?§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§8!?§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§8!?§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            this.§8!?§.setComponentVisualState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         this.§8!?§.setEnabled(this.§^"N§ && this.§@"r§);
         this.§=5§.mClip.visible = !this.§@"r§ ? false : Boolean(this.§'!k§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         if(!this.§@"r§)
         {
            return;
         }
         this.§'!k§ = false;
         if(this.§5"P§)
         {
            this.§5"P§.stop();
         }
         this.§5"P§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§5"P§.onComplete = this.§?";§;
         this.§5"P§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§5"P§.play();
      }
      
      public function show(param1:Boolean = true) : void
      {
         if(!this.§@"r§)
         {
            return;
         }
         this.§'!k§ = true;
         this.§=5§.mClip.visible = this.§'!k§;
         if(this.§5"P§)
         {
            this.§5"P§.stop();
         }
         var _loc2_:Object = !!param1 ? {
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         } : {
            "scaleX":1,
            "scaleY":1
         };
         this.§5"P§ = §41§.§-G§.§&#'§(this.§=5§.mClip,_loc2_,null,0.25);
         this.§5"P§.onComplete = this.§`!J§;
         this.§5"P§.play();
      }
      
      protected function §0m§(param1:§#"y§) : void
      {
         this.§!!8§(param1.§9u§);
      }
      
      protected function §!!8§(param1:String) : void
      {
         if(!this.§^"N§)
         {
            this.§5C§.visible = false;
            this.§5C§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§?§)
         {
            this.§5C§.visible = true;
            this.§5C§.gotoAndPlay(1);
         }
         else
         {
            this.§5C§.visible = false;
            this.§5C§.gotoAndStop(1);
         }
      }
      
      public function §44§() : void
      {
         if(!this.§@"r§)
         {
            return;
         }
         this.§^"N§ = false;
         this.§8!?§.setEnabled(this.§^"N§);
         if(this.§5"P§)
         {
            this.§5"P§.stop();
         }
         this.§5"P§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§5"P§.play();
      }
      
      protected function §?";§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§ 8§));
      }
      
      protected function §`!J§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§7# §));
      }
      
      private function § "[§(param1:§#"y§) : void
      {
         if(param1.§9u§ == this.§?§)
         {
            this.refresh();
         }
      }
      
      private function §4N§(param1:§4!Q§) : void
      {
         if(param1)
         {
            param1.§7!"§();
         }
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         if(!this.§@"r§)
         {
            return;
         }
         var _loc2_:Boolean = this.§]S§.§=>§.§="&§(this.§?§);
         var _loc3_:int = this.§]S§.§=>§.§"!V§(this.§?§);
         if(param1.§84§.toUpperCase().indexOf("OVER_MIGHTY_EAGLE") == 0)
         {
            if(_loc3_ <= 0 && _loc2_ == false)
            {
               this.§1'§.mClip.gotoAndPlay("start");
            }
         }
         if(param1.§84§.toUpperCase().indexOf("OUT_MIGHTY_EAGLE") == 0)
         {
            this.§1'§.mClip.gotoAndStop(1);
         }
         if(param1.§84§.toUpperCase() == "MIGHTY_EAGLE")
         {
            if(_loc3_ <= 0 && _loc2_ == false)
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
         var _loc1_:int = this.§?r§.§8"E§(this.§?§);
         var _loc2_:Boolean = _loc1_ == §,#!§.§@"S§ ? true : false;
         if(_loc2_)
         {
            dispatchEvent(new Event(§-f§));
         }
      }
      
      private function §&z§() : void
      {
         var _loc1_:§5!R§ = new §<! §(§0u§.§]!?§,§^T§.§0O§,§[##§.§9"U§,this.§?§);
         §;"@§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
   }
}
