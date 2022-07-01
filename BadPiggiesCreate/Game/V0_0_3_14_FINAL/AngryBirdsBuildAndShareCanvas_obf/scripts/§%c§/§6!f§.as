package §%c§
{
   import §-!n§.§5!U§;
   import §3!t§.§4v§;
   import §6p§.§?%§;
   import §9";§.§#!c§;
   import §=!M§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!f§ extends EventDispatcher
   {
       
      
      private var §,!"§:Boolean;
      
      private var § "3§:Stage;
      
      private var §93§:Boolean = false;
      
      public function §6!f§(param1:Stage)
      {
         super();
         this.§ "3§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §#!c§.addCallback("pause",this.§4!b§);
         §#!c§.addCallback("resume",this.§4"&§);
      }
      
      private function §4!b§() : void
      {
         if(!this.§93§)
         {
            this.§93§ = true;
            this.§,!"§ = !§=!X§.isPaused;
            §=!X§.pause();
            AngryBirdsFP11.§%d§.§!!#§();
            this.§2&§();
            AngryBirdsFP11.§%d§.§#^§();
         }
      }
      
      private function §4"&§() : void
      {
         if(!this.§93§)
         {
            return;
         }
         this.§93§ = false;
         if(this.§,!"§)
         {
            §=!X§.resume();
         }
         §5!U§.§-X§(AngryBirdsFP11.§8"&§);
         AngryBirdsFP11.§%d§.§>!!§();
         AngryBirdsFP11.§%d§.§0K§();
      }
      
      public function §2&§() : void
      {
         §?%§.§%b§.§[!Z§ = this.§ !7§;
      }
      
      private function § !7§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ "3§.stageWidth;
         var _loc3_:int = this.§ "3§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §?%§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ "3§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §#!c§.performCall("flashScreenshotReadyHandler",Base64.§<_§(new §4v§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §?%§.§%b§.§[!Z§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
