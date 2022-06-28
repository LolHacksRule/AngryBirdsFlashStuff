package §9!y§
{
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §[m§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §6!6§ extends Popup
   {
      
      private static var §1i§:Boolean;
      
      private static var §,Y§:§!e§;
      
      private static var §4M§:Object;
       
      
      public function §6!6§(param1:§'!^§, param2:StatePopupManager)
      {
         super(§[!'§.§+@§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=T§);
      }
      
      public static function sendRequest() : void
      {
         if(!§1i§)
         {
            §1i§ = true;
            §,Y§ = new §!e§();
            §,Y§.addEventListener(Event.COMPLETE,§#6§);
            §,Y§.addEventListener(IOErrorEvent.IO_ERROR,§5!`§);
            §,Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5!`§);
            §,Y§.addEventListener(§3!^§.§2_§,§5!`§);
            §,Y§.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/claimvalentinebundle"));
            §'N§.§=!C§();
         }
      }
      
      protected static function §5!`§(param1:Event) : void
      {
         if(param1.type == §3!^§.§2_§)
         {
            §@M§.§!!g§(§2v§.§'1§);
         }
         else
         {
            §@M§.§-5§();
         }
      }
      
      private static function §#6§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §4M§ = JSON.parse(§,Y§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §4M§.success == true)
         {
            §@M§.§"&§();
         }
         else
         {
            §@M§.§-5§();
         }
         §,Y§ = null;
      }
      
      private function §=T§(param1:MouseEvent) : void
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
