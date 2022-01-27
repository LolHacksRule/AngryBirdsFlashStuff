package §="8§
{
   import §""d§.§2"8§;
   import §#!k§.§4!4§;
   import §1!o§.§#"y§;
   import §4##§.§7!Y§;
   import §5!q§.§6"@§;
   import §5!q§.§>o§;
   import §7""§.§0!C§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class § k§ extends EventDispatcher
   {
      
      public static const §6!z§:String = "last_received_changed";
       
      
      private var §?§:String;
      
      private var §1!?§:Boolean;
      
      private var §0"g§:Boolean;
      
      protected var §4L§:§2"8§;
      
      protected var § J§:MovieClip;
      
      protected var §`A§:§0!C§;
      
      protected var §>!X§:MovieClip;
      
      protected var §5C§:MovieClip;
      
      protected var §7!8§:§#f§;
      
      public function § k§(param1:§2"8§, param2:String)
      {
         super();
         this.§4L§ = param1;
         this.§?§ = param2;
         this.init();
         this.refresh();
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§1!?§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§1!?§;
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set count(param1:int) : void
      {
         this.§`A§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§`A§.count;
      }
      
      public function get §=!]§() : Boolean
      {
         return this.§0"g§;
      }
      
      protected function init() : void
      {
         this.§0"g§ = false;
         this.§ J§ = this.§4L§.mClip.icon;
         this.§>!X§ = this.§4L§.mClip.getMore;
         this.§`A§ = new §0!C§(this.§4L§.mClip.count);
         this.§5C§ = this.§4L§.mClip.sparkles;
         this.§1!?§ = false;
         this.§7!8§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         this.§7!8§.addEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§!!8§(this.§7!8§.§^Z§);
         this.§4L§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§4L§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§7!8§.removeEventListener(§#"y§.§!!Q§,this.§0m§);
         this.§7!8§ = null;
      }
      
      public function refresh() : void
      {
         var buttonDisabled:Boolean = this.§1!?§;
         var usedPowerups:int = §6"@§(§;!e§.§<x§).§]"4§();
         if(usedPowerups >= §>o§.§[!!§)
         {
            buttonDisabled = true;
         }
         var thisPowerupIsUsed:Boolean = §6"@§(§;!e§.§<x§).§`#§(this.dataID);
         if(thisPowerupIsUsed)
         {
            buttonDisabled = true;
         }
         this.§1!?§ = buttonDisabled;
         if(this.§?§)
         {
            try
            {
               this.§ J§.gotoAndStop(this.§?§.toLowerCase());
            }
            catch(e:Error)
            {
               § J§.gotoAndStop(0);
            }
         }
         else
         {
            this.§ J§.gotoAndStop(0);
         }
         this.§`A§.§1"r§ = §-!w§(§;"@§.singleton.dataModel).§=>§.§="&§(this.§?§);
         if(this.§`A§.count <= 0 && !this.§`A§.§1"r§)
         {
            this.§>!X§.gotoAndStop(1);
            this.§>!X§.visible = true;
         }
         else
         {
            this.§>!X§.gotoAndStop(1);
            this.§>!X§.visible = false;
         }
         if(this.§1!?§)
         {
            this.§4L§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§4L§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      protected function §0m§(param1:§#"y§) : void
      {
         this.§!!8§(param1.§9u§);
      }
      
      protected function §!!8§(param1:String) : void
      {
         if(this.§1!?§)
         {
            this.§0"g§ = false;
            this.§5C§.visible = false;
            this.§5C§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§?§)
         {
            this.§0"g§ = true;
            this.§5C§.visible = true;
            this.§5C§.gotoAndPlay(1);
         }
         else
         {
            this.§0"g§ = false;
            this.§5C§.visible = false;
            this.§5C§.gotoAndStop(1);
         }
         dispatchEvent(new Event(§6!z§));
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         var _loc2_:Boolean = §-!w§(§;"@§.singleton.dataModel).§=>§.§="&§(this.§?§);
         if(param1.§84§.toUpperCase().indexOf("OVER_POWERUP") == 0)
         {
            if(this.§`A§.count <= 0 && _loc2_ == false)
            {
               this.§>!X§.gotoAndPlay("start");
            }
         }
         if(param1.§84§.toUpperCase().indexOf("OUT_POWERUP") == 0)
         {
            this.§>!X§.gotoAndStop(1);
         }
      }
      
      private function §]!e§(param1:Number) : String
      {
         var _loc2_:* = null;
         param1 = Math.min(param1,99000000);
         if(param1 >= 100000)
         {
            param1 /= 1000000;
            _loc2_ = param1.toPrecision(2).slice(0,3) + "M";
         }
         else if(param1 >= 1000)
         {
            param1 /= 1000;
            _loc2_ = param1.toPrecision(2) + "k";
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return _loc2_;
      }
   }
}
