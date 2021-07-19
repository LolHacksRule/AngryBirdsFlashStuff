package com.angrybirds
{
   import §-!;§.§[!F§;
   import §1T§.§'!c§;
   import §<G§.§2C§;
   import §[O§.§0`§;
   import §`!a§.§1"&§;
   import each.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[!5§ extends EventDispatcher
   {
       
      
      private var §+!E§:Boolean;
      
      private var §7Y§:Stage;
      
      private var §=2§:Boolean = false;
      
      public function §[!5§(param1:Stage)
      {
         super();
         this.§7Y§ = param1;
         this.init();
      }
      
      public function §6q§() : Boolean
      {
         return this.§=2§;
      }
      
      private function init() : void
      {
         §2C§.addCallback("pause",this.§`"+§);
         §2C§.addCallback("resume",this.§0!P§);
         §2C§.addCallback("resumeOnError",this.§0!P§);
      }
      
      private function §`"+§() : void
      {
         if(!this.§=2§)
         {
            this.§=2§ = true;
            this.§+!E§ = !§&!"§.isPaused;
            dispatchEvent(new §[!F§(§[!F§.§'Z§));
            §6!!§.singleton.§#N§();
            this.§[!!§();
            §6!!§.singleton.§"!O§();
         }
      }
      
      private function §0!P§() : void
      {
         if(!this.§=2§)
         {
            return;
         }
         this.§=2§ = false;
         if(this.§+!E§)
         {
            dispatchEvent(new §[!F§(§[!F§.§%n§));
         }
         §'!c§.§,!O§(§6!!§.§[>§);
         §6!!§.singleton.§5,§();
         §6!!§.singleton.§^!l§();
      }
      
      public function §[!!§() : void
      {
         §1"&§.§1i§.§7!]§ = this.§8!S§;
      }
      
      private function §8!S§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§7Y§.stageWidth;
         var _loc3_:int = this.§7Y§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §6!!§.stageWidth;
            _loc3_ = §6!!§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §1"&§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§7Y§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §2C§.§^!A§("flashScreenshotReadyHandler",Base64.§`d§(new §0`§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §1"&§.§1i§.§7!]§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
