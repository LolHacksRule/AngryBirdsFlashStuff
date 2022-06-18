package §`t§
{
   import §!x§.§!&§;
   import §-p§.Base64;
   import §3!A§.§9!0§;
   import §;%§.§8o§;
   import §@e§.§1!H§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § !=§ extends EventDispatcher
   {
       
      
      private var §?j§:Boolean;
      
      private var § j§:Stage;
      
      private var § %§:Boolean = false;
      
      public function § !=§(param1:Stage)
      {
         super();
         this.§ j§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §!&§.addCallback("pause",this.§>! §);
         §!&§.addCallback("resume",this.§=U§);
      }
      
      private function §>! §() : void
      {
         if(!this.§ %§)
         {
            this.§ %§ = true;
            this.§?j§ = !§^?§.isPaused;
            §^?§.pause();
            AngryBirdsFP11.§5W§.§#!§();
            this.§6`§();
            AngryBirdsFP11.§5W§.externalPause();
         }
      }
      
      private function §=U§() : void
      {
         if(!this.§ %§)
         {
            return;
         }
         this.§ %§ = false;
         if(this.§?j§)
         {
            §^?§.resume();
         }
         §9!0§.§[F§(AngryBirdsFP11.§1!&§);
         AngryBirdsFP11.§5W§.externalResume();
         AngryBirdsFP11.§5W§.§=O§();
      }
      
      public function §6`§() : void
      {
         §8o§.§5J§.§]c§ = this.§]#§;
      }
      
      private function §]#§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ j§.stageWidth;
         var _loc3_:int = this.§ j§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §8o§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ j§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §!&§.§5>§("flashScreenshotReadyHandler",Base64.§[6§(new §1!H§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §8o§.§5J§.§]c§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
