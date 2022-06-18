package §3n§
{
   import §#h§.§]!"§;
   import §#h§.§break§;
   import §0L§.§&Y§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §7!P§.§`!§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import §import§.§&^§;
   
   public class §<D§ extends §+$§ implements §break§
   {
      
      public static const §%<§:Number = 1;
      
      public static const §5!8§:Number = 2;
      
      public static const §+!A§:Number = 3;
      
      public static const §#!@§:Number = 4;
      
      public static const §?X§:Number = 5;
      
      public static const §=I§:Number = 6;
      
      public static const §!!Q§:Number = 7;
      
      public static const §+<§:Number = 8;
      
      public static const §"m§:Number = 9;
      
      public static const §>y§:Number = 10;
      
      public static const §+j§:Number = 11;
      
      public static const §6k§:Number = 12;
      
      public static const §5P§:Number = 13;
      
      public static var §!!C§:Array = [§%<§,§5!8§,§+!A§,§#!@§,§?X§,§=I§,§!!Q§,§+<§,§+<§,§"m§,§>y§,§+j§,§6k§,§5P§];
      
      private static var §<V§:Class = §?g§;
      
      public static var sCheetosPopups:§-5§;
       
      
      public function §<D§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §-5§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §&^§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §&Y§.§#!a§ = url;
         try
         {
            §&^§.§4'§("navigationConfirmed",§&Y§.§#!a§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§>B§(§`!§.§1!a§(§<V§),§2!J§.container,null,this);
         §2!J§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §&^§.§#c§("navigationAttempt",this.navigationAttempt);
         §2!J§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         try
         {
            returnObject = §]!"§.§5A§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §#!@§ || returnObject.error.code as Number == §+!A§ || returnObject.error.code as Number == §5!8§))
            {
               §&Y§.§>!_§ = null;
               mNextState = StateConnecting.§,F§;
               if(returnObject.error.code as Number == §5!8§)
               {
                  try
                  {
                     §&^§.§4'§("reauthenticate",§&Y§.§>!_§.§;S§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §!!C§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§,F§;
            }
            if(returnObject.levelProfile)
            {
               §&Y§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §&Y§.credits = returnObject.credits;
               try
               {
                  §&^§.§4'§("updateCredits",returnObject.credits);
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
