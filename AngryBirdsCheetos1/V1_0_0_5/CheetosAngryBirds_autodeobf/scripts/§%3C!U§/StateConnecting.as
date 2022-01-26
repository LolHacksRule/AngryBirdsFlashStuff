package §<!U§
{
   import §!J§.§[&§;
   import §&N§.§6§;
   import §'G§.§false§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§@R§;
   import §0!>§.§-i§;
   import §0!>§.§1!#§;
   import §0!>§.§=w§;
   import §2e§.§4!E§;
   import §3!C§.§3o§;
   import §4!H§.§[4§;
   import §?!1§.§+a§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §]u§ implements §-i§
   {
      
      public static const §`O§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9U§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      private function §9U§() : void
      {
         if(§3o§.§-j§ == null)
         {
            this.§<p§("User is null");
            return;
         }
         §[&§.§[]§();
         this.callObject = {
            "type":§4!E§.§!!I§,
            "sessionID":§4!E§.§0E§(),
            "userID":§3o§.§-j§.name
         };
         new §4!E§(this.callObject,§,l§.§2!!§,this,§4!E§.§;4§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §=w§.§`m§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§<p§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§<p§(returnObject.errorCode);
            }
            mNextState = §6l§.§`O§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         if(param3 is §false§)
         {
            if(param1 == §@R§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §6§.§@!Y§();
            }
            else if(param1 == §@R§.LISTENER_EVENT_MOUSE_UP)
            {
               §6§.§%!@§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §]u§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §4!E§.§!!I§)
         {
            §3o§.§-j§ = null;
         }
      }
      
      private function §<p§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §4!E§.§!!I§)
         {
            §3o§.§-j§ = null;
         }
         §]u§.sCheetosPopups.showPopup(§+a§.ERROR,§1!#§.getText("Error") + param1);
      }
   }
}
