package §>%§
{
   import §'N§.§^]§;
   import §3v§.Base64;
   import §6!D§.§ 3§;
   import §6L§.§^3§;
   import §8!#§.§<n§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,!5§ extends EventDispatcher
   {
       
      
      private var §<R§:Boolean;
      
      private var §6Y§:Stage;
      
      private var § !9§:Boolean = false;
      
      public function §,!5§(param1:Stage)
      {
         super();
         this.§6Y§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §^3§.addCallback("pause",this.§4!B§);
         §^3§.addCallback("resume",this.§>C§);
      }
      
      private function §4!B§() : void
      {
         if(!this.§ !9§)
         {
            this.§ !9§ = true;
            this.§<R§ = !§]3§.isPaused;
            §]3§.pause();
            AngryBirdsFP11.§"h§.§8! §();
            this.§><§();
            AngryBirdsFP11.§"h§.externalPause();
         }
      }
      
      private function §>C§() : void
      {
         if(!this.§ !9§)
         {
            return;
         }
         this.§ !9§ = false;
         if(this.§<R§)
         {
            §]3§.resume();
         }
         §^]§.§9a§(AngryBirdsFP11.§13§);
         AngryBirdsFP11.§"h§.externalResume();
         AngryBirdsFP11.§"h§.§2i§();
      }
      
      public function §><§() : void
      {
         §<n§.§?@§.§>!"§ = this.§&!<§;
      }
      
      private function §&!<§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§6Y§.stageWidth;
         var _loc3_:int = this.§6Y§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §<n§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§6Y§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §^3§.§%Z§("flashScreenshotReadyHandler",Base64.§4S§(new § 3§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §<n§.§?@§.§>!"§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
