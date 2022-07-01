package com.angrybirds
{
   import § !Q§.Base64;
   import §"V§.§#"%§;
   import §'!'§.§0!p§;
   import §;s§.§%!c§;
   import §]!G§.§"F§;
   import §`V§.§;6§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!g§ extends EventDispatcher
   {
       
      
      private var §9r§:Boolean;
      
      private var §=>§:Stage;
      
      private var §]p§:Boolean = false;
      
      public function §!g§(param1:Stage)
      {
         super();
         this.§=>§ = param1;
         this.init();
      }
      
      public function §9<§() : Boolean
      {
         return this.§]p§;
      }
      
      private function init() : void
      {
         §0!p§.addCallback("pause",this.§+"%§);
         §0!p§.addCallback("resume",this.§&9§);
         §0!p§.addCallback("resumeOnError",this.§&9§);
      }
      
      private function §+"%§() : void
      {
         if(!this.§]p§)
         {
            this.§]p§ = true;
            this.§9r§ = !§#Z§.isPaused;
            dispatchEvent(new §#"%§(§#"%§.§3!7§));
            §,!X§.§>!G§.§'!f§();
            this.§7c§();
            §,!X§.§>!G§.§<"&§();
         }
      }
      
      private function §&9§() : void
      {
         if(!this.§]p§)
         {
            return;
         }
         this.§]p§ = false;
         if(this.§9r§)
         {
            dispatchEvent(new §#"%§(§#"%§.§9E§));
         }
         §%!c§.§#!E§(§,!X§.§&,§);
         §,!X§.§>!G§.§#4§();
         §,!X§.§>!G§.§4C§();
      }
      
      public function §7c§() : void
      {
         §;6§.§@X§.§'!9§ = this.§2"3§;
      }
      
      private function §2"3§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§=>§.stageWidth;
         var _loc3_:int = this.§=>§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §,!X§.stageWidth;
            _loc3_ = §,!X§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §;6§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§=>§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §0!p§.§`_§("flashScreenshotReadyHandler",Base64.§;!Y§(new §"F§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §;6§.§@X§.§'!9§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
