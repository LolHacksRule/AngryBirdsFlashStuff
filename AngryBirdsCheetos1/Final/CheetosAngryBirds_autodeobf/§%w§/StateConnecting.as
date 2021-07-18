package §%w§
{
   import § !G§.§`e§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§'n§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §;s§ implements §3n§
   {
      
      public static const §9!P§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1D§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      private function §1D§() : void
      {
         if(§9!H§.§ o§ == null)
         {
            this.§']§("User is null");
            return;
         }
         §7?§.§3J§();
         this.callObject = {
            "type":§>S§.§+Z§,
            "sessionID":§>S§.§9J§(),
            "userID":§9!H§.§ o§.name
         };
         new §>S§(this.callObject,§#x§.§+r§,this,§>S§.§"!H§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§']§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§']§(returnObject.errorCode);
            }
            mNextState = §`L§.§9!P§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         if(param3 is §0!@§)
         {
            if(param1 == §'n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`e§.§`i§();
            }
            else if(param1 == §'n§.LISTENER_EVENT_MOUSE_UP)
            {
               §`e§.§+z§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §;s§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §>S§.§+Z§)
         {
            §9!H§.§ o§ = null;
         }
      }
      
      private function §']§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §>S§.§+Z§)
         {
            §9!H§.§ o§ = null;
         }
         §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error") + param1);
      }
   }
}
