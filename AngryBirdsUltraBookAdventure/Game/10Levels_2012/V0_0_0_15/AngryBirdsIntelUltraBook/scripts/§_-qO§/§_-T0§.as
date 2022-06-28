package §_-qO§
{
   import §_-04w§.§_-xS§;
   import §_-0BH§.Base64;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Y8§.§_-05J§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-T0§ extends EventDispatcher
   {
       
      
      private var §_-0ET§:Boolean;
      
      private var §_-qN§:Stage;
      
      private var §_-A5§:Boolean = false;
      
      public function §_-T0§(param1:Stage)
      {
         super();
         this.§_-qN§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §_-05J§.addCallback("pause",this.§_-xy§);
         §_-05J§.addCallback("resume",this.§_-A4§);
      }
      
      private function §_-xy§() : void
      {
         if(!this.§_-A5§)
         {
            this.§_-A5§ = true;
            this.§_-0ET§ = !§ in§.isPaused;
            § in§.pause();
            AngryBirdsFP11.§_-07§.§_-DE§();
            this.§_-03v§();
            AngryBirdsFP11.§_-07§.externalPause();
         }
      }
      
      private function §_-A4§() : void
      {
         if(!this.§_-A5§)
         {
            return;
         }
         this.§_-A5§ = false;
         if(this.§_-0ET§)
         {
            § in§.resume();
         }
         §_-pX§.§_-bg§(AngryBirdsFP11.§_-gR§);
         AngryBirdsFP11.§_-07§.externalResume();
         AngryBirdsFP11.§_-07§.§_-PO§();
      }
      
      public function §_-03v§() : void
      {
         §_-AY§.§_-un§.§_-NL§ = this.§_-02q§;
      }
      
      private function §_-02q§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§_-qN§.stageWidth;
         var _loc3_:int = this.§_-qN§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §_-AY§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§_-qN§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §_-05J§.§_-0At§("flashScreenshotReadyHandler",Base64.§_-UL§(new §_-xS§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §_-AY§.§_-un§.§_-NL§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
