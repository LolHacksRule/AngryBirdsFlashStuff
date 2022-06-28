package §_-7§
{
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §_-t6§ extends Popup
   {
      
      private static var §_-oM§:Boolean;
      
      private static var §_-01p§:§_-ur§;
      
      private static var §_-0Cx§:Object;
       
      
      public function §_-t6§(param1:§_-5q§, param2:StatePopupManager)
      {
         super(§_-vB§.§_-ky§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-KN§);
      }
      
      public static function sendRequest() : void
      {
         if(!§_-oM§)
         {
            §_-oM§ = true;
            §_-01p§ = new §_-ur§();
            §_-01p§.addEventListener(Event.COMPLETE,§_-0V§);
            §_-01p§.addEventListener(IOErrorEvent.IO_ERROR,§_-cs§);
            §_-01p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§_-cs§);
            §_-01p§.addEventListener(§_-a5§.§_-Gy§,§_-cs§);
            §_-01p§.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/claimvalentinebundle"));
            §_-OY§.§_-uf§();
         }
      }
      
      protected static function §_-cs§(param1:Event) : void
      {
         if(param1.type == §_-a5§.§_-Gy§)
         {
            §_-EJ§.§_-QC§(§_-42§.§_-06o§);
         }
         else
         {
            §_-EJ§.§_-8H§();
         }
      }
      
      private static function §_-0V§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §_-0Cx§ = JSON.parse(§_-01p§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §_-0Cx§.success == true)
         {
            §_-EJ§.§_-74§();
         }
         else
         {
            §_-EJ§.§_-8H§();
         }
         §_-01p§ = null;
      }
      
      private function §_-KN§(param1:MouseEvent) : void
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
