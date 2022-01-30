package §3!S§
{
   import §%4§.§]8§;
   import §-N§.§=!]§;
   import §6p§.§'!B§;
   import §9[§.§+!^§;
   import §@!;§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §%!R§ extends EventDispatcher
   {
       
      
      private var §&[§:Boolean;
      
      private var §5e§:Stage;
      
      private var §4!§:Boolean = false;
      
      public function §%!R§(param1:Stage)
      {
         super();
         this.§5e§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §]8§.addCallback("pause",this.§'"-§);
         §]8§.addCallback("resume",this.§1!i§);
      }
      
      private function §'"-§() : void
      {
         if(!this.§4!§)
         {
            this.§4!§ = true;
            this.§&[§ = !§%s§.isPaused;
            §%s§.pause();
            AngryBirdsFP11.§?!-§.§0!B§();
            this.§6x§();
            AngryBirdsFP11.§?!-§.§0!x§();
         }
      }
      
      private function §1!i§() : void
      {
         if(!this.§4!§)
         {
            return;
         }
         this.§4!§ = false;
         if(this.§&[§)
         {
            §%s§.resume();
         }
         §'!B§.§6t§(AngryBirdsFP11.§[8§);
         AngryBirdsFP11.§?!-§.§,!q§();
         AngryBirdsFP11.§?!-§.§?A§();
      }
      
      public function §6x§() : void
      {
         §=!]§.§@§.§9E§ = this.§ !n§;
      }
      
      private function § !n§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§5e§.stageWidth;
         var _loc3_:int = this.§5e§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §=!]§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§5e§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §]8§.performCall("flashScreenshotReadyHandler",Base64.§?"3§(new §+!^§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §=!]§.§@§.§9E§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
