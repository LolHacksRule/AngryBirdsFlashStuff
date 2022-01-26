package §2!C§
{
   import § N§.§;]§;
   import §&h§.§+Y§;
   import §+!X§.§8v§;
   import §1e§.§&!R§;
   import §2K§.§ 3§;
   import §3!8§.§8[§;
   import §3!8§.§[X§;
   import §3!8§.§`p§;
   import §6!K§.§#![§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §[p§.§"w§;
   import §^Q§.§,^§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §1!b§ implements §8[§
   {
      
      public static const §+!a§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1M§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      private function §1M§() : void
      {
         if(§"w§.§2C§ == null)
         {
            this.§4!M§("User is null");
            return;
         }
         §,^§.§9!§();
         this.callObject = {
            "type":§8v§.§;!7§,
            "sessionID":§8v§.§<!E§(),
            "userID":§"w§.§2C§.name
         };
         new §8v§(this.callObject,§7d§.§7!+§,this,§8v§.§;t§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §`p§.§=p§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§4!M§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§4!M§(returnObject.errorCode);
            }
            mNextState = §^w§.§+!a§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         if(param3 is § 3§)
         {
            if(param1 == §#![§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §;]§.§>]§();
            }
            else if(param1 == §#![§.LISTENER_EVENT_MOUSE_UP)
            {
               §;]§.§8!S§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §1!b§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §8v§.§;!7§)
         {
            §"w§.§2C§ = null;
         }
      }
      
      private function §4!M§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §8v§.§;!7§)
         {
            §"w§.§2C§ = null;
         }
         §1!b§.sCheetosPopups.showPopup(§&!R§.ERROR,§[X§.getText("Error") + param1);
      }
   }
}
