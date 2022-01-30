package com.angrybirds
{
   import § !H§.§0!m§;
   import §#"2§.§,5§;
   import §5!W§.§>P§;
   import §9![§.§1!i§;
   import §=!7§.Base64;
   import §>!L§.§%c§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]f§ extends EventDispatcher
   {
       
      
      private var § ^§:Boolean;
      
      private var §9!I§:Stage;
      
      private var §0!P§:Boolean = false;
      
      public function §]f§(param1:Stage)
      {
         super();
         this.§9!I§ = param1;
         this.init();
      }
      
      public function §2z§() : Boolean
      {
         return this.§0!P§;
      }
      
      private function init() : void
      {
         §0!m§.addCallback("pause",this.§!#§);
         §0!m§.addCallback("resume",this.§5!$§);
         §0!m§.addCallback("resumeOnError",this.§5!$§);
      }
      
      private function §!#§() : void
      {
         if(!this.§0!P§)
         {
            this.§0!P§ = true;
            this.§ ^§ = !§4!l§.isPaused;
            dispatchEvent(new §%c§(§%c§.§^c§));
            §&N§.§#Y§.§7!e§();
            this.§8_§();
            §&N§.§#Y§.§1!9§();
         }
      }
      
      private function §5!$§() : void
      {
         if(!this.§0!P§)
         {
            return;
         }
         this.§0!P§ = false;
         if(this.§ ^§)
         {
            dispatchEvent(new §%c§(§%c§.§,!Y§));
         }
         §1!i§.§-b§(§&N§.§4f§);
         §&N§.§#Y§.§`%§();
         §&N§.§#Y§.§7![§();
      }
      
      public function §8_§() : void
      {
         §>P§.§;_§.§#!<§ = this.§%!v§;
      }
      
      private function §%!v§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§9!I§.stageWidth;
         var _loc3_:int = this.§9!I§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §&N§.stageWidth;
            _loc3_ = §&N§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §>P§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§9!I§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §0!m§.§<Q§("flashScreenshotReadyHandler",Base64.§,y§(new §,5§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §>P§.§;_§.§#!<§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
