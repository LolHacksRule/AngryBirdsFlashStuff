package §5G§
{
   import §"§.§%!$§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §=!g§.§!!@§;
   import §>^§.§7]§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?,§ extends §%!$§ implements §7Z§
   {
      
      public static const §0n§:Number = 1;
      
      public static const §?!i§:Number = 2;
      
      public static const § B§:Number = 3;
      
      public static const §%!d§:Number = 4;
      
      public static const §'N§:Number = 5;
      
      public static const §%3§:Number = 6;
      
      public static const §&!<§:Number = 7;
      
      public static const §=!@§:Number = 8;
      
      public static const § '§:Number = 9;
      
      public static const §]U§:Number = 10;
      
      public static const §;?§:Number = 11;
      
      public static const §9O§:Number = 12;
      
      public static const §6!E§:Number = 13;
      
      public static var §?!Y§:Array = [§0n§,§?!i§,§ B§,§%!d§,§'N§,§%3§,§&!<§,§=!@§,§=!@§,§ '§,§]U§,§;?§,§9O§,§6!E§];
      
      private static var §>q§:Class = §!!=§;
      
      public static var sCheetosPopups:§&O§;
       
      
      public function §?,§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sCheetosPopups == null)
         {
            sCheetosPopups = new §&O§();
         }
         this.addExternalInterfaceCallbacks();
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         §!!@§.addCallback("navigationAttempt",this.navigationAttempt);
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var url:String = param1;
         §>f§.§%!-§ = url;
         try
         {
            §!!@§.§%Q§("navigationConfirmed",§>f§.§%!-§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         sCheetosPopups.§3,§(§7]§.§#!I§(§>q§),§%!0§.container,null,this);
         §%!0§.container.addComponent(sCheetosPopups.container);
      }
      
      override public function deActivate() : void
      {
         §!!@§.§,2§("navigationAttempt",this.navigationAttempt);
         §%!0§.container.removeComponent(sCheetosPopups.container);
         sCheetosPopups.deActivate();
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
         }
         catch(e:Error)
         {
         }
         if(returnObject)
         {
            if(returnObject.error != null && returnObject.error.code && (returnObject.error.code as Number == §%!d§ || returnObject.error.code as Number == § B§ || returnObject.error.code as Number == §?!i§))
            {
               §>f§.§%!`§ = null;
               mNextState = StateConnecting.§3!?§;
               if(returnObject.error.code as Number == §?!i§)
               {
                  try
                  {
                     §!!@§.§%Q§("reauthenticate",§>f§.§%!`§.§6!W§);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else if(returnObject.error != null && returnObject.error.code && §?!Y§.indexOf(returnObject.error.code as Number) > 0)
            {
               mNextState = StateConnecting.§3!?§;
            }
            §!!@§.§%Q§("updateCredits",§>f§.§%!`§.§`!b§);
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
