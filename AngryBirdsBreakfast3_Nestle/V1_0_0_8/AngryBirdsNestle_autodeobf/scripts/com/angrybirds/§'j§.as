package com.angrybirds
{
   import §8q§.§]d§;
   import §;4§.Base64;
   import §<" §.§'"4§;
   import §=!6§.§+8§;
   import §>x§.§1!_§;
   import §^t§.§4!C§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §'j§ extends EventDispatcher
   {
       
      
      private var §#!C§:Boolean;
      
      private var §;s§:Stage;
      
      private var §%y§:Boolean = false;
      
      public function §'j§(param1:Stage)
      {
         super();
         this.§;s§ = param1;
         this.init();
      }
      
      public function §?S§() : Boolean
      {
         return this.§%y§;
      }
      
      private function init() : void
      {
         §4!C§.addCallback("pause",this.§`!z§);
         §4!C§.addCallback("resume",this.§!!s§);
         §4!C§.addCallback("resumeOnError",this.§!!s§);
      }
      
      private function §`!z§() : void
      {
         if(!this.§%y§)
         {
            this.§%y§ = true;
            this.§#!C§ = !§4"6§.isPaused;
            dispatchEvent(new §'"4§(§'"4§.§8!c§));
            §-O§.§5!1§.§="§();
            this.§,"5§();
            §-O§.§5!1§.§!0§();
         }
      }
      
      private function §!!s§() : void
      {
         if(!this.§%y§)
         {
            return;
         }
         this.§%y§ = false;
         if(this.§#!C§)
         {
            dispatchEvent(new §'"4§(§'"4§.§,-§));
         }
         §]d§.§7!_§(§-O§.§=!#§);
         §-O§.§5!1§.§1!0§();
         §-O§.§5!1§.§]N§();
      }
      
      public function §,"5§() : void
      {
         §+8§.§0j§.§^!X§ = this.§[S§;
      }
      
      private function §[S§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§;s§.stageWidth;
         var _loc3_:int = this.§;s§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §-O§.stageWidth;
            _loc3_ = §-O§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §+8§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§;s§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §4!C§.§6'§("flashScreenshotReadyHandler",Base64.§>"-§(new §1!_§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §+8§.§0j§.§^!X§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
