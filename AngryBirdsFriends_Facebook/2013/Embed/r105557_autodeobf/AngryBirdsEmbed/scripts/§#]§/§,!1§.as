package §#]§
{
   import §0!6§.§#!9§;
   import §8T§.§@o§;
   import §?!8§.Base64;
   import §??§.§5!@§;
   import §@!%§.§0E§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,!1§ extends EventDispatcher
   {
       
      
      private var §9h§:Boolean;
      
      private var § D§:Stage;
      
      private var §]z§:Boolean = false;
      
      public function §,!1§(param1:Stage)
      {
         super();
         this.§ D§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §#!9§.addCallback("pause",this.§-;§);
         §#!9§.addCallback("resume",this.§%@§);
      }
      
      private function §-;§() : void
      {
         if(!this.§]z§)
         {
            this.§]z§ = true;
            this.§9h§ = !§'5§.isPaused;
            §'5§.pause();
            AngryBirdsFP11.§^!<§.§>B§();
            this.§4?§();
            AngryBirdsFP11.§^!<§.externalPause();
         }
      }
      
      private function §%@§() : void
      {
         if(!this.§]z§)
         {
            return;
         }
         this.§]z§ = false;
         if(this.§9h§)
         {
            §'5§.resume();
         }
         §@o§.§ l§(AngryBirdsFP11.§[;§);
         AngryBirdsFP11.§^!<§.externalResume();
         AngryBirdsFP11.§^!<§.§#L§();
      }
      
      public function §4?§() : void
      {
         §5!@§.§8%§.§83§ = this.§?!!§;
      }
      
      private function §?!!§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ D§.stageWidth;
         var _loc3_:int = this.§ D§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §5!@§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ D§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §#!9§.§-! §("flashScreenshotReadyHandler",Base64.§2'§(new §0E§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §5!@§.§8%§.§83§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
