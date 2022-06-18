package §'Q§
{
   import §!!S§.§^P§;
   import §3!M§.§`!;§;
   import §4!R§.§@,§;
   import §6=§.§`!<§;
   import §;!X§.§7`§;
   import §?!F§.§0!Y§;
   import §@w§.§1§;
   import §[I§.§5y§;
   import §[I§.§8!B§;
   import §[I§.§;!K§;
   import §^!&§.§#U§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §=!R§ implements §5y§
   {
      
      public static const §1o§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>W§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      private function §>W§() : void
      {
         if(§@,§.§&!;§ == null)
         {
            this.§6+§("User is null");
            return;
         }
         §7`§.§,-§();
         this.callObject = {
            "type":§1§.§"!U§,
            "sessionID":§1§.§3!B§(),
            "userID":§@,§.§&!;§.name
         };
         new §1§(this.callObject,§4+§.§[![§,this,§1§.§>!V§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §;!K§.§#[§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§6+§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§6+§(returnObject.errorCode);
            }
            mNextState = §@Q§.§1o§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         if(param3 is §`!;§)
         {
            if(param1 == §^P§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §#U§.§@!%§();
            }
            else if(param1 == §^P§.LISTENER_EVENT_MOUSE_UP)
            {
               §#U§.§@s§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §=!R§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §1§.§"!U§)
         {
            §@,§.§&!;§ = null;
         }
      }
      
      private function §6+§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §1§.§"!U§)
         {
            §@,§.§&!;§ = null;
         }
         §=!R§.sCheetosPopups.showPopup(§`!<§.ERROR,§8!B§.getText("Error") + param1);
      }
   }
}
