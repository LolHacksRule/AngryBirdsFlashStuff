package §10§
{
   import §-X§.§,f§;
   import §1!?§.§7_§;
   import §9!2§.§7N§;
   import §9H§.Base64;
   import §]!+§.§1=§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §>c§ extends EventDispatcher
   {
       
      
      private var §90§:Boolean;
      
      private var § d§:Stage;
      
      private var §++§:Boolean = false;
      
      public function §>c§(param1:Stage)
      {
         super();
         this.§ d§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §1=§.addCallback("pause",this.§77§);
         §1=§.addCallback("resume",this.§8R§);
      }
      
      private function §77§() : void
      {
         if(!this.§++§)
         {
            this.§++§ = true;
            this.§90§ = !§#!4§.§"7§;
            §#!4§.pause();
            AngryBirdsFP11.§?,§.§ $§();
            this.§"F§();
            AngryBirdsFP11.§?,§.externalPause();
         }
      }
      
      private function §8R§() : void
      {
         if(!this.§++§)
         {
            return;
         }
         this.§++§ = false;
         if(this.§90§)
         {
            §#!4§.resume();
         }
         §7_§.§=!2§(AngryBirdsFP11.§6'§);
         AngryBirdsFP11.§?,§.externalResume();
         AngryBirdsFP11.§?,§.§7!D§();
      }
      
      public function §"F§() : void
      {
         §7N§.§17§.§?!D§ = this.§@!!§;
      }
      
      private function §@!!§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ d§.stageWidth;
         var _loc3_:int = this.§ d§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §7N§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ d§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §1=§.§4I§("flashScreenshotReadyHandler",Base64.§;7§(new §,f§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §7N§.§17§.§?!D§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
