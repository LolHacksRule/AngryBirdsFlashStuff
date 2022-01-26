package §;j§
{
   import §!!>§.§=-§;
   import §'m§.Base64;
   import §1!G§.§false§;
   import §>Z§.§2;§;
   import §@!%§.§+8§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]_§ extends EventDispatcher
   {
       
      
      private var §-$§:Boolean;
      
      private var §>t§:Stage;
      
      private var §2A§:Boolean = false;
      
      public function §]_§(param1:Stage)
      {
         super();
         this.§>t§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §=-§.addCallback("pause",this.§=2§);
         §=-§.addCallback("resume",this.§"N§);
      }
      
      private function §=2§() : void
      {
         if(!this.§2A§)
         {
            this.§2A§ = true;
            this.§-$§ = !§8[§.§;!A§;
            §8[§.pause();
            AngryBirdsFP11.§`H§.§#g§();
            this.§=l§();
            AngryBirdsFP11.§`H§.externalPause();
         }
      }
      
      private function §"N§() : void
      {
         if(!this.§2A§)
         {
            return;
         }
         this.§2A§ = false;
         if(this.§-$§)
         {
            §8[§.resume();
         }
         §2;§.§;P§(AngryBirdsFP11.§#3§);
         AngryBirdsFP11.§`H§.externalResume();
         AngryBirdsFP11.§`H§.§ F§();
      }
      
      public function §=l§() : void
      {
         §+8§.§-2§.§!!$§ = this.§ I§;
      }
      
      private function § I§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§>t§.stageWidth;
         var _loc3_:int = this.§>t§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §+8§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§>t§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §=-§.§@1§("flashScreenshotReadyHandler",Base64.§[_§(new §false§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §+8§.§-2§.§!!$§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
