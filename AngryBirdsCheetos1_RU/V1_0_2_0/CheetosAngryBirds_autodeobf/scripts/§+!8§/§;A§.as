package §+!8§
{
   import §"I§.§-x§;
   import §#J§.§,x§;
   import §#J§.§9^§;
   import §'=§.§]d§;
   import §,'§.§[2§;
   import §8O§.§'S§;
   import §=g§.§ `§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;A§ extends §-x§ implements §9^§
   {
      
      public static const §@q§:Number = 1;
      
      public static const §]!M§:Number = 2;
      
      public static const §[!G§:Number = 3;
      
      public static const §9!§:Number = 4;
      
      public static const §5i§:Number = 5;
      
      public static const §"4§:Number = 6;
      
      public static const §]l§:Number = 7;
      
      public static const §=!2§:Number = 8;
      
      public static const §?!C§:Number = 9;
      
      public static const §5>§:Number = 10;
      
      public static const §""§:Number = 11;
      
      public static const §%P§:Number = 12;
      
      public static const §@!N§:Number = 13;
      
      public static var §6s§:Array = [§@q§,§]!M§,§[!G§,§9!§,§5i§,§"4§,§]l§,§=!2§,§=!2§,§?!C§,§5>§,§""§,§%P§,§@!N§];
      
      private static var §#!U§:Class = §^!#§;
      
      public static var sCheetosPopups:§]d§;
       
      
      public function §;A§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §]d§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §[2§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §'S§.§6r§ = url;
         try
         {
            §[2§.§^J§("navigationConfirmed",§'S§.§6r§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§[N§(§ `§.§2!3§(§#!U§),§&X§.container,null,this);
         §&X§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §[2§.§6m§("navigationAttempt",this.navigationAttempt);
         §&X§.container.removeComponent(sCheetosPopups.container);
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
            returnObject = §,x§.§%x§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §9!§ || returnObject.error.code as Number == §[!G§ || returnObject.error.code as Number == §]!M§))
            {
               §'S§.§^!+§ = null;
               mNextState = StateConnecting.§,!+§;
               if(returnObject.error.code as Number == §]!M§)
               {
                  try
                  {
                     §[2§.§^J§("reauthenticate",§'S§.§^!+§.§!X§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §6s§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§,!+§;
            }
            if(returnObject.levelProfile)
            {
               §'S§.levelProfile = returnObject.levelProfile;
            }
            try
            {
               credits = returnObject.credits as int;
               §'S§.credits = returnObject.credits;
               try
               {
                  §[2§.§^J§("updateCredits",returnObject.credits);
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
