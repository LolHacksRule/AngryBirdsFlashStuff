package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-Ul§.§_-FD§;
   import §_-Ul§.§_-M5§;
   import §_-Ul§.§_-u-§;
   import §_-aA§.§_-HE§;
   import §_-ab§.§_-q4§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-l-§.§_-pI§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §_-xw§ implements §_-u-§
   {
      
      public static const §_-jn§:String = "StateConnecting";
       
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_Connecting[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-3E§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      private function §_-3E§() : void
      {
         if(§_-Tb§.§_-Bw§ == null)
         {
            this.§_-0-R§("User is null");
            return;
         }
         §_-si§.§_-Xb§();
         this.callObject = {
            "type":§_-pI§.§_-W0§,
            "sessionID":§_-pI§.§_-o6§(),
            "userID":§_-Tb§.§_-Bw§.name
         };
         new §_-pI§(this.callObject,§_-rs§.§_-tY§,this,§_-pI§.§package§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §_-M5§.§_-uI§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error)
            {
               this.§_-0-R§(returnObject.error);
            }
            if(returnObject.errorCode)
            {
               this.§_-0-R§(returnObject.errorCode);
            }
            mNextState = §_-qP§.§_-jn§;
            super.onComplete(e);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         if(param3 is §_-q4§)
         {
            if(param1 == §_-KQ§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-HE§.§_-Df§();
            }
            else if(param1 == §_-KQ§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-HE§.§_-te§();
            }
         }
         switch(param2)
         {
            case "CONTINUE":
               §_-xw§.sCheetosPopups.hidePopup();
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §_-pI§.§_-W0§)
         {
            §_-Tb§.§_-Bw§ = null;
         }
      }
      
      private function §_-0-R§(param1:*) : void
      {
         if(this.callObject != null && this.callObject.type != null && this.callObject.type == §_-pI§.§_-W0§)
         {
            §_-Tb§.§_-Bw§ = null;
         }
         §_-xw§.sCheetosPopups.showPopup(§_-5j§.ERROR,§_-FD§.getText("Error") + param1);
      }
   }
}
