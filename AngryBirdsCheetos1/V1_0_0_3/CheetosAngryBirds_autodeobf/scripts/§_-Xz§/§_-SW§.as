package §_-Xz§
{
   import §_-EH§.§_-uz§;
   import §_-Is§.§_-3Q§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-Sg§;
   import §_-Y7§.§_-d8§;
   import §_-kI§.§_-Iv§;
   import §_-r6§.§_-YF§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §_-SW§ extends §_-uz§ implements §_-Sg§
   {
      
      public static const §_-Xn§:Number = 1;
      
      public static const §_-9y§:Number = 2;
      
      public static const §_-EE§:Number = 3;
      
      public static const §_-G7§:Number = 4;
      
      public static const §_-8m§:Number = 5;
      
      public static const §_-83§:Number = 6;
      
      public static const §_-H2§:Number = 7;
      
      public static const §_-WM§:Number = 8;
      
      public static const §_-6l§:Number = 9;
      
      public static const §_-l6§:Number = 10;
      
      public static const §_-0-R§:Number = 11;
      
      public static const §_-0-A§:Number = 12;
      
      public static const §_-Pk§:Number = 13;
      
      public static var §_-Cc§:Array = [§_-Xn§,§_-9y§,§_-EE§,§_-G7§,§_-8m§,§_-83§,§_-H2§,§_-WM§,§_-WM§,§_-6l§,§_-l6§,§_-0-R§,§_-0-A§,§_-Pk§];
      
      private static var §_-JU§:Class = §_-Du§;
      
      public static var sCheetosPopups:§_-Zr§;
       
      
      public function §_-SW§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §_-Zr§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §_-3Q§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §_-Iv§.§_-s0§ = url;
         try
         {
            §_-3Q§.§_-st§("navigationConfirmed",§_-Iv§.§_-s0§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§_-Df§(§_-YF§.§_-0-I§(§_-JU§),§_-nq§.container,null,this);
         §_-nq§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §_-3Q§.§_-Mf§("navigationAttempt",this.navigationAttempt);
         §_-nq§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         §_-0X§.§_-UD§();
         try
         {
            returnObject = §_-d8§.§_-QX§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §_-G7§ || returnObject.error.code as Number == §_-EE§ || returnObject.error.code as Number == §_-9y§))
            {
               §_-Iv§.§_-r5§ = null;
               mNextState = StateConnecting.§_-3o§;
               if(returnObject.error.code as Number == §_-9y§)
               {
                  try
                  {
                     §_-3Q§.§_-st§("reauthenticate",§_-Iv§.§_-r5§.§_-Go§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §_-Cc§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§_-3o§;
            }
            if(returnObject.levelProfile)
            {
               §_-Iv§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §_-Iv§.credits = returnObject.credits;
               try
               {
                  §_-3Q§.§_-st§("updateCredits",returnObject.credits);
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
