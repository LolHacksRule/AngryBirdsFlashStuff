package com.angrybirds
{
   import § 0§.§@Y§;
   import §#!k§.§8"z§;
   import §,"v§.§@§;
   import §-Y§.§7t§;
   import §0"I§.Base64;
   import §9!!§.§=!S§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §9G§ extends EventDispatcher
   {
       
      
      private var §!j§:Boolean;
      
      private var §#o§:Stage;
      
      private var §>!=§:Boolean = false;
      
      public function §9G§(param1:Stage)
      {
         super();
         this.§#o§ = param1;
         this.init();
      }
      
      public function isExternallyPaused() : Boolean
      {
         return this.§>!=§;
      }
      
      private function init() : void
      {
         §@Y§.addCallback("pause",this.§^s§);
         §@Y§.addCallback("resume",this.§ !t§);
         §@Y§.addCallback("resumeOnError",this.§ !t§);
      }
      
      private function §^s§() : void
      {
         if(!this.§>!=§)
         {
            this.§>!=§ = true;
            this.§!j§ = !§;!e§.isPaused;
            dispatchEvent(new §8"z§(§8"z§.§@"$§));
            §;"@§.singleton.§@_§();
            this.§1R§();
            §;"@§.singleton.externalPause();
         }
      }
      
      private function § !t§() : void
      {
         if(!this.§>!=§)
         {
            return;
         }
         this.§>!=§ = false;
         if(this.§!j§)
         {
            dispatchEvent(new §8"z§(§8"z§.§6b§));
         }
         §@§.§&"l§(§;"@§.§else §);
         §;"@§.singleton.externalResume();
         §;"@§.singleton.§9f§();
      }
      
      public function §1R§() : void
      {
         §=!S§.§8y§.§1S§ = this.§%U§;
      }
      
      private function §%U§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§#o§.stageWidth;
         var _loc3_:int = this.§#o§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §;"@§.stageWidth;
            _loc3_ = §;"@§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §=!S§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§#o§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §@Y§.§7"H§("flashScreenshotReadyHandler",Base64.§ !1§(new §7t§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §=!S§.§8y§.§1S§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
