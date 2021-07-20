package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §2!6§.§`"J§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §<S§ extends Popup
   {
      
      private static var §'!x§:Boolean;
      
      private static var §?!-§:§9!S§;
      
      private static var §?!_§:Object;
       
      
      public function §<S§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1!J§);
      }
      
      public static function sendRequest() : void
      {
         if(!§'!x§)
         {
            §'!x§ = true;
            §?!-§ = new §9!S§();
            §?!-§.addEventListener(Event.COMPLETE,§<!s§);
            §?!-§.addEventListener(IOErrorEvent.IO_ERROR,§]2§);
            §?!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§]2§);
            §?!-§.addEventListener(§="B§.§2"B§,§]2§);
            §?!-§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/claimvalentinebundle"));
            §"!e§.§=!g§();
         }
      }
      
      protected static function §]2§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
      }
      
      private static function §<!s§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §?!_§ = JSON.parse(§?!-§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §?!_§.success == true)
         {
            §`B§.§+1§();
            §`"J§.§1[§.§]@§(§?!_§.items);
         }
         else
         {
            §`B§.§-!§();
         }
         §?!-§ = null;
      }
      
      private function §1!J§(param1:MouseEvent) : void
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
