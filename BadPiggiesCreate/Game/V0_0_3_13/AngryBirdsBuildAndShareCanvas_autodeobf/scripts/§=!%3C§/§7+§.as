package §=!<§
{
   import §&W§.Base64;
   import §-!+§.§6"6§;
   import §3A§.§>1§;
   import §6O§.§]6§;
   import §>Z§.§5;§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7+§ extends EventDispatcher
   {
       
      
      private var §1>§:Boolean;
      
      private var §="!§:Stage;
      
      private var §`!K§:Boolean = false;
      
      public function §7+§(param1:Stage)
      {
         super();
         this.§="!§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §>1§.addCallback("pause",this.§!!,§);
         §>1§.addCallback("resume",this.§0j§);
      }
      
      private function §!!,§() : void
      {
         if(!this.§`!K§)
         {
            this.§`!K§ = true;
            this.§1>§ = !§5!U§.isPaused;
            §5!U§.pause();
            AngryBirdsFP11.§2p§.§4!Z§();
            this.§0D§();
            AngryBirdsFP11.§2p§.§5j§();
         }
      }
      
      private function §0j§() : void
      {
         if(!this.§`!K§)
         {
            return;
         }
         this.§`!K§ = false;
         if(this.§1>§)
         {
            §5!U§.resume();
         }
         §5;§.§!"!§(AngryBirdsFP11.§2!<§);
         AngryBirdsFP11.§2p§.§[=§();
         AngryBirdsFP11.§2p§.§]!c§();
      }
      
      public function §0D§() : void
      {
         §6"6§.§^F§.§[!?§ = this.§]2§;
      }
      
      private function §]2§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§="!§.stageWidth;
         var _loc3_:int = this.§="!§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §6"6§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§="!§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §>1§.performCall("flashScreenshotReadyHandler",Base64.§6!A§(new §]6§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §6"6§.§^F§.§[!?§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
