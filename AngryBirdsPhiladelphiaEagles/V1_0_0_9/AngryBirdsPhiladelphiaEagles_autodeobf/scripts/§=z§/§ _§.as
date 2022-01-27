package §=z§
{
   import §"1§.Base64;
   import §'!3§.§&!H§;
   import §,!1§.§]e§;
   import §^R§.§6!-§;
   import §`J§.§>T§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § _§ extends EventDispatcher
   {
       
      
      private var § 3§:Boolean;
      
      private var §+<§:Stage;
      
      private var §^%§:Boolean = false;
      
      public function § _§(param1:Stage)
      {
         super();
         this.§+<§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §6!-§.addCallback("pause",this.§'3§);
         §6!-§.addCallback("resume",this.§4!1§);
      }
      
      private function §'3§() : void
      {
         if(!this.§^%§)
         {
            this.§^%§ = true;
            this.§ 3§ = !§0!E§.isPaused;
            §0!E§.pause();
            AngryBirdsFP11.§;!@§.§&L§();
            this.§<s§();
            AngryBirdsFP11.§;!@§.externalPause();
         }
      }
      
      private function §4!1§() : void
      {
         if(!this.§^%§)
         {
            return;
         }
         this.§^%§ = false;
         if(this.§ 3§)
         {
            §0!E§.resume();
         }
         §]e§.§5!0§(AngryBirdsFP11.§?`§);
         AngryBirdsFP11.§;!@§.externalResume();
         AngryBirdsFP11.§;!@§.§[!'§();
      }
      
      public function §<s§() : void
      {
         §&!H§.§+!H§.§?e§ = this.§;;§;
      }
      
      private function §;;§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§+<§.stageWidth;
         var _loc3_:int = this.§+<§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §&!H§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§+<§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §6!-§.§'!P§("flashScreenshotReadyHandler",Base64.§0!<§(new §>T§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §&!H§.§+!H§.§?e§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
