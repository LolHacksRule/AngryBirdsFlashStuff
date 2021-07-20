package §?!Y§
{
   import §!!0§.SoundEngine;
   import §&"§.ExternalInterfaceHandler;
   import §7!>§.Starling;
   import §<u§.Base64;
   import §^!Y§.JPGEncoder;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4!U§ extends EventDispatcher
   {
       
      
      private var §9!,§:Boolean;
      
      private var §[;§:Stage;
      
      private var §^^§:Boolean = false;
      
      public function §4!U§(stage:Stage)
      {
         super();
         this.§[;§ = stage;
         this.init();
      }
      
      private function init() : void
      {
         ExternalInterfaceHandler.addCallback("pause",this.§<!d§);
         ExternalInterfaceHandler.addCallback("resume",this.§49§);
      }
      
      private function §<!d§() : void
      {
         if(!this.§^^§)
         {
            this.§^^§ = true;
            this.§9!,§ = !§`S§.isPaused;
            §`S§.pause();
            AngryBirdsFP11.§'t§.§?]§();
            this.§&!`§();
            AngryBirdsFP11.§'t§.externalPause();
         }
      }
      
      private function §49§() : void
      {
         if(!this.§^^§)
         {
            return;
         }
         this.§^^§ = false;
         if(this.§9!,§)
         {
            §`S§.resume();
         }
         SoundEngine.§=!f§(AngryBirdsFP11.sSoundsEnabled);
         AngryBirdsFP11.§'t§.externalResume();
         AngryBirdsFP11.§'t§.§"-§();
      }
      
      public function §&!`§() : void
      {
         Starling.§7!+§.§2S§ = this.§+!F§;
      }
      
      private function §+!F§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var width:int = this.§[;§.stageWidth;
         var height:int = this.§[;§.stageHeight;
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
            bd.draw(this.§[;§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         bd.applyFilter(bd,bd.rect,new Point(0,0),new BlurFilter());
         ExternalInterfaceHandler.§`F§("flashScreenshotReadyHandler",Base64.§>&§(new JPGEncoder(70).encode(bd)));
         threeDbd.dispose();
         bd.dispose();
         Starling.§7!+§.§2S§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
