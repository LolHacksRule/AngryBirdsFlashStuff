package §<!U§
{
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §&N§.§0l§;
   import §0!>§.§-i§;
   import §0!>§.§=w§;
   import §3!C§.§3o§;
   import §4!H§.§[4§;
   import §?!1§.§+a§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §]u§ extends §[4§ implements §-i§
   {
      
      public static const §3V§:Number = 1;
      
      public static const §,!#§:Number = 2;
      
      public static const §0?§:Number = 3;
      
      public static const §=9§:Number = 4;
      
      public static const §1T§:Number = 5;
      
      public static const §@!B§:Number = 6;
      
      public static const §-E§:Number = 7;
      
      public static const §0m§:Number = 8;
      
      public static const §4!,§:Number = 9;
      
      public static const §3#§:Number = 10;
      
      public static const §#!2§:Number = 11;
      
      public static const §7h§:Number = 12;
      
      public static const §6P§:Number = 13;
      
      public static var §%!0§:Array = [§3V§,§,!#§,§0?§,§=9§,§1T§,§@!B§,§-E§,§0m§,§0m§,§4!,§,§3#§,§#!2§,§7h§,§6P§];
      
      private static var §&t§:Class = §[Q§;
      
      public static var sCheetosPopups:§+a§;
       
      
      public function §]u§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §+a§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §4!6§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §3o§.§">§ = url;
         try
         {
            §4!6§.§]l§("navigationConfirmed",§3o§.§">§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§`&§(§0l§.§8!#§(§&t§),§"c§.container,null,this);
         §"c§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §4!6§.§@_§("navigationAttempt",this.navigationAttempt);
         §"c§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         §[&§.§>!E§();
         try
         {
            returnObject = §=w§.§`m§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §=9§ || returnObject.error.code as Number == §0?§ || returnObject.error.code as Number == §,!#§))
            {
               §3o§.§-j§ = null;
               mNextState = StateConnecting.§`O§;
               if(returnObject.error.code as Number == §,!#§)
               {
                  try
                  {
                     §4!6§.§]l§("reauthenticate",§3o§.§-j§.§7'§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §%!0§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§`O§;
            }
            if(returnObject.levelProfile)
            {
               §3o§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §3o§.credits = returnObject.credits;
               try
               {
                  §4!6§.§]l§("updateCredits",returnObject.credits);
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
