package §5H§
{
   import §#!;§.§;T§;
   import §+!"§.Base64;
   import §1!E§.§<w§;
   import §>Z§.§3!?§;
   import §@D§.§6I§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]w§ extends EventDispatcher
   {
       
      
      private var §0j§:Boolean;
      
      private var §%E§:Stage;
      
      private var §6!§:Boolean = false;
      
      public function §]w§(param1:Stage)
      {
         super();
         this.§%E§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §<w§.addCallback("pause",this.§@!A§);
         §<w§.addCallback("resume",this.§5E§);
      }
      
      private function §@!A§() : void
      {
         if(!this.§6!§)
         {
            this.§6!§ = true;
            this.§0j§ = !§[k§.isPaused;
            §[k§.pause();
            AngryBirdsFP11.§,s§.§2'§();
            this.§0!E§();
            AngryBirdsFP11.§,s§.externalPause();
         }
      }
      
      private function §5E§() : void
      {
         if(!this.§6!§)
         {
            return;
         }
         this.§6!§ = false;
         if(this.§0j§)
         {
            §[k§.resume();
         }
         §6I§.§3Y§(AngryBirdsFP11.§-!7§);
         AngryBirdsFP11.§,s§.externalResume();
         AngryBirdsFP11.§,s§.§0`§();
      }
      
      public function §0!E§() : void
      {
         §;T§.§,H§.§"e§ = this.§2&§;
      }
      
      private function §2&§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§%E§.stageWidth;
         var _loc3_:int = this.§%E§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §;T§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§%E§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §<w§.§1x§("flashScreenshotReadyHandler",Base64.§!V§(new §3!?§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §;T§.§,H§.§"e§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
