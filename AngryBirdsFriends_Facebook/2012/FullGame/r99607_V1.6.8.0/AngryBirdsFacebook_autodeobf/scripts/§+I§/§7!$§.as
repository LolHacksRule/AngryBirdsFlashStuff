package §+I§
{
   import §+"6§.§5!H§;
   import §0!?§.Base64;
   import §1!A§.§6-§;
   import §1k§.§%4§;
   import §<"1§.§,U§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7!$§ extends EventDispatcher
   {
       
      
      private var §""@§:Boolean;
      
      private var §"""§:Stage;
      
      private var §'"6§:Boolean = false;
      
      public function §7!$§(param1:Stage)
      {
         super();
         this.§"""§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §,U§.addCallback("pause",this.§++§);
         §,U§.addCallback("resume",this.§5!a§);
      }
      
      private function §++§() : void
      {
         if(!this.§'"6§)
         {
            this.§'"6§ = true;
            this.§""@§ = !§9!%§.isPaused;
            §9!%§.pause();
            AngryBirdsFP11.§`"B§.§'H§();
            this.§"!!§();
            AngryBirdsFP11.§`"B§.externalPause();
         }
      }
      
      private function §5!a§() : void
      {
         if(!this.§'"6§)
         {
            return;
         }
         this.§'"6§ = false;
         if(this.§""@§)
         {
            §9!%§.resume();
         }
         §%4§.§>!6§(AngryBirdsFP11.§3!U§);
         AngryBirdsFP11.§`"B§.externalResume();
         AngryBirdsFP11.§`"B§.§%_§();
      }
      
      public function §"!!§() : void
      {
         §5!H§.§%n§.§@!&§ = this.§@"=§;
      }
      
      private function §@"=§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§"""§.stageWidth;
         var _loc3_:int = this.§"""§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §5!H§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§"""§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §,U§.§53§("flashScreenshotReadyHandler",Base64.§2!Y§(new §6-§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §5!H§.§%n§.§@!&§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
