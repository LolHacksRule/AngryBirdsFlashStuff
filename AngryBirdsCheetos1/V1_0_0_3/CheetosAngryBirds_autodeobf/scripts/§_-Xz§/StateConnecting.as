package §_-Xz§
{
   import §_-16§.§_-VR§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-hf§;
   import §_-G§.§_-o5§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-Sg§;
   import §_-Y7§.§_-Y-§;
   import §_-Y7§.§_-d8§;
   import §_-kI§.§_-Iv§;
   import §_-r6§.§_-oy§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §_-SW§ implements §_-Sg§
   {
      
      public static const §_-3o§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-fE§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      private function §_-fE§() : void
      {
         if(§_-Iv§.§_-r5§ == null)
         {
            this.§_-LU§("User is null");
            return;
         }
         §_-0X§.§_-fc§();
         this.callObject = {
            "type":§_-o5§.§_-a8§,
            "sessionID":§_-o5§.§_-YD§(),
            "userID":§_-Iv§.§_-r5§.name
         };
         new §_-o5§(this.callObject,§_-WX§.§_-3p§,this,§_-o5§.§_-oS§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §_-d8§.§_-QX§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§_-LU§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§_-LU§(returnObject.errorCode);
            }
            mNextState = §_-0N§.§_-3o§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         if(param3 is §_-hf§)
         {
            if(param1 == §_-VR§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-oy§.§_-6D§();
            }
            else if(param1 == §_-VR§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-oy§.§_-4e§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §_-SW§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §_-o5§.§_-a8§)
         {
            §_-Iv§.§_-r5§ = null;
         }
      }
      
      private function §_-LU§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §_-o5§.§_-a8§)
         {
            §_-Iv§.§_-r5§ = null;
         }
         §_-SW§.sCheetosPopups.showPopup(§_-Zr§.ERROR,§_-Y-§.getText("Error") + param1);
      }
   }
}
