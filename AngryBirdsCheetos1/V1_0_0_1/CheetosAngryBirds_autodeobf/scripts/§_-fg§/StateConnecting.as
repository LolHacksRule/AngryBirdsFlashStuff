package §_-fg§
{
   import §_-05§.§ do§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-Ng§;
   import §_-Py§.§_-eK§;
   import §_-U0§.§_-M9§;
   import §_-bw§.§_-zb§;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-LA§;
   import §_-q1§.§_-Sn§;
   import §_-q1§.§_-VA§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-zM§.§_-1v§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §_-cN§ implements §_-LA§
   {
      
      public static const §_-bg§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-OS§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      private function §_-OS§() : void
      {
         if(§_-zb§.§_-0Y§ == null)
         {
            this.§_-7I§("User is null");
            return;
         }
         §_-XR§.§_-Tr§();
         this.callObject = {
            "type":§ do§.§_-7i§,
            "sessionID":§ do§.§_-Ne§(),
            "userID":§_-zb§.§_-0Y§.name
         };
         new § do§(this.callObject,§_-Vc§.§_-Jx§,this,§ do§.§_-rq§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §_-VA§.§_-ji§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§_-7I§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§_-7I§(returnObject.errorCode);
            }
            mNextState = §_-Pw§.§_-bg§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         if(param3 is §_-Ng§)
         {
            if(param1 == §_-xD§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-M9§.§_-5K§();
            }
            else if(param1 == §_-xD§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-M9§.§_-RI§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §_-cN§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == § do§.§_-7i§)
         {
            §_-zb§.§_-0Y§ = null;
         }
      }
      
      private function §_-7I§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == § do§.§_-7i§)
         {
            §_-zb§.§_-0Y§ = null;
         }
         §_-cN§.sCheetosPopups.showPopup(§_-1v§.ERROR,§_-Sn§.getText("Error") + param1);
      }
   }
}
