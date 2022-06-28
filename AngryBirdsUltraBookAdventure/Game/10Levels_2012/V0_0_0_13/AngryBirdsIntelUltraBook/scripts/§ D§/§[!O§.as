package § D§
{
   import §'b§.ExternalInterfaceHandler;
   import §0P§.Starling;
   import §6b§.Base64;
   import §=?§.SoundEngine;
   import §?![§.JPGEncoder;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[!O§ extends EventDispatcher
   {
       
      
      private var §^!5§:Boolean;
      
      private var §'!'§:Stage;
      
      private var §"!&§:Boolean = false;
      
      public function §[!O§(stage:Stage)
      {
         super();
         this.§'!'§ = stage;
         this.init();
      }
      
      private function init() : void
      {
         ExternalInterfaceHandler.addCallback("pause",this.§&h§);
         ExternalInterfaceHandler.addCallback("resume",this.§"n§);
      }
      
      private function §&h§() : void
      {
         if(!this.§"!&§)
         {
            this.§"!&§ = true;
            this.§^!5§ = !§]!B§.isPaused;
            §]!B§.pause();
            AngryBirdsFP11.§5V§.§"§();
            this.§-!f§();
            AngryBirdsFP11.§5V§.externalPause();
         }
      }
      
      private function §"n§() : void
      {
         if(!this.§"!&§)
         {
            return;
         }
         this.§"!&§ = false;
         if(this.§^!5§)
         {
            §]!B§.resume();
         }
         SoundEngine.§?!$§(AngryBirdsFP11.sSoundsEnabled);
         AngryBirdsFP11.§5V§.externalResume();
         AngryBirdsFP11.§5V§.§6![§();
      }
      
      public function §-!f§() : void
      {
         Starling.§!!F§.§+!f§ = this.§#h§;
      }
      
      private function §#h§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var width:int = this.§'!'§.stageWidth;
         var height:int = this.§'!'§.stageHeight;
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
            bd.draw(this.§'!'§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         bd.applyFilter(bd,bd.rect,new Point(0,0),new BlurFilter());
         ExternalInterfaceHandler.§>!2§("flashScreenshotReadyHandler",Base64.§"u§(new JPGEncoder(70).encode(bd)));
         threeDbd.dispose();
         bd.dispose();
         Starling.§!!F§.§+!f§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
