package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §>^§.§;!P§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §?,§ implements §7Z§
   {
      
      public static const §3!?§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,O§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      private function §,O§() : void
      {
         if(§>f§.§%!`§ == null)
         {
            this.§+!D§("User is null");
            return;
         }
         mNextState = §39§.§3!?§;
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§+!D§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§+!D§(returnObject.errorCode);
            }
            mNextState = §39§.§3!?§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         if(param3 is §^-§)
         {
            if(param1 == §08§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §;!P§.§3l§();
            }
            else if(param1 == §08§.LISTENER_EVENT_MOUSE_UP)
            {
               §;!P§.§ !>§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §?,§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §+!D§(param1:*) : void
      {
         §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error") + param1);
      }
   }
}
