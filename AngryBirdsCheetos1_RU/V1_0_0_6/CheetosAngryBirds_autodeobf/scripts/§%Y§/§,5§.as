package §%Y§
{
   import §#!<§.§8!3§;
   import §%!5§.§;D§;
   import §'D§.§ I§;
   import §,B§.§4!0§;
   import §=@§.§5c§;
   import §=@§.§<E§;
   import §]m§.§-D§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §,5§ extends §-D§ implements §5c§
   {
      
      public static const §3!W§:Number = 1;
      
      public static const §0!"§:Number = 2;
      
      public static const §!!6§:Number = 3;
      
      public static const §6?§:Number = 4;
      
      public static const §=!U§:Number = 5;
      
      public static const §?z§:Number = 6;
      
      public static const §2`§:Number = 7;
      
      public static const §4i§:Number = 8;
      
      public static const §>!!§:Number = 9;
      
      public static const §82§:Number = 10;
      
      public static const §@!C§:Number = 11;
      
      public static const §7#§:Number = 12;
      
      public static const §>;§:Number = 13;
      
      public static var §@!'§:Array = [§3!W§,§0!"§,§!!6§,§6?§,§=!U§,§?z§,§2`§,§4i§,§4i§,§>!!§,§82§,§@!C§,§7#§,§>;§];
      
      private static var §=5§:Class = §>!<§;
      
      public static var sCheetosPopups:§4!0§;
       
      
      public function §,5§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §4!0§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §;D§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §8!3§.§%!O§ = url;
         try
         {
            §;D§.§;!6§("navigationConfirmed",§8!3§.§%!O§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§'!-§(§ I§.§^!V§(§=5§),§>#§.container,null,this);
         §>#§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §;D§.§#"§("navigationAttempt",this.navigationAttempt);
         §>#§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §<E§.§!C§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §6?§ || returnObject.error.code as Number == §!!6§ || returnObject.error.code as Number == §0!"§))
            {
               §8!3§.§^!E§ = null;
               mNextState = StateConnecting.§7!Q§;
               if(returnObject.error.code as Number == §0!"§)
               {
                  try
                  {
                     §;D§.§;!6§("reauthenticate",§8!3§.§^!E§.§5@§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §@!'§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§7!Q§;
            }
            if(returnObject.levelProfile)
            {
               §8!3§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §8!3§.credits = returnObject.credits;
               try
               {
                  §;D§.§;!6§("updateCredits",returnObject.credits);
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
