package §5!Y§
{
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §9@§.§@q§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §!Z§ extends Popup
   {
      
      private static var §=d§:Boolean;
      
      private static var §2"A§:§3d§;
      
      private static var §?!&§:Object;
       
      
      public function §!Z§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§6">§);
      }
      
      public static function sendRequest() : void
      {
         if(!§=d§)
         {
            §=d§ = true;
            §2"A§ = new §3d§();
            §2"A§.addEventListener(Event.COMPLETE,§'"1§);
            §2"A§.addEventListener(IOErrorEvent.IO_ERROR,§5"T§);
            §2"A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"T§);
            §2"A§.addEventListener(§9G§.§33§,§5"T§);
            §2"A§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/claimvalentinebundle"));
            §@q§.§ "5§();
         }
      }
      
      protected static function §5"T§(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
      }
      
      private static function §'"1§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §?!&§ = JSON.parse(§2"A§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §?!&§.success == true)
         {
            §9"6§.§!!F§();
            §#!,§.§&"5§.§?v§(§?!&§.items);
         }
         else
         {
            §9"6§.§#!o§();
         }
         §2"A§ = null;
      }
      
      private function §6">§(param1:MouseEvent) : void
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
