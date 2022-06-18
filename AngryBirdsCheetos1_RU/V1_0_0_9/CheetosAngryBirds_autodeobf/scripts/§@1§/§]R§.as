package §@1§
{
   import § !X§.§+2§;
   import §-!6§.§!P§;
   import §8!#§.§6G§;
   import §<!P§.§>l§;
   import §>!1§.§!!Q§;
   import §>!1§.§>!A§;
   import §>!6§.§0L§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §]R§ extends §>l§ implements §>!A§
   {
      
      public static const §3^§:Number = 1;
      
      public static const §+3§:Number = 2;
      
      public static const §+!9§:Number = 3;
      
      public static const §-5§:Number = 4;
      
      public static const §%!X§:Number = 5;
      
      public static const §"y§:Number = 6;
      
      public static const §"C§:Number = 7;
      
      public static const §&!3§:Number = 8;
      
      public static const §]!M§:Number = 9;
      
      public static const §#!U§:Number = 10;
      
      public static const §&2§:Number = 11;
      
      public static const §&L§:Number = 12;
      
      public static const §^!X§:Number = 13;
      
      public static var §2!_§:Array = [§3^§,§+3§,§+!9§,§-5§,§%!X§,§"y§,§"C§,§&!3§,§&!3§,§]!M§,§#!U§,§&2§,§&L§,§^!X§];
      
      private static var §;?§:Class = §8B§;
      
      public static var sCheetosPopups:§+2§;
       
      
      public function §]R§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §+2§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §0L§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §6G§.§"!9§ = url;
         try
         {
            §0L§.§[!H§("navigationConfirmed",§6G§.§"!9§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§=Y§(§!P§.§=!K§(§;?§),§[B§.container,null,this);
         §[B§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §0L§.§4!E§("navigationAttempt",this.navigationAttempt);
         §[B§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §!!Q§.§+!!§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §-5§ || returnObject.error.code as Number == §+!9§ || returnObject.error.code as Number == §+3§))
            {
               §6G§.§+J§ = null;
               mNextState = StateConnecting.§]U§;
               if(returnObject.error.code as Number == §+3§)
               {
                  try
                  {
                     §0L§.§[!H§("reauthenticate",§6G§.§+J§.§0C§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §2!_§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§]U§;
            }
            if(returnObject.levelProfile)
            {
               §6G§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §6G§.credits = returnObject.credits;
               try
               {
                  §0L§.§[!H§("updateCredits",returnObject.credits);
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
