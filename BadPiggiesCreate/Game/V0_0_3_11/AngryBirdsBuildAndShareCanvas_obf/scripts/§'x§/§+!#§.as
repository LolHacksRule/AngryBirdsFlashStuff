package §'x§
{
   import §0P§.§!!l§;
   import §5"'§.§=%§;
   import §6!N§.§=x§;
   import §;X§.Base64;
   import §?!k§.§0!t§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §+!#§ extends EventDispatcher
   {
       
      
      private var §3<§:Boolean;
      
      private var §&§:Stage;
      
      private var §%!r§:Boolean = false;
      
      public function §+!#§(param1:Stage)
      {
         super();
         this.§&§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §=x§.addCallback("pause",this.§4!?§);
         §=x§.addCallback("resume",this.§3!s§);
      }
      
      private function §4!?§() : void
      {
         if(!this.§%!r§)
         {
            this.§%!r§ = true;
            this.§3<§ = !§?z§.isPaused;
            §?z§.pause();
            AngryBirdsFP11.§@!N§.§-!Z§();
            this.§#w§();
            AngryBirdsFP11.§@!N§.§8!4§();
         }
      }
      
      private function §3!s§() : void
      {
         if(!this.§%!r§)
         {
            return;
         }
         this.§%!r§ = false;
         if(this.§3<§)
         {
            §?z§.resume();
         }
         §0!t§.§?!s§(AngryBirdsFP11.§[!#§);
         AngryBirdsFP11.§@!N§.§0!N§();
         AngryBirdsFP11.§@!N§.§=!u§();
      }
      
      public function §#w§() : void
      {
         §!!l§.§`7§.§;-§ = this.§`!X§;
      }
      
      private function §`!X§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§&§.stageWidth;
         var _loc3_:int = this.§&§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §!!l§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§&§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §=x§.performCall("flashScreenshotReadyHandler",Base64.§^!n§(new §=%§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §!!l§.§`7§.§;-§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
