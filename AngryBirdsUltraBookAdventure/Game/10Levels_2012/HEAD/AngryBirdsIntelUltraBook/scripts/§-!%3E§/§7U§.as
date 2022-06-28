package §-!>§
{
   import §"$§.Starling;
   import §'N§.Base64;
   import §,!#§.ExternalInterfaceHandler;
   import §3!j§.SoundEngine;
   import §`R§.JPGEncoder;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7U§ extends EventDispatcher
   {
       
      
      private var §10§:Boolean;
      
      private var §?_§:Stage;
      
      private var §"^§:Boolean = false;
      
      public function §7U§(stage:Stage)
      {
         super();
         this.§?_§ = stage;
         this.init();
      }
      
      private function init() : void
      {
         ExternalInterfaceHandler.addCallback("pause",this.§^!Z§);
         ExternalInterfaceHandler.addCallback("resume",this.§4!%§);
      }
      
      private function §^!Z§() : void
      {
         if(!this.§"^§)
         {
            this.§"^§ = true;
            this.§10§ = !§4!T§.isPaused;
            §4!T§.pause();
            AngryBirdsFP11.§8R§.§!!'§();
            this.§#!]§();
            AngryBirdsFP11.§8R§.externalPause();
         }
      }
      
      private function §4!%§() : void
      {
         if(!this.§"^§)
         {
            return;
         }
         this.§"^§ = false;
         if(this.§10§)
         {
            §4!T§.resume();
         }
         SoundEngine.§-!'§(AngryBirdsFP11.sSoundsEnabled);
         AngryBirdsFP11.§8R§.externalResume();
         AngryBirdsFP11.§8R§.§^!%§();
      }
      
      public function §#!]§() : void
      {
         Starling.§'!A§.§#"§ = this.§"&§;
      }
      
      private function §"&§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var width:int = this.§?_§.stageWidth;
         var height:int = this.§?_§.stageHeight;
         if(width < 2 || height < 2)
         {
            width = AngryBirdsFP11.stageWidth;
            height = AngryBirdsFP11.stageHeight;
         }
         width = Math.max(8,Math.min(width,2880));
         height = Math.max(8,Math.min(height,2880));
         var bd:BitmapData = new BitmapData(Math.floor(width * 0.25),Math.floor(height * 0.25),false);
         var threeDbd:BitmapData = new BitmapData(width,height,false);
         Starling.drawToBitmapData(threeDbd);
         bd.draw(threeDbd,new Matrix(0.25,0,0,0.25));
         try
         {
            bd.draw(this.§?_§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         bd.applyFilter(bd,bd.rect,new Point(0,0),new BlurFilter());
         ExternalInterfaceHandler.§!!@§("flashScreenshotReadyHandler",Base64.§5!`§(new JPGEncoder(70).encode(bd)));
         threeDbd.dispose();
         bd.dispose();
         Starling.§'!A§.§#"§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
