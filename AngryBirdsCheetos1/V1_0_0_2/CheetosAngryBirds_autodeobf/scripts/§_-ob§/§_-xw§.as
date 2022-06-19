package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-M6§.§_-Qg§;
   import §_-Ul§.§_-M5§;
   import §_-Ul§.§_-u-§;
   import §_-aA§.§_-i7§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-sj§.§_-qs§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §_-xw§ extends §_-qs§ implements §_-u-§
   {
      
      public static const §_-xD§:Number = 1;
      
      public static const §_-nA§:Number = 2;
      
      public static const §_-u0§:Number = 3;
      
      public static const §_-MZ§:Number = 4;
      
      public static const §_-uz§:Number = 5;
      
      public static const §_-JO§:Number = 6;
      
      public static const §_-jC§:Number = 7;
      
      public static const §_-lG§:Number = 8;
      
      public static const §_-Wk§:Number = 9;
      
      public static const §_-57§:Number = 10;
      
      public static const §_-Um§:Number = 11;
      
      public static const §_-nO§:Number = 12;
      
      public static const §_-9y§:Number = 13;
      
      public static var §_-it§:Array = [§_-xD§,§_-nA§,§_-u0§,§_-MZ§,§_-uz§,§_-JO§,§_-jC§,§_-lG§,§_-lG§,§_-Wk§,§_-57§,§_-Um§,§_-nO§,§_-9y§];
      
      private static var §_-t1§:Class = §_-9F§;
      
      public static var sCheetosPopups:§_-5j§;
       
      
      public function §_-xw§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §_-5j§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §_-Qg§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §_-Tb§.§_-MR§ = url;
         try
         {
            §_-Qg§.§_-No§("navigationConfirmed",§_-Tb§.§_-MR§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§_-QH§(§_-i7§.§_-Yj§(§_-t1§),§_-x2§.container,null,this);
         §_-x2§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §_-Qg§.§_-p2§("navigationAttempt",this.navigationAttempt);
         §_-x2§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         §_-si§.§_-DM§();
         try
         {
            returnObject = §_-M5§.§_-uI§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §_-MZ§ || returnObject.error.code as Number == §_-u0§ || returnObject.error.code as Number == §_-nA§))
            {
               §_-Tb§.§_-Bw§ = null;
               mNextState = StateConnecting.§_-jn§;
               if(returnObject.error.code as Number == §_-nA§)
               {
                  try
                  {
                     §_-Qg§.§_-No§("reauthenticate",§_-Tb§.§_-Bw§.§_-2o§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §_-it§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§_-jn§;
            }
            if(returnObject.levelProfile)
            {
               §_-Tb§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §_-Tb§.credits = returnObject.credits;
               try
               {
                  §_-Qg§.§_-No§("updateCredits",returnObject.credits);
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
