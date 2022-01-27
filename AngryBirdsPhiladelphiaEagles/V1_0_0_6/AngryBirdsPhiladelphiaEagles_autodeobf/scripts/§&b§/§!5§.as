package §&b§
{
   import §"r§.§9I§;
   import §#!0§.§#-§;
   import §3!O§.Base64;
   import §@!L§.§%K§;
   import §@g§.§4!@§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!5§ extends EventDispatcher
   {
       
      
      private var §&_§:Boolean;
      
      private var §,^§:Stage;
      
      private var §=!E§:Boolean = false;
      
      public function §!5§(param1:Stage)
      {
         super();
         this.§,^§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §%K§.addCallback("pause",this.§[!E§);
         §%K§.addCallback("resume",this.§04§);
      }
      
      private function §[!E§() : void
      {
         if(!this.§=!E§)
         {
            this.§=!E§ = true;
            this.§&_§ = !§[F§.isPaused;
            §[F§.pause();
            AngryBirdsFP11.§^F§.§;n§();
            this.§8n§();
            AngryBirdsFP11.§^F§.externalPause();
         }
      }
      
      private function §04§() : void
      {
         if(!this.§=!E§)
         {
            return;
         }
         this.§=!E§ = false;
         if(this.§&_§)
         {
            §[F§.resume();
         }
         §#-§.§5R§(AngryBirdsFP11.§=C§);
         AngryBirdsFP11.§^F§.externalResume();
         AngryBirdsFP11.§^F§.§2!+§();
      }
      
      public function §8n§() : void
      {
         §4!@§.§ C§.§;j§ = this.§0!-§;
      }
      
      private function §0!-§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§,^§.stageWidth;
         var _loc3_:int = this.§,^§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §4!@§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§,^§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §%K§.§6!K§("flashScreenshotReadyHandler",Base64.§continue§(new §9I§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §4!@§.§ C§.§;j§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
