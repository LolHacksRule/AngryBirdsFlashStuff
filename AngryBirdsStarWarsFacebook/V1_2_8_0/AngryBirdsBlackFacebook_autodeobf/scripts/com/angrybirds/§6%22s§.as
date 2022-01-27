package com.angrybirds
{
   import § "-§.§6!R§;
   import §5"Q§.§5"s§;
   import §9"`§.Base64;
   import §=!4§.§2!k§;
   import §>"!§.§58§;
   import §`"1§.§=Q§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6"s§ extends EventDispatcher
   {
       
      
      private var §%"k§:Boolean;
      
      private var §`6§:Stage;
      
      private var §0!z§:Boolean = false;
      
      public function §6"s§(param1:Stage)
      {
         super();
         this.§`6§ = param1;
         this.init();
      }
      
      public function isExternallyPaused() : Boolean
      {
         return this.§0!z§;
      }
      
      private function init() : void
      {
         §5"s§.addCallback("pause",this.§,!J§);
         §5"s§.addCallback("resume",this.§]D§);
         §5"s§.addCallback("resumeOnError",this.§]D§);
      }
      
      private function §,!J§() : void
      {
         if(!this.§0!z§)
         {
            this.§0!z§ = true;
            this.§%"k§ = !§<!J§.isPaused;
            dispatchEvent(new §2!k§(§2!k§.§+§));
            §4"#§.singleton.§,]§();
            this.§6P§();
            §4"#§.singleton.externalPause();
         }
      }
      
      private function §]D§() : void
      {
         if(!this.§0!z§)
         {
            return;
         }
         this.§0!z§ = false;
         if(this.§%"k§)
         {
            dispatchEvent(new §2!k§(§2!k§.§>c§));
         }
         §=Q§.§9-§(§4"#§.§1#!§);
         §4"#§.singleton.externalResume();
         §4"#§.singleton.§4x§();
      }
      
      public function §6P§() : void
      {
         §6!R§.§+!d§.§0C§ = this.§9!N§;
      }
      
      private function §9!N§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§`6§.stageWidth;
         var _loc3_:int = this.§`6§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §4"#§.stageWidth;
            _loc3_ = §4"#§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §6!R§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§`6§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §5"s§.§<!8§("flashScreenshotReadyHandler",Base64.§ #4§(new §58§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §6!R§.§+!d§.§0C§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
