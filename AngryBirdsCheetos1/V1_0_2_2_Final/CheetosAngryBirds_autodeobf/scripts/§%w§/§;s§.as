package §%w§
{
   import § !G§.§+!7§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §-H§.§&c§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;s§ extends §&c§ implements §3n§
   {
      
      public static const § K§:Number = 1;
      
      public static const §83§:Number = 2;
      
      public static const §%=§:Number = 3;
      
      public static const §#!+§:Number = 4;
      
      public static const §6g§:Number = 5;
      
      public static const §@D§:Number = 6;
      
      public static const §<!$§:Number = 7;
      
      public static const §8v§:Number = 8;
      
      public static const §4!F§:Number = 9;
      
      public static const §2h§:Number = 10;
      
      public static const §`!U§:Number = 11;
      
      public static const §9!Z§:Number = 12;
      
      public static const §8!U§:Number = 13;
      
      public static var §2!%§:Array = [§ K§,§83§,§%=§,§#!+§,§6g§,§@D§,§<!$§,§8v§,§8v§,§4!F§,§2h§,§`!U§,§9!Z§,§8!U§];
      
      private static var §!3§:Class = §1Z§;
      
      public static var sCheetosPopups:§0!U§;
       
      
      public function §;s§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §0!U§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §,!A§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §9!H§.§;a§ = url;
         try
         {
            §,!A§.§9!M§("navigationConfirmed",§9!H§.§;a§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§3S§(§+!7§.§5]§(§!3§),§3t§.container,null,this);
         §3t§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §,!A§.§]Q§("navigationAttempt",this.navigationAttempt);
         §3t§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var credits:int = 0;
         var e:Event = param1;
         §7?§.§]!1§();
         try
         {
            returnObject = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §#!+§ || returnObject.error.code as Number == §%=§ || returnObject.error.code as Number == §83§))
            {
               §9!H§.§ o§ = null;
               mNextState = StateConnecting.§9!P§;
               if(returnObject.error.code as Number == §83§)
               {
                  try
                  {
                     §,!A§.§9!M§("reauthenticate",§9!H§.§ o§.§ I§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §2!%§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§9!P§;
            }
            if(returnObject.levelProfile)
            {
               §9!H§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §9!H§.credits = returnObject.credits;
               try
               {
                  §,!A§.§9!M§("updateCredits",returnObject.credits);
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
