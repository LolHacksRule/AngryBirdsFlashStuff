package com.angrybirds
{
   import §&#H§.§3#J§;
   import §5t§.Base64;
   import §6!A§.§2!6§;
   import §<w§.§9"G§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §=O§ extends EventDispatcher
   {
       
      
      private var §3#T§:Boolean;
      
      private var § "u§:Stage;
      
      private var §7!q§:Boolean = false;
      
      public function §=O§(param1:Stage)
      {
         super();
         this.§ "u§ = param1;
         this.init();
      }
      
      public function isExternallyPaused() : Boolean
      {
         return this.§7!q§;
      }
      
      private function init() : void
      {
         §""v§.addCallback("pause",this.§,#,§);
         §""v§.addCallback("resume",this.§ "8§);
         §""v§.addCallback("resumeOnError",this.§ "8§);
      }
      
      private function §,#,§() : void
      {
         if(!this.§7!q§)
         {
            this.§7!q§ = true;
            this.§3#T§ = !§,!q§.isPaused;
            dispatchEvent(new §9"G§(§9"G§.§`!V§));
            §4#;§.singleton.§<#'§();
            this.§-" §();
            §4#;§.singleton.externalPause();
         }
      }
      
      private function § "8§() : void
      {
         if(!this.§7!q§)
         {
            return;
         }
         this.§7!q§ = false;
         if(this.§3#T§)
         {
            dispatchEvent(new §9"G§(§9"G§.§,#T§));
         }
         §?!r§.§2r§(§4#;§.§3"G§);
         §4#;§.singleton.externalResume();
         §4#;§.singleton.§+%§();
      }
      
      public function §-" §() : void
      {
         §3#J§.§2!C§.§0#[§ = this.§6f§;
      }
      
      private function §6f§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ "u§.stageWidth;
         var _loc3_:int = this.§ "u§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §4#;§.stageWidth;
            _loc3_ = §4#;§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §3#J§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§ "u§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §""v§.§&R§("flashScreenshotReadyHandler",Base64.§-$§(new §2!6§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §3#J§.§2!C§.§0#[§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
