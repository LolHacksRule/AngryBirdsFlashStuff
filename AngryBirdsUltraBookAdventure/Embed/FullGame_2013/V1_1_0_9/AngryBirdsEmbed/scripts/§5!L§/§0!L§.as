package §5!L§
{
   import §#X§.§,!F§;
   import §3a§.Base64;
   import §<d§.§9!1§;
   import §=!0§.§>I§;
   import §>`§.§'&§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §0!L§ extends EventDispatcher
   {
       
      
      private var §6!K§:Boolean;
      
      private var §]!M§:Stage;
      
      private var §in §:Boolean = false;
      
      public function §0!L§(param1:Stage)
      {
         super();
         this.§]!M§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §9!1§.addCallback("pause",this.§>!H§);
         §9!1§.addCallback("resume",this.§5!D§);
      }
      
      private function §>!H§() : void
      {
         if(!this.§in §)
         {
            this.§in § = true;
            this.§6!K§ = !§=w§.isPaused;
            §=w§.pause();
            AngryBirdsFP11.§ y§.§8<§();
            this.§try §();
            AngryBirdsFP11.§ y§.externalPause();
         }
      }
      
      private function §5!D§() : void
      {
         if(!this.§in §)
         {
            return;
         }
         this.§in § = false;
         if(this.§6!K§)
         {
            §=w§.resume();
         }
         §,!F§.§7!&§(AngryBirdsFP11.§"0§);
         AngryBirdsFP11.§ y§.externalResume();
         AngryBirdsFP11.§ y§.§-u§();
      }
      
      public function §try §() : void
      {
         §>I§.§`S§.§?D§ = this.§@l§;
      }
      
      private function §@l§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§]!M§.stageWidth;
         var _loc3_:int = this.§]!M§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §>I§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§]!M§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §9!1§.§!!I§("flashScreenshotReadyHandler",Base64.§2!K§(new §'&§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §>I§.§`S§.§?D§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
