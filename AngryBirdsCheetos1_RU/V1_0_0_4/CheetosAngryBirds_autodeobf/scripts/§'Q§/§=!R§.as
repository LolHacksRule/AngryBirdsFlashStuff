package §'Q§
{
   import §#!5§.§>!0§;
   import §4!R§.§@,§;
   import §6=§.§`!<§;
   import §?!F§.§0!Y§;
   import §[I§.§5y§;
   import §[I§.§;!K§;
   import §^!&§.§"x§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!R§ extends §0!Y§ implements §5y§
   {
      
      public static const §0!`§:Number = 1;
      
      public static const §?!C§:Number = 2;
      
      public static const § !C§:Number = 3;
      
      public static const §[!'§:Number = 4;
      
      public static const §2!2§:Number = 5;
      
      public static const §4l§:Number = 6;
      
      public static const §+!H§:Number = 7;
      
      public static const §;!"§:Number = 8;
      
      public static const §5!W§:Number = 9;
      
      public static const §`!8§:Number = 10;
      
      public static const §?![§:Number = 11;
      
      public static const §null§:Number = 12;
      
      public static const §8+§:Number = 13;
      
      public static var §0Q§:Array = [§0!`§,§?!C§,§ !C§,§[!'§,§2!2§,§4l§,§+!H§,§;!"§,§;!"§,§5!W§,§`!8§,§?![§,§null§,§8+§];
      
      private static var §%,§:Class = §]!R§;
      
      public static var sCheetosPopups:§`!<§;
       
      
      public function §=!R§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §`!<§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §>!0§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §@,§.§'!'§ = url;
         try
         {
            §>!0§.§7!I§("navigationConfirmed",§@,§.§'!'§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§+V§(§"x§.§9!>§(§%,§),§2m§.container,null,this);
         §2m§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §>!0§.§9!6§("navigationAttempt",this.navigationAttempt);
         §2m§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §;!K§.§#[§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §[!'§ || returnObject.error.code as Number == § !C§ || returnObject.error.code as Number == §?!C§))
            {
               §@,§.§&!;§ = null;
               mNextState = StateConnecting.§1o§;
               if(returnObject.error.code as Number == §?!C§)
               {
                  try
                  {
                     §>!0§.§7!I§("reauthenticate",§@,§.§&!;§.§-%§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §0Q§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§1o§;
            }
            if(returnObject.levelProfile)
            {
               §@,§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §@,§.credits = returnObject.credits;
               try
               {
                  §>!0§.§7!I§("updateCredits",returnObject.credits);
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
