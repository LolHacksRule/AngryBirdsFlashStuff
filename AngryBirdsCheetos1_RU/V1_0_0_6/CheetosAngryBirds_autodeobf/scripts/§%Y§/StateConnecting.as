package §%Y§
{
   import §#!<§.§8!3§;
   import §#!]§.§6'§;
   import §'!N§.§9!O§;
   import §'D§.§6!L§;
   import §,B§.§4!0§;
   import §1!§.§@!Q§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§7!F§;
   import §=@§.§4k§;
   import §=@§.§5c§;
   import §=@§.§<E§;
   import §]m§.§-D§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §,5§ implements §5c§
   {
      
      public static const §7!Q§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<!?§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      private function §<!?§() : void
      {
         if(§8!3§.§^!E§ == null)
         {
            this.§ #§("User is null");
            return;
         }
         §@!Q§.§?!]§();
         this.callObject = {
            "type":§6'§.§!!T§,
            "sessionID":§6'§.§^!R§(),
            "userID":§8!3§.§^!E§.name
         };
         new §6'§(this.callObject,§1R§.§=!R§,this,§6'§.§?>§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §<E§.§!C§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§ #§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§ #§(returnObject.errorCode);
            }
            mNextState = §@4§.§7!Q§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         if(param3 is §7!F§)
         {
            if(param1 == §9!O§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §6!L§.§!5§();
            }
            else if(param1 == §9!O§.LISTENER_EVENT_MOUSE_UP)
            {
               §6!L§.§&-§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §,5§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §6'§.§!!T§)
         {
            §8!3§.§^!E§ = null;
         }
      }
      
      private function § #§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §6'§.§!!T§)
         {
            §8!3§.§^!E§ = null;
         }
         §,5§.sCheetosPopups.showPopup(§4!0§.ERROR,§4k§.getText("Error") + param1);
      }
   }
}
