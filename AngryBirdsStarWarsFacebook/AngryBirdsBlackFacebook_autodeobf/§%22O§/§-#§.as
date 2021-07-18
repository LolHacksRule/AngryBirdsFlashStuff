package §"O§
{
   import §!"W§.§@!X§;
   import §+!c§.§5" §;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §^#>§.§15§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §-#§ extends EventDispatcher
   {
      
      public static const §8"C§:String = "last_received_changed";
       
      
      private var §]!=§:String;
      
      private var §]"u§:Boolean;
      
      private var §'#4§:Boolean;
      
      protected var §##K§:§^"m§;
      
      protected var §5"0§:MovieClip;
      
      protected var §4j§:§5" §;
      
      protected var §!!G§:MovieClip;
      
      protected var §?#Y§:MovieClip;
      
      protected var §[!+§:§6"w§;
      
      public function §-#§(param1:§^"m§, param2:String)
      {
         super();
         this.§##K§ = param1;
         this.§]!=§ = param2;
         this.init();
         this.refresh();
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§]"u§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set count(param1:int) : void
      {
         this.§4j§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§4j§.count;
      }
      
      public function get §'"Q§() : Boolean
      {
         return this.§'#4§;
      }
      
      protected function init() : void
      {
         this.§'#4§ = false;
         this.§5"0§ = this.§##K§.mClip.icon;
         this.§!!G§ = this.§##K§.mClip.getMore;
         this.§4j§ = new §5" §(this.§##K§.mClip.count);
         this.§?#Y§ = this.§##K§.mClip.sparkles;
         this.§]"u§ = false;
         this.§[!+§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         this.§[!+§.addEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§3J§(this.§[!+§.§#"0§);
         this.§##K§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§##K§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§[!+§.removeEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§[!+§ = null;
      }
      
      public function refresh() : void
      {
         var buttonDisabled:Boolean = this.§]"u§;
         var usedPowerups:int = §8"f§(§,!q§.§9!,§).§2!o§();
         if(usedPowerups >= §15§.§5u§)
         {
            buttonDisabled = true;
         }
         var thisPowerupIsUsed:Boolean = §8"f§(§,!q§.§9!,§).§8%§(this.dataID);
         if(thisPowerupIsUsed)
         {
            buttonDisabled = true;
         }
         this.§]"u§ = buttonDisabled;
         if(this.§]!=§)
         {
            try
            {
               this.§5"0§.gotoAndStop(this.§]!=§.toLowerCase());
            }
            catch(e:Error)
            {
               §5"0§.gotoAndStop(0);
            }
         }
         else
         {
            this.§5"0§.gotoAndStop(0);
         }
         this.§4j§.§ "r§ = §@#B§(§4#;§.singleton.dataModel).§]"<§.§ #D§(this.§]!=§);
         if(this.§4j§.count <= 0 && !this.§4j§.§ "r§)
         {
            this.§!!G§.gotoAndStop(1);
            this.§!!G§.visible = true;
         }
         else
         {
            this.§!!G§.gotoAndStop(1);
            this.§!!G§.visible = false;
         }
         if(this.§]"u§)
         {
            this.§##K§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§##K§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      protected function §4!D§(param1:§@!X§) : void
      {
         this.§3J§(param1.§6#R§);
      }
      
      protected function §3J§(param1:String) : void
      {
         if(this.§]"u§)
         {
            this.§'#4§ = false;
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§]!=§)
         {
            this.§'#4§ = true;
            this.§?#Y§.visible = true;
            this.§?#Y§.gotoAndPlay(1);
         }
         else
         {
            this.§'#4§ = false;
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
         }
         dispatchEvent(new Event(§8"C§));
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc2_:Boolean = §@#B§(§4#;§.singleton.dataModel).§]"<§.§ #D§(this.§]!=§);
         if(param1.§=!k§.toUpperCase().indexOf("OVER_POWERUP") == 0)
         {
            if(this.§4j§.count <= 0 && _loc2_ == false)
            {
               this.§!!G§.gotoAndPlay("start");
            }
         }
         if(param1.§=!k§.toUpperCase().indexOf("OUT_POWERUP") == 0)
         {
            this.§!!G§.gotoAndStop(1);
         }
      }
      
      private function §6!&§(param1:Number) : String
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
