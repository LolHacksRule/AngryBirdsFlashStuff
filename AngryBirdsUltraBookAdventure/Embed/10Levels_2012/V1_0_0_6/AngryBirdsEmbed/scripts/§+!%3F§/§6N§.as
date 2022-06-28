package §+!?§
{
   import §#h§.§ !H§;
   import §>K§.Base64;
   import §>R§.§?K§;
   import §]!+§.§%@§;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6N§ extends EventDispatcher
   {
       
      
      private var §`c§:Boolean;
      
      private var §?$§:Stage;
      
      private var §5F§:Boolean = false;
      
      public function §6N§(param1:Stage)
      {
         super();
         this.§?$§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §?K§.addCallback("pause",this.§3%§);
         §?K§.addCallback("resume",this.§=!3§);
      }
      
      private function §3%§() : void
      {
         if(!this.§5F§)
         {
            this.§5F§ = true;
            this.§`c§ = !§"h§.isPaused;
            §"h§.pause();
            AngryBirdsFP11.§0P§.§#2§();
            this.§%!3§();
            AngryBirdsFP11.§0P§.externalPause();
         }
      }
      
      private function §=!3§() : void
      {
         if(!this.§5F§)
         {
            return;
         }
         this.§5F§ = false;
         if(this.§`c§)
         {
            §"h§.resume();
         }
         § !H§.§0G§(AngryBirdsFP11.§%!4§);
         AngryBirdsFP11.§0P§.externalResume();
         AngryBirdsFP11.§0P§.§]!'§();
      }
      
      public function §%!3§() : void
      {
         §4@§.§0W§.§,!A§ = this.§5P§;
      }
      
      private function §5P§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§?$§.stageWidth;
         var _loc3_:int = this.§?$§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §4@§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§?$§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §?K§.§+v§("flashScreenshotReadyHandler",Base64.§!"§(new §%@§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §4@§.§0W§.§,!A§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
