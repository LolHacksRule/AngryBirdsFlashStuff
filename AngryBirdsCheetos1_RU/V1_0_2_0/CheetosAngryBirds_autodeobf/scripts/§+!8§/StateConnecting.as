package §+!8§
{
   import §"I§.§-x§;
   import §#J§.§,x§;
   import §#J§.§9^§;
   import §#J§.§]B§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§]d§;
   import §4!F§.§4m§;
   import §7L§.§9I§;
   import §8O§.§'S§;
   import §=g§.§3U§;
   import §@!W§.§8!W§;
   import §[]§.§+F§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §;A§ implements §9^§
   {
      
      public static const §,!+§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;M§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      private function §;M§() : void
      {
         if(§'S§.§^!+§ == null)
         {
            this.§>_§("User is null");
            return;
         }
         §8!W§.§-'§();
         this.callObject = {
            "type":§4m§.§"!2§,
            "sessionID":§4m§.§!J§(),
            "userID":§'S§.§^!+§.name
         };
         new §4m§(this.callObject,§@!!§.§1k§,this,§4m§.§5N§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §,x§.§%x§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§>_§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§>_§(returnObject.errorCode);
            }
            mNextState = §=f§.§,!+§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         if(param3 is §+F§)
         {
            if(param1 == §9I§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §3U§.§3!&§();
            }
            else if(param1 == §9I§.LISTENER_EVENT_MOUSE_UP)
            {
               §3U§.§8!S§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §;A§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §4m§.§"!2§)
         {
            §'S§.§^!+§ = null;
         }
      }
      
      private function §>_§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §4m§.§"!2§)
         {
            §'S§.§^!+§ = null;
         }
         §;A§.sCheetosPopups.showPopup(§]d§.ERROR,§]B§.getText("Error") + param1);
      }
   }
}
