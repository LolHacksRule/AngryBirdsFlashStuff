package §7"1§
{
   import §"p§.Base64;
   import §%B§.§^k§;
   import §3",§.§0"<§;
   import §6<§.§&`§;
   import §7K§.§7o§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,!y§ extends EventDispatcher
   {
       
      
      private var §=B§:Boolean;
      
      private var § null§:Stage;
      
      private var §2x§:Boolean = false;
      
      public function §,!y§(param1:Stage)
      {
         super();
         this.§ null§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §&`§.addCallback("pause",this.§6!z§);
         §&`§.addCallback("resume",this.§["2§);
      }
      
      private function §6!z§() : void
      {
         if(!this.§2x§)
         {
            this.§2x§ = true;
            this.§=B§ = !§%W§.isPaused;
            §%W§.pause();
            AngryBirdsFP11.§"!V§.§&!n§();
            this.§>!7§();
            AngryBirdsFP11.§"!V§.§9!T§();
         }
      }
      
      private function §["2§() : void
      {
         if(!this.§2x§)
         {
            return;
         }
         this.§2x§ = false;
         if(this.§=B§)
         {
            §%W§.resume();
         }
         §^k§.§3q§(AngryBirdsFP11.§["&§);
         AngryBirdsFP11.§"!V§.§4i§();
         AngryBirdsFP11.§"!V§.§!l§();
      }
      
      public function §>!7§() : void
      {
         §0"<§.§<?§.§4!V§ = this.§6!w§;
      }
      
      private function §6!w§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ null§.stageWidth;
         var _loc3_:int = this.§ null§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §0"<§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ null§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §&`§.performCall("flashScreenshotReadyHandler",Base64.§7!6§(new §7o§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §0"<§.§<?§.§4!V§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
