package §`%§
{
   import §0!F§.§^d§;
   import §4u§.Base64;
   import §6`§.§?!7§;
   import §]!h§.§%E§;
   import §`!O§.§7!m§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"2§ extends EventDispatcher
   {
       
      
      private var §]L§:Boolean;
      
      private var §,![§:Stage;
      
      private var §3!f§:Boolean = false;
      
      public function §"2§(param1:Stage)
      {
         super();
         this.§,![§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §%E§.addCallback("pause",this.§3a§);
         §%E§.addCallback("resume",this.§?!m§);
      }
      
      private function §3a§() : void
      {
         if(!this.§3!f§)
         {
            this.§3!f§ = true;
            this.§]L§ = !§8!0§.isPaused;
            §8!0§.pause();
            AngryBirdsFP11.§"!U§.§`^§();
            this.§!_§();
            AngryBirdsFP11.§"!U§.§9§();
         }
      }
      
      private function §?!m§() : void
      {
         if(!this.§3!f§)
         {
            return;
         }
         this.§3!f§ = false;
         if(this.§]L§)
         {
            §8!0§.resume();
         }
         §?!7§.§["2§(AngryBirdsFP11.§5!o§);
         AngryBirdsFP11.§"!U§.§2L§();
         AngryBirdsFP11.§"!U§.§;t§();
      }
      
      public function §!_§() : void
      {
         §^d§.§+!f§.§+!^§ = this.§,!e§;
      }
      
      private function §,!e§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§,![§.stageWidth;
         var _loc3_:int = this.§,![§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §^d§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§,![§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §%E§.performCall("flashScreenshotReadyHandler",Base64.§%"!§(new §7!m§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §^d§.§+!f§.§+!^§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
