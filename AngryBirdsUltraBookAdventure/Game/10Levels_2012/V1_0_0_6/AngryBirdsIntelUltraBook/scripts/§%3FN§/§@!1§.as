package §?N§
{
   import §,B§.Popup;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §@!1§ extends Popup
   {
      
      private static var §>+§:Boolean;
      
      private static var §]!"§:§7^§;
      
      private static var §^!s§:Object;
       
      
      public function §@!1§(param1:§4`§, param2:StatePopupManager)
      {
         super(§ !I§.§3!a§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-!C§);
      }
      
      public static function sendRequest() : void
      {
         if(!§>+§)
         {
            §>+§ = true;
            §]!"§ = new §7^§();
            §]!"§.addEventListener(Event.COMPLETE,§,r§);
            §]!"§.addEventListener(IOErrorEvent.IO_ERROR,§6!_§);
            §]!"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!_§);
            §]!"§.addEventListener(§!!5§.§[!§,§6!_§);
            §]!"§.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/claimvalentinebundle"));
            §@!J§.§>Z§();
         }
      }
      
      protected static function §6!_§(param1:Event) : void
      {
         if(param1.type == §!!5§.§[!§)
         {
            §]!e§.§>k§(§!!m§.§[!x§);
         }
         else
         {
            §]!e§.§-!1§();
         }
      }
      
      private static function §,r§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §^!s§ = JSON.parse(§]!"§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §^!s§.success == true)
         {
            §]!e§.§2L§();
         }
         else
         {
            §]!e§.§-!1§();
         }
         §]!"§ = null;
      }
      
      private function §-!C§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         close();
      }
   }
}
