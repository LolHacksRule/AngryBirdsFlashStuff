package §,!?§
{
   import §"!S§.§"_§;
   import §%t§.§9!X§;
   import §-!O§.§7'§;
   import §82§.§&A§;
   import §9!Z§.§<!W§;
   import §;!<§.§"$§;
   import §;!<§.§-U§;
   import §;!<§.§6C§;
   import §]!&§.§#?§;
   import §]!5§.§-!3§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §^!!§.§'!_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §-! § implements §"$§
   {
      
      public static const §@B§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'!2§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      private function §'!2§() : void
      {
         if(§'!_§.§=!"§ == null)
         {
            this.§=;§("User is null");
            return;
         }
         §"_§.§5q§();
         this.callObject = {
            "type":§&A§.§11§,
            "sessionID":§&A§.§?![§(),
            "userID":§'!_§.§=!"§.name
         };
         new §&A§(this.callObject,§2!-§.§0!=§,this,§&A§.§6!Q§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §-U§.§[f§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§=;§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§=;§(returnObject.errorCode);
            }
            mNextState = §&c§.§@B§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         if(param3 is §#?§)
         {
            if(param1 == §-!3§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9!X§.§[y§();
            }
            else if(param1 == §-!3§.LISTENER_EVENT_MOUSE_UP)
            {
               §9!X§.§3N§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §-! §.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §&A§.§11§)
         {
            §'!_§.§=!"§ = null;
         }
      }
      
      private function §=;§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §&A§.§11§)
         {
            §'!_§.§=!"§ = null;
         }
         §-! §.sCheetosPopups.showPopup(§<!W§.ERROR,§6C§.getText("Error") + param1);
      }
   }
}
