package §"!5§
{
   import §&p§.§'_§;
   import §2!<§.§?!?§;
   import §2§.Base64;
   import §3!9§.§2!4§;
   import §9O§.§1d§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §78§ extends EventDispatcher
   {
       
      
      private var §4!,§:Boolean;
      
      private var §<!1§:Stage;
      
      private var §;-§:Boolean = false;
      
      public function §78§(param1:Stage)
      {
         super();
         this.§<!1§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §2!4§.addCallback("pause",this.§6v§);
         §2!4§.addCallback("resume",this.§<!3§);
      }
      
      private function §6v§() : void
      {
         if(!this.§;-§)
         {
            this.§;-§ = true;
            this.§4!,§ = !§,!!§.isPaused;
            §,!!§.pause();
            AngryBirdsFP11.§@t§.§>!1§();
            this.§+8§();
            AngryBirdsFP11.§@t§.externalPause();
         }
      }
      
      private function §<!3§() : void
      {
         if(!this.§;-§)
         {
            return;
         }
         this.§;-§ = false;
         if(this.§4!,§)
         {
            §,!!§.resume();
         }
         §?!?§.§8!§(AngryBirdsFP11.§%w§);
         AngryBirdsFP11.§@t§.externalResume();
         AngryBirdsFP11.§@t§.§=w§();
      }
      
      public function §+8§() : void
      {
         §'_§.§17§.§"i§ = this.§9x§;
      }
      
      private function §9x§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§<!1§.stageWidth;
         var _loc3_:int = this.§<!1§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §'_§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§<!1§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §2!4§.§[L§("flashScreenshotReadyHandler",Base64.§<W§(new §1d§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §'_§.§17§.§"i§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
