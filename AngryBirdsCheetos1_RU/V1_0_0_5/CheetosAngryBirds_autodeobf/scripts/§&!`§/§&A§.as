package §&!`§
{
   import § =§.§ x§;
   import §!4§.§6!@§;
   import §2V§.§!!_§;
   import §4!§.§&6§;
   import §4!§.§2!L§;
   import §9$§.§;!K§;
   import §?!N§.§?!"§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §&A§ extends § x§ implements §2!L§
   {
      
      public static const §%`§:Number = 1;
      
      public static const §2w§:Number = 2;
      
      public static const §>m§:Number = 3;
      
      public static const §]r§:Number = 4;
      
      public static const §;!W§:Number = 5;
      
      public static const § !2§:Number = 6;
      
      public static const §2#§:Number = 7;
      
      public static const §^!L§:Number = 8;
      
      public static const §?#§:Number = 9;
      
      public static const §7R§:Number = 10;
      
      public static const §?&§:Number = 11;
      
      public static const §#!A§:Number = 12;
      
      public static const §-z§:Number = 13;
      
      public static var §,H§:Array = [§%`§,§2w§,§>m§,§]r§,§;!W§,§ !2§,§2#§,§^!L§,§^!L§,§?#§,§7R§,§?&§,§#!A§,§-z§];
      
      private static var §=!+§:Class = §=,§;
      
      public static var sCheetosPopups:§!!_§;
       
      
      public function §&A§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §!!_§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §?!"§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §;!K§.§5s§ = url;
         try
         {
            §?!"§.§7`§("navigationConfirmed",§;!K§.§5s§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§4c§(§6!@§.§![§(§=!+§),§^!]§.container,null,this);
         §^!]§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §?!"§.§true§("navigationAttempt",this.navigationAttempt);
         §^!]§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §&6§.§1!2§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §]r§ || returnObject.error.code as Number == §>m§ || returnObject.error.code as Number == §2w§))
            {
               §;!K§.§+!K§ = null;
               mNextState = StateConnecting.§="§;
               if(returnObject.error.code as Number == §2w§)
               {
                  try
                  {
                     §?!"§.§7`§("reauthenticate",§;!K§.§+!K§.§'!9§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §,H§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§="§;
            }
            if(returnObject.levelProfile)
            {
               §;!K§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §;!K§.credits = returnObject.credits;
               try
               {
                  §?!"§.§7`§("updateCredits",returnObject.credits);
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
