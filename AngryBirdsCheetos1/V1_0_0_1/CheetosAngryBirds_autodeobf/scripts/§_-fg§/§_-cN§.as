package §_-fg§
{
   import §_-3N§.§_-Dp§;
   import §_-Py§.§_-eK§;
   import §_-U0§.§_-JP§;
   import §_-bw§.§_-zb§;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-LA§;
   import §_-q1§.§_-VA§;
   import §_-zM§.§_-1v§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §_-cN§ extends §_-eK§ implements §_-LA§
   {
      
      public static const §_-uQ§:Number = 1;
      
      public static const §_-8P§:Number = 2;
      
      public static const §_-rC§:Number = 3;
      
      public static const §_-TV§:Number = 4;
      
      public static const §_-6m§:Number = 5;
      
      public static const §_-aZ§:Number = 6;
      
      public static const §_-8a§:Number = 7;
      
      public static const §_-BF§:Number = 8;
      
      public static const §_-Xr§:Number = 9;
      
      public static const §_-Wr§:Number = 10;
      
      public static const §_-kt§:Number = 11;
      
      public static const §_-My§:Number = 12;
      
      public static const §_-rk§:Number = 13;
      
      public static var §_-wp§:Array = [§_-uQ§,§_-8P§,§_-rC§,§_-TV§,§_-6m§,§_-aZ§,§_-8a§,§_-BF§,§_-BF§,§_-Xr§,§_-Wr§,§_-kt§,§_-My§,§_-rk§];
      
      private static var §_-sE§:Class = §_-35§;
      
      public static var sCheetosPopups:§_-1v§;
       
      
      public function §_-cN§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §_-1v§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §_-Dp§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §_-zb§.§_-Xg§ = url;
         try
         {
            §_-Dp§.§_-JB§("navigationConfirmed",§_-zb§.§_-Xg§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§_-a3§(§_-JP§.§_-t5§(§_-sE§),§_-Lb§.container,null,this);
         §_-Lb§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §_-Dp§.§_-Zc§("navigationAttempt",this.navigationAttempt);
         §_-Lb§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         §_-XR§.§_-5x§();
         try
         {
            returnObject = §_-VA§.§_-ji§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §_-TV§ || returnObject.error.code as Number == §_-rC§ || returnObject.error.code as Number == §_-8P§))
            {
               §_-zb§.§_-0Y§ = null;
               mNextState = StateConnecting.§_-bg§;
               if(returnObject.error.code as Number == §_-8P§)
               {
                  try
                  {
                     §_-Dp§.§_-JB§("reauthenticate",§_-zb§.§_-0Y§.§_-PG§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §_-wp§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§_-bg§;
            }
            if(returnObject.levelProfile)
            {
               §_-zb§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §_-zb§.credits = returnObject.credits;
               try
               {
                  §_-Dp§.§_-JB§("updateCredits",returnObject.credits);
               }
               catch(e:Error)
               {
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
