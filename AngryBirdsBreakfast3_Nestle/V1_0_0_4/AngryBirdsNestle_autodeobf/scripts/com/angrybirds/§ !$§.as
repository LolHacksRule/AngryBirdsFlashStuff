package com.angrybirds
{
   import §"I§.Base64;
   import §&!>§.§3!k§;
   import §4X§.§'!&§;
   import §6!4§.§<!D§;
   import §?!4§.§=!v§;
   import §?-§.§do §;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § !$§ extends EventDispatcher
   {
       
      
      private var §4!6§:Boolean;
      
      private var §`!"§:Stage;
      
      private var §4!1§:Boolean = false;
      
      public function § !$§(param1:Stage)
      {
         super();
         this.§`!"§ = param1;
         this.init();
      }
      
      public function §'s§() : Boolean
      {
         return this.§4!1§;
      }
      
      private function init() : void
      {
         §do §.addCallback("pause",this.§]g§);
         §do §.addCallback("resume",this.§!!%§);
         §do §.addCallback("resumeOnError",this.§!!%§);
      }
      
      private function §]g§() : void
      {
         if(!this.§4!1§)
         {
            this.§4!1§ = true;
            this.§4!6§ = !§6U§.isPaused;
            dispatchEvent(new §=!v§(§=!v§.§="-§));
            §-!l§.§"x§.§'"-§();
            this.§?"1§();
            §-!l§.§"x§.§`!D§();
         }
      }
      
      private function §!!%§() : void
      {
         if(!this.§4!1§)
         {
            return;
         }
         this.§4!1§ = false;
         if(this.§4!6§)
         {
            dispatchEvent(new §=!v§(§=!v§.§4!c§));
         }
         §3!k§.§"!-§(§-!l§.§[Z§);
         §-!l§.§"x§.§-h§();
         §-!l§.§"x§.§9?§();
      }
      
      public function §?"1§() : void
      {
         §<!D§.§?!_§.§ A§ = this.§%!+§;
      }
      
      private function §%!+§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§`!"§.stageWidth;
         var _loc3_:int = this.§`!"§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §-!l§.stageWidth;
            _loc3_ = §-!l§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §<!D§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§`!"§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §do §.§>"-§("flashScreenshotReadyHandler",Base64.§3!U§(new §'!&§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §<!D§.§?!_§.§ A§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
