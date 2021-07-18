package §8!B§
{
   import §&^§.§[!7§;
   import §5Z§.§[Z§;
   import §7L§.§%!,§;
   import §@B§.§8V§;
   import §`K§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § 7§ extends EventDispatcher
   {
       
      
      private var §[+§:Boolean;
      
      private var §@&§:Stage;
      
      private var §4@§:Boolean = false;
      
      public function § 7§(param1:Stage)
      {
         super();
         this.§@&§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §8V§.addCallback("pause",this.§"&§);
         §8V§.addCallback("resume",this.§^1§);
      }
      
      private function §"&§() : void
      {
         if(!this.§4@§)
         {
            this.§4@§ = true;
            this.§[+§ = !§#! §.isPaused;
            §#! §.pause();
            AngryBirdsFP11.§`y§.§@9§();
            this.§1=§();
            AngryBirdsFP11.§`y§.externalPause();
         }
      }
      
      private function §^1§() : void
      {
         if(!this.§4@§)
         {
            return;
         }
         this.§4@§ = false;
         if(this.§[+§)
         {
            §#! §.resume();
         }
         §[!7§.§%R§(AngryBirdsFP11.§"!5§);
         AngryBirdsFP11.§`y§.externalResume();
         AngryBirdsFP11.§`y§.§ §();
      }
      
      public function §1=§() : void
      {
         §[Z§.§%m§.§?! § = this.§3E§;
      }
      
      private function §3E§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§@&§.stageWidth;
         var _loc3_:int = this.§@&§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §[Z§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§@&§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §8V§.§^^§("flashScreenshotReadyHandler",Base64.§,v§(new §%!,§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §[Z§.§%m§.§?! § = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
