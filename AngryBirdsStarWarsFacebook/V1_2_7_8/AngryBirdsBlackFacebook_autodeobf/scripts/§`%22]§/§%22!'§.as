package §`"]§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §#<§.§8!j§;
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
   
   public class §"!'§ extends EventDispatcher
   {
      
      public static const § 8§:String = "hide_complete";
      
      public static const §7# §:String = "show_complete";
      
      public static const §8#5§:String = "extra_bird_used";
       
      
      protected var §=!e§:§4!Q§;
      
      protected var §+O§:Number;
      
      protected var §!n§:Number;
      
      protected var §2!P§:Number;
      
      protected var §2%§:Boolean;
      
      protected var §=5§:§,m§;
      
      protected var §,G§:§2"8§;
      
      protected var §1'§:§<`§;
      
      protected var §`A§:§0!C§;
      
      protected var § J§:MovieClip;
      
      protected var §]S§:§-!w§;
      
      protected var §?r§:§,#!§;
      
      protected var §7!8§:§#f§;
      
      protected var §?§:String;
      
      private var §="J§:Boolean;
      
      protected var §^"N§:Boolean;
      
      protected var §'!k§:Boolean;
      
      protected var §%"g§:Number;
      
      protected var §-F§:§5!R§;
      
      protected var §5C§:MovieClip;
      
      public function §"!'§(param1:§,m§, param2:§,#!§)
      {
         super();
         this.§?r§ = param2;
         this.init(param1);
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
      
      public function set visible(param1:Boolean) : void
      {
         this.§'!k§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§'!k§;
      }
      
      public function get §@"-§() : Boolean
      {
         return this.§="J§;
      }
      
      public function set §@"-§(param1:Boolean) : void
      {
         this.§="J§ = param1;
         if(this.§="J§)
         {
            this.§44§();
         }
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§=5§ = param1;
         this.§+O§ = 5;
         this.§="J§ = false;
         this.§^"N§ = true;
         this.§'!k§ = true;
         this.§2%§ = false;
         this.§?§ = §#f§.§]"i§;
         this.§,G§ = §2"8§(param1.getItemByName("Button_ExtraBird"));
         this.§1'§ = §<`§(param1.getItemByName("MovieClip_GetMore"));
         this.§1'§.mClip.gotoAndStop(1);
         this.§1'§.mClip.mouseEnabled = false;
         this.§1'§.mClip.mouseChildren = false;
         this.§5C§ = param1.mClip.sparkles;
         this.§7!8§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         this.§7!8§.addEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§ J§ = this.§,G§.mClip.extraBird;
         this.§`A§ = new §0!C§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         this.§]S§.§=>§.addEventListener(§#"y§.§4f§,this.§ "[§);
         this.§=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§=5§.mClip.alpha = 1;
         this.§%"g§ = this.§=5§.mClip.scaleX;
         this.§!!8§(this.§7!8§.§^Z§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§-F§)
         {
            this.§-F§.removeEventListener(§8!j§.CLOSE,this.§1"3§);
         }
         this.§-F§ = null;
         this.§=5§.mClip.scaleX = this.§=5§.mClip.scaleY = this.§%"g§;
         this.§=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§]S§.§=>§.removeEventListener(§#"y§.§4f§,this.§ "[§);
         this.§7!8§.removeEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§?r§ = null;
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§=!e§ = null;
      }
      
      public function §=!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.§ J§.currentLabels.length)
         {
            if(param1 == this.§ J§.currentLabels[_loc3_].name)
            {
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            this.§ J§.gotoAndStop(param1);
         }
      }
      
      protected function refresh() : void
      {
         this.§`A§.count = this.§]S§.§=>§.§"!V§(this.§?§);
         this.§`A§.§1"r§ = this.§]S§.§=>§.§="&§(this.§?§);
         var _loc1_:Boolean = §6"@§(§;!e§.§<x§).§`#§(this.§?§);
         if(_loc1_)
         {
            this.§^"N§ = false;
         }
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
         this.§=5§.mClip.visible = this.§'!k§;
      }
      
      public function show() : void
      {
         this.§'!k§ = true;
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§=!e§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":this.§%"g§ * 1,
            "scaleY":this.§%"g§ * 1,
            "alpha":1
         },null,0.25);
         this.§=!e§.onComplete = this.§`!J§;
         this.§=!e§.play();
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§'!k§ = false;
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§=!e§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§=!e§.onComplete = this.§?";§;
         this.§=!e§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§=!e§.play();
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
      
      public function §<!!§(param1:Number = 5) : void
      {
         if(this.§="J§)
         {
            return;
         }
         this.§2%§ = true;
         this.§!n§ = param1 / (this.§+O§ * 2);
         this.§2!P§ = param1;
         this.§0c§();
      }
      
      public function §-!b§() : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§=5§.mClip.scaleY = 1;
         this.§=5§.mClip.scaleX = 1;
      }
      
      protected function §0c§() : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§2!P§ -= this.§!n§ * 2;
         if(this.§2!P§ <= 0)
         {
            return;
         }
         this.§=!e§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":this.§%"g§ * 1.2,
            "scaleY":this.§%"g§ * 1.2
         },null,this.§!n§);
         this.§=!e§.onComplete = this.§4#,§;
         this.§=!e§.play();
      }
      
      public function §4#,§() : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         this.§=!e§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":this.§%"g§ * 1,
            "scaleY":this.§%"g§ * 1
         },null,this.§!n§);
         this.§=!e§.onComplete = this.§0c§;
         this.§=!e§.play();
      }
      
      public function §""q§() : Boolean
      {
         if(this.§2%§ && !this.§=!e§.isPaused)
         {
            return true;
         }
         return false;
      }
      
      public function §["S§() : void
      {
         if(this.§=!e§ && this.§2%§)
         {
            this.§=!e§.pause();
         }
      }
      
      public function §^#2§() : void
      {
         if(this.§=!e§ && this.§2%§)
         {
            this.§=!e§.play();
         }
      }
      
      public function §44§() : void
      {
         this.§^"N§ = false;
         this.§,G§.setEnabled(this.§^"N§);
         this.§4N§(this.§=!e§);
         this.§=!e§ = §41§.§-G§.§&#'§(this.§=5§.mClip,{
            "scaleX":this.§%"g§ * 1,
            "scaleY":this.§%"g§ * 1,
            "alpha":0.5
         },null,0.5);
         this.§=!e§.play();
      }
      
      private function §4N§(param1:§4!Q§) : void
      {
         if(param1)
         {
            param1.§7!"§();
         }
      }
      
      private function § "[§(param1:§#"y§) : void
      {
         if(param1.§9u§ == this.§?§)
         {
            this.refresh();
         }
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
      
      public function onUIInteraction(param1:§4!4§) : void
      {
         if(this.§="J§)
         {
            return;
         }
         var _loc2_:Boolean = this.§]S§.§=>§.§="&§(this.§?§);
         var _loc3_:int = this.§]S§.§=>§.§"!V§(this.§?§);
         switch(param1.§84§.toUpperCase())
         {
            case "OVER_EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§1'§.mClip.gotoAndPlay("start");
               }
               this.§["S§();
               break;
            case "OUT_EXTRA_BIRD":
               this.§1'§.mClip.gotoAndStop(1);
               this.§^#2§();
               break;
            case "EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§&z§();
               }
               else
               {
                  this.§8"E§();
               }
               break;
            case "NEXT_LEVEL":
               this.hide(false);
         }
      }
      
      private function §8"E§() : void
      {
         var _loc1_:int = 0;
         if(this.§?r§)
         {
            _loc1_ = this.§?r§.§8"E§(this.§?§);
            this.§="J§ = _loc1_ == §,#!§.§@"S§ ? true : false;
            if(this.§="J§)
            {
               this.§44§();
               dispatchEvent(new Event(§8#5§));
            }
         }
      }
      
      private function §&z§() : void
      {
         this.§-F§ = new §<! §(§0u§.§]!?§,§^T§.§0O§,§[##§.§9"U§,this.§?§);
         §;"@§.singleton.popupManager.openPopup(this.§-F§,true,true,true);
         this.§-F§.addEventListener(§8!j§.CLOSE,this.§1"3§);
      }
      
      private function §1"3§(param1:§8!j§) : void
      {
         if(this.§-F§)
         {
            this.§-F§.removeEventListener(§8!j§.CLOSE,this.§1"3§);
         }
         this.§-F§ = null;
         var _loc2_:int = this.§]S§.§=>§.§"!V§(this.§?§);
         if(_loc2_ > 0)
         {
            this.§8"E§();
         }
      }
   }
}
