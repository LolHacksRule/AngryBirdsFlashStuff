package §-l§
{
   import §#;§.§`!D§;
   import §&I§.§3! §;
   import §1!8§.§;!>§;
   import §2x§.Base64;
   import §4g§.§6P§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!1§ extends EventDispatcher
   {
       
      
      private var §"Q§:Boolean;
      
      private var §5R§:Stage;
      
      private var §"y§:Boolean = false;
      
      public function §6!1§(param1:Stage)
      {
         super();
         this.§5R§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §`!D§.addCallback("pause",this.§`j§);
         §`!D§.addCallback("resume",this.§?q§);
      }
      
      private function §`j§() : void
      {
         if(!this.§"y§)
         {
            this.§"y§ = true;
            this.§"Q§ = !§?'§.§;P§;
            §?'§.pause();
            AngryBirdsFP11.§ for§.§?M§();
            this.§@1§();
            AngryBirdsFP11.§ for§.externalPause();
         }
      }
      
      private function §?q§() : void
      {
         if(!this.§"y§)
         {
            return;
         }
         this.§"y§ = false;
         if(this.§"Q§)
         {
            §?'§.resume();
         }
         §;!>§.§`i§(AngryBirdsFP11.§for§);
         AngryBirdsFP11.§ for§.externalResume();
         AngryBirdsFP11.§ for§.§@a§();
      }
      
      public function §@1§() : void
      {
         §3! §.§"n§.§[j§ = this.§=,§;
      }
      
      private function §=,§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§5R§.stageWidth;
         var _loc3_:int = this.§5R§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §3! §.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§5R§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §`!D§.§&j§("flashScreenshotReadyHandler",Base64.§7n§(new §6P§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §3! §.§"n§.§[j§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
