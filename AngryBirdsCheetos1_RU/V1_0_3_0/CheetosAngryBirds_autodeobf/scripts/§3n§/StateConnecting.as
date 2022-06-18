package §3n§
{
   import §!q§.§!!B§;
   import §#h§.§]!"§;
   import §#h§.§^!+§;
   import §#h§.§break§;
   import §+!^§.§'Y§;
   import §0L§.§&Y§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §7!P§.§[!1§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §?>§.§!&§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §<D§ implements §break§
   {
      
      public static const §,F§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§0@§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      private function §0@§() : void
      {
         if(§&Y§.§>!_§ == null)
         {
            this.§6v§("User is null");
            return;
         }
         §'Y§.§ D§();
         this.callObject = {
            "type":§!!B§.§-X§,
            "sessionID":§!!B§.§4V§(),
            "userID":§&Y§.§>!_§.name
         };
         new §!!B§(this.callObject,§7!^§.§"!E§,this,§!!B§.§9!Y§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §]!"§.§5A§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§6v§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§6v§(returnObject.errorCode);
            }
            mNextState = §-'§.§,F§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         if(param3 is §!&§)
         {
            if(param1 == §-!6§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §[!1§.§5!@§();
            }
            else if(param1 == §-!6§.LISTENER_EVENT_MOUSE_UP)
            {
               §[!1§.§"k§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §<D§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §!!B§.§-X§)
         {
            §&Y§.§>!_§ = null;
         }
      }
      
      private function §6v§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §!!B§.§-X§)
         {
            §&Y§.§>!_§ = null;
         }
         §<D§.sCheetosPopups.showPopup(§-5§.ERROR,§^!+§.getText("Error") + param1);
      }
   }
}
