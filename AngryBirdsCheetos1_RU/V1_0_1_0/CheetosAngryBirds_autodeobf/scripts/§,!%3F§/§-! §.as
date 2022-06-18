package §,!?§
{
   import §%t§.§7G§;
   import §-!O§.§7'§;
   import §9!Z§.§<!W§;
   import §;!<§.§"$§;
   import §;!<§.§-U§;
   import §?u§.§+V§;
   import §^!!§.§'!_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §-! § extends §7'§ implements §"$§
   {
      
      public static const §1]§:Number = 1;
      
      public static const §^>§:Number = 2;
      
      public static const §8Y§:Number = 3;
      
      public static const §2!?§:Number = 4;
      
      public static const § !6§:Number = 5;
      
      public static const §%K§:Number = 6;
      
      public static const §[z§:Number = 7;
      
      public static const §@P§:Number = 8;
      
      public static const §`U§:Number = 9;
      
      public static const §#!9§:Number = 10;
      
      public static const §'i§:Number = 11;
      
      public static const §'!G§:Number = 12;
      
      public static const §3!L§:Number = 13;
      
      public static var §8!V§:Array = [§1]§,§^>§,§8Y§,§2!?§,§ !6§,§%K§,§[z§,§@P§,§@P§,§`U§,§#!9§,§'i§,§'!G§,§3!L§];
      
      private static var §#!1§:Class = §^u§;
      
      public static var sCheetosPopups:§<!W§;
       
      
      public function §-! §(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §<!W§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §+V§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §'!_§.§[!H§ = url;
         try
         {
            §+V§.§3!'§("navigationConfirmed",§'!_§.§[!H§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§"!8§(§7G§.§-^§(§#!1§),§??§.container,null,this);
         §??§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §+V§.§&&§("navigationAttempt",this.navigationAttempt);
         §??§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §-U§.§[f§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §2!?§ || returnObject.error.code as Number == §8Y§ || returnObject.error.code as Number == §^>§))
            {
               §'!_§.§=!"§ = null;
               mNextState = StateConnecting.§@B§;
               if(returnObject.error.code as Number == §^>§)
               {
                  try
                  {
                     §+V§.§3!'§("reauthenticate",§'!_§.§=!"§.§^!F§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §8!V§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§@B§;
            }
            if(returnObject.levelProfile)
            {
               §'!_§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §'!_§.credits = returnObject.credits;
               try
               {
                  §+V§.§3!'§("updateCredits",returnObject.credits);
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
