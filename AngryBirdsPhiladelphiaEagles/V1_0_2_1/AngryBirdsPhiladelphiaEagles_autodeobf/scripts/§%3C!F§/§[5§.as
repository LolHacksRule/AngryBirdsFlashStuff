package §<!F§
{
   import §!=§.§[!F§;
   import §+y§.§3V§;
   import §9!A§.§`!7§;
   import §@V§.Base64;
   import §^h§.§2l§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[5§ extends EventDispatcher
   {
       
      
      private var §'9§:Boolean;
      
      private var §3+§:Stage;
      
      private var §>N§:Boolean = false;
      
      public function §[5§(param1:Stage)
      {
         super();
         this.§3+§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §[!F§.addCallback("pause",this.§<c§);
         §[!F§.addCallback("resume",this.§1D§);
      }
      
      private function §<c§() : void
      {
         if(!this.§>N§)
         {
            this.§>N§ = true;
            this.§'9§ = !§5!+§.isPaused;
            §5!+§.pause();
            AngryBirdsFP11.§"Y§.§1s§();
            this.§!6§();
            AngryBirdsFP11.§"Y§.externalPause();
         }
      }
      
      private function §1D§() : void
      {
         if(!this.§>N§)
         {
            return;
         }
         this.§>N§ = false;
         if(this.§'9§)
         {
            §5!+§.resume();
         }
         §3V§.§2!L§(AngryBirdsFP11.§<C§);
         AngryBirdsFP11.§"Y§.externalResume();
         AngryBirdsFP11.§"Y§.§`h§();
      }
      
      public function §!6§() : void
      {
         §2l§.§7K§.§51§ = this.§2+§;
      }
      
      private function §2+§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§3+§.stageWidth;
         var _loc3_:int = this.§3+§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §2l§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§3+§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §[!F§.§;!&§("flashScreenshotReadyHandler",Base64.§9f§(new §`!7§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §2l§.§7K§.§51§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
