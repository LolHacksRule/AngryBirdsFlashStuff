package §"^§
{
   import §!6§.Base64;
   import §<!4§.§25§;
   import §>!+§.§@G§;
   import §>w§.;
   import §?!G§.§1A§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §15§ extends EventDispatcher
   {
       
      
      private var §>e§:Boolean;
      
      private var §`v§:Stage;
      
      private var §0!,§:Boolean = false;
      
      public function §15§(param1:Stage)
      {
         super();
         this.§`v§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §@G§.addCallback("pause",this.§0-§);
         §@G§.addCallback("resume",this.§3+§);
      }
      
      private function §0-§() : void
      {
         if(!this.§0!,§)
         {
            this.§0!,§ = true;
            this.§>e§ = !§9=§.isPaused;
            §9=§.pause();
            AngryBirdsFP11.§ j§.§,O§();
            this.§,m§();
            AngryBirdsFP11.§ j§.externalPause();
         }
      }
      
      private function §3+§() : void
      {
         if(!this.§0!,§)
         {
            return;
         }
         this.§0!,§ = false;
         if(this.§>e§)
         {
            §9=§.resume();
         }
         §25§.§[5§(AngryBirdsFP11.§'q§);
         AngryBirdsFP11.§ j§.externalResume();
         AngryBirdsFP11.§ j§.§6N§();
      }
      
      public function §,m§() : void
      {
         §#0§.§#4§.§,8§ = this.§!S§;
      }
      
      private function §!S§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§`v§.stageWidth;
         var _loc3_:int = this.§`v§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §#0§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§`v§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §@G§.§6C§("flashScreenshotReadyHandler",Base64.§4!3§(new §1A§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §#0§.§#4§.§,8§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
