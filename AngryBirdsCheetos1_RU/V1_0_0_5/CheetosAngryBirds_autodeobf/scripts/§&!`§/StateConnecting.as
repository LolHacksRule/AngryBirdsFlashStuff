package §&!`§
{
   import § =§.§ x§;
   import §!4§.§%!]§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §2V§.§!!_§;
   import §4!§.§&6§;
   import §4!§.§&J§;
   import §4!§.§2!L§;
   import §9$§.§;!K§;
   import §;k§.§[§;
   import §<s§.§]@§;
   import §[%§.§6!§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §&A§ implements §2!L§
   {
      
      public static const §="§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!^§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      private function §3!^§() : void
      {
         if(§;!K§.§+!K§ == null)
         {
            this.§"m§("User is null");
            return;
         }
         §3>§.§-!>§();
         this.callObject = {
            "type":§[§.§!!F§,
            "sessionID":§[§.§^a§(),
            "userID":§;!K§.§+!K§.name
         };
         new §[§(this.callObject,§3§.§8Z§,this,§[§.§'! §);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §&6§.§1!2§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§"m§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§"m§(returnObject.errorCode);
            }
            mNextState = §4q§.§="§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         if(param3 is §6!§)
         {
            if(param1 == §]@§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%!]§.§;<§();
            }
            else if(param1 == §]@§.LISTENER_EVENT_MOUSE_UP)
            {
               §%!]§.§@@§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §&A§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §[§.§!!F§)
         {
            §;!K§.§+!K§ = null;
         }
      }
      
      private function §"m§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §[§.§!!F§)
         {
            §;!K§.§+!K§ = null;
         }
         §&A§.sCheetosPopups.showPopup(§!!_§.ERROR,§&J§.getText("Error") + param1);
      }
   }
}
