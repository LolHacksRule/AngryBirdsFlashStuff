package §2!C§
{
   import § N§.§]!A§;
   import §&h§.§+Y§;
   import §1e§.§&!R§;
   import §3!8§.§8[§;
   import §3!8§.§`p§;
   import §[p§.§"w§;
   import §]u§.§+e§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1!b§ extends §+Y§ implements §8[§
   {
      
      public static const §%!^§:Number = 1;
      
      public static const §#+§:Number = 2;
      
      public static const §4C§:Number = 3;
      
      public static const §`!5§:Number = 4;
      
      public static const §'!"§:Number = 5;
      
      public static const §>8§:Number = 6;
      
      public static const §0!M§:Number = 7;
      
      public static const §0!X§:Number = 8;
      
      public static const §!C§:Number = 9;
      
      public static const §`M§:Number = 10;
      
      public static const §`A§:Number = 11;
      
      public static const §0!+§:Number = 12;
      
      public static const §`!%§:Number = 13;
      
      public static var §-!W§:Array = [§%!^§,§#+§,§4C§,§`!5§,§'!"§,§>8§,§0!M§,§0!X§,§0!X§,§!C§,§`M§,§`A§,§0!+§,§`!%§];
      
      private static var §-A§:Class = §7!;§;
      
      public static var sCheetosPopups:§&!R§;
       
      
      public function §1!b§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §&!R§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §+e§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §"w§.§2N§ = url;
         try
         {
            §+e§.§5?§("navigationConfirmed",§"w§.§2N§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§^5§(§]!A§.§#?§(§-A§),§?!?§.container,null,this);
         §?!?§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §+e§.§]!3§("navigationAttempt",this.navigationAttempt);
         §?!?§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §`p§.§=p§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §`!5§ || returnObject.error.code as Number == §4C§ || returnObject.error.code as Number == §#+§))
            {
               §"w§.§2C§ = null;
               mNextState = StateConnecting.§+!a§;
               if(returnObject.error.code as Number == §#+§)
               {
                  try
                  {
                     §+e§.§5?§("reauthenticate",§"w§.§2C§.§0m§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §-!W§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§+!a§;
            }
            if(returnObject.levelProfile)
            {
               §"w§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §"w§.credits = returnObject.credits;
               try
               {
                  §+e§.§5?§("updateCredits",returnObject.credits);
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
