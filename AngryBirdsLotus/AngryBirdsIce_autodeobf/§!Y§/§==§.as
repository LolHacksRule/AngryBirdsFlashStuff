package §!Y§
{
   import §-Z§.§?h§;
   import §3O§.§@6§;
   import §;8§.Base64;
   import §>e§.§6T§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §==§ extends EventDispatcher
   {
       
      
      private var §?=§:Boolean;
      
      private var §8!G§:Stage;
      
      private var §>2§:Boolean = false;
      
      public function §==§(param1:Stage)
      {
         super();
         this.§8!G§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §%B§.addCallback("pause",this.§ !?§);
         §%B§.addCallback("resume",this.§^!§);
      }
      
      private function § !?§() : void
      {
         if(!this.§>2§)
         {
            this.§>2§ = true;
            this.§?=§ = !§[o§.§'Z§;
            §[o§.pause();
            AngryBirdsFP11.§?L§.§&x§();
            this.§4P§();
            AngryBirdsFP11.§?L§.externalPause();
         }
      }
      
      private function §^!§() : void
      {
         if(!this.§>2§)
         {
            return;
         }
         this.§>2§ = false;
         if(this.§?=§)
         {
            §[o§.resume();
         }
         §@6§.§`n§(AngryBirdsFP11.§6!<§);
         AngryBirdsFP11.§?L§.externalResume();
         AngryBirdsFP11.§?L§.§30§();
      }
      
      public function §4P§() : void
      {
         §?h§.§ n§.§5R§ = this.§4!%§;
      }
      
      private function §4!%§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§8!G§.stageWidth;
         var _loc3_:int = this.§8!G§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §?h§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§8!G§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §%B§.§,!2§("flashScreenshotReadyHandler",Base64.§`J§(new §6T§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §?h§.§ n§.§5R§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
