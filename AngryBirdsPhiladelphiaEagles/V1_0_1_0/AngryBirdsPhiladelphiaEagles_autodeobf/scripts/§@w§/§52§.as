package §@w§
{
   import §-!5§.Base64;
   import §-e§.§!!-§;
   import §5J§.§>$§;
   import §5^§.§3=§;
   import §[N§.§9k§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §52§ extends EventDispatcher
   {
       
      
      private var §"Z§:Boolean;
      
      private var §<!#§:Stage;
      
      private var §16§:Boolean = false;
      
      public function §52§(param1:Stage)
      {
         super();
         this.§<!#§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §3=§.addCallback("pause",this.§;]§);
         §3=§.addCallback("resume",this.§=!J§);
      }
      
      private function §;]§() : void
      {
         if(!this.§16§)
         {
            this.§16§ = true;
            this.§"Z§ = !§2G§.isPaused;
            §2G§.pause();
            AngryBirdsFP11.§<2§.§8y§();
            this.§`>§();
            AngryBirdsFP11.§<2§.externalPause();
         }
      }
      
      private function §=!J§() : void
      {
         if(!this.§16§)
         {
            return;
         }
         this.§16§ = false;
         if(this.§"Z§)
         {
            §2G§.resume();
         }
         §9k§.§<!I§(AngryBirdsFP11.§3!1§);
         AngryBirdsFP11.§<2§.externalResume();
         AngryBirdsFP11.§<2§.§9&§();
      }
      
      public function §`>§() : void
      {
         §>$§.§-U§.§%!A§ = this.§null§;
      }
      
      private function §null§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§<!#§.stageWidth;
         var _loc3_:int = this.§<!#§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §>$§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§<!#§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §3=§.§-!6§("flashScreenshotReadyHandler",Base64.§,I§(new §!!-§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §>$§.§-U§.§%!A§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
