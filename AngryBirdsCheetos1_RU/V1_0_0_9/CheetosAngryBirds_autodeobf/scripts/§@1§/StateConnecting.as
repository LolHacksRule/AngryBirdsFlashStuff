package §@1§
{
   import § !X§.§+2§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §-!6§.§3M§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §8!#§.§6G§;
   import §<!P§.§>l§;
   import §>!1§.§!!Q§;
   import §>!1§.§9A§;
   import §>!1§.§>!A§;
   import §^!0§.§0!2§;
   import §^r§.§>`§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §]R§ implements §>!A§
   {
      
      public static const §]U§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§+Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      private function §+Q§() : void
      {
         if(§6G§.§+J§ == null)
         {
            this.§7!R§("User is null");
            return;
         }
         §2!7§.§9!V§();
         this.callObject = {
            "type":§0!2§.§`l§,
            "sessionID":§0!2§.§;!#§(),
            "userID":§6G§.§+J§.name
         };
         new §0!2§(this.callObject,§+§.§-o§,this,§0!2§.§^!O§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §!!Q§.§+!!§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§7!R§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§7!R§(returnObject.errorCode);
            }
            mNextState = §05§.§]U§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         if(param3 is §,!>§)
         {
            if(param1 == §>`§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §3M§.§'!;§();
            }
            else if(param1 == §>`§.LISTENER_EVENT_MOUSE_UP)
            {
               §3M§.§+8§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §]R§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §0!2§.§`l§)
         {
            §6G§.§+J§ = null;
         }
      }
      
      private function §7!R§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §0!2§.§`l§)
         {
            §6G§.§+J§ = null;
         }
         §]R§.sCheetosPopups.showPopup(§+2§.ERROR,§9A§.getText("Error") + param1);
      }
   }
}
