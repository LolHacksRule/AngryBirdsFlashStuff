package §&!c§
{
   import §"§.§ !3§;
   import §"§.§0F§;
   import §8!h§.§%"z§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=!4§.§8"U§;
   import §=Z§.§;g§;
   import §?!u§.§?b§;
   import §`"]§.§?"f§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §[!z§ extends EventDispatcher
   {
      
      public static const §?"8§:String = "last_received_changed";
       
      
      private var §-""§:String;
      
      private var §2@§:Boolean;
      
      private var §8!^§:Boolean;
      
      protected var §@!=§:§;g§;
      
      protected var §#!q§:MovieClip;
      
      protected var §+!s§:§?"f§;
      
      protected var §-"D§:MovieClip;
      
      protected var §6!§:MovieClip;
      
      protected var §""#§:§[!b§;
      
      public function §[!z§(param1:§;g§, param2:String)
      {
         super();
         this.§@!=§ = param1;
         this.§-""§ = param2;
         this.init();
         this.refresh();
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§2@§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§2@§;
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set count(param1:int) : void
      {
         this.§+!s§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§+!s§.count;
      }
      
      public function get §^<§() : Boolean
      {
         return this.§8!^§;
      }
      
      protected function init() : void
      {
         this.§8!^§ = false;
         this.§#!q§ = this.§@!=§.mClip.icon;
         this.§-"D§ = this.§@!=§.mClip.getMore;
         this.§+!s§ = new §?"f§(this.§@!=§.mClip.count);
         this.§6!§ = this.§@!=§.mClip.sparkles;
         this.§2@§ = false;
         this.§""#§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         this.§""#§.addEventListener(§?b§.§in §,this.§!&§);
         this.§ "5§(this.§""#§.§1!O§);
         this.§@!=§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
      }
      
      public function dispose() : void
      {
         this.§@!=§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§""#§.removeEventListener(§?b§.§in §,this.§!&§);
         this.§""#§ = null;
      }
      
      public function refresh() : void
      {
         var buttonDisabled:Boolean = this.§2@§;
         var usedPowerups:int = §0F§(§<!J§.§=!%§).§;!5§();
         if(usedPowerups >= § !3§.§3!<§)
         {
            buttonDisabled = true;
         }
         var thisPowerupIsUsed:Boolean = §0F§(§<!J§.§=!%§).§"Y§(this.dataID);
         if(thisPowerupIsUsed)
         {
            buttonDisabled = true;
         }
         this.§2@§ = buttonDisabled;
         if(this.§-""§)
         {
            try
            {
               this.§#!q§.gotoAndStop(this.§-""§.toLowerCase());
            }
            catch(e:Error)
            {
               §#!q§.gotoAndStop(0);
            }
         }
         else
         {
            this.§#!q§.gotoAndStop(0);
         }
         this.§+!s§.§ var§ = §7"1§(§4"#§.singleton.dataModel).§@!K§.§5!<§(this.§-""§);
         if(this.§+!s§.count <= 0 && !this.§+!s§.§ var§)
         {
            this.§-"D§.gotoAndStop(1);
            this.§-"D§.visible = true;
         }
         else
         {
            this.§-"D§.gotoAndStop(1);
            this.§-"D§.visible = false;
         }
         if(this.§2@§)
         {
            this.§@!=§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§@!=§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      protected function §!&§(param1:§?b§) : void
      {
         this.§ "5§(param1.§8!#§);
      }
      
      protected function § "5§(param1:String) : void
      {
         if(this.§2@§)
         {
            this.§8!^§ = false;
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§-""§)
         {
            this.§8!^§ = true;
            this.§6!§.visible = true;
            this.§6!§.gotoAndPlay(1);
         }
         else
         {
            this.§8!^§ = false;
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
         }
         dispatchEvent(new Event(§?"8§));
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         var _loc2_:Boolean = §7"1§(§4"#§.singleton.dataModel).§@!K§.§5!<§(this.§-""§);
         if(param1.§5!u§.toUpperCase().indexOf("OVER_POWERUP") == 0)
         {
            if(this.§+!s§.count <= 0 && _loc2_ == false)
            {
               this.§-"D§.gotoAndPlay("start");
            }
         }
         if(param1.§5!u§.toUpperCase().indexOf("OUT_POWERUP") == 0)
         {
            this.§-"D§.gotoAndStop(1);
         }
      }
      
      private function § !v§(param1:Number) : String
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
