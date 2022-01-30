package com.angrybirds
{
   import §-!Y§.§%!%§;
   import §0!$§.Base64;
   import §1!L§.§+!u§;
   import §8,§.§0!>§;
   import §8x§.§]"-§;
   import §@!6§.§3!5§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!-§ extends EventDispatcher
   {
       
      
      private var §%"&§:Boolean;
      
      private var §'!k§:Stage;
      
      private var §8R§:Boolean = false;
      
      public function §;!-§(param1:Stage)
      {
         super();
         this.§'!k§ = param1;
         this.init();
      }
      
      public function §0!i§() : Boolean
      {
         return this.§8R§;
      }
      
      private function init() : void
      {
         §]"-§.addCallback("pause",this.§7H§);
         §]"-§.addCallback("resume",this.§<j§);
         §]"-§.addCallback("resumeOnError",this.§<j§);
      }
      
      private function §7H§() : void
      {
         if(!this.§8R§)
         {
            this.§8R§ = true;
            this.§%"&§ = !§6!E§.isPaused;
            dispatchEvent(new §0!>§(§0!>§.§;!x§));
            §-!I§.§[f§.§-"1§();
            this.§%,§();
            §-!I§.§[f§.§8!v§();
         }
      }
      
      private function §<j§() : void
      {
         if(!this.§8R§)
         {
            return;
         }
         this.§8R§ = false;
         if(this.§%"&§)
         {
            dispatchEvent(new §0!>§(§0!>§.§5K§));
         }
         §3!5§.§0,§(§-!I§.§5"#§);
         §-!I§.§[f§.§[S§();
         §-!I§.§[f§.§-!D§();
      }
      
      public function §%,§() : void
      {
         §%!%§.§"T§.§<n§ = this.§ !4§;
      }
      
      private function § !4§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§'!k§.stageWidth;
         var _loc3_:int = this.§'!k§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §-!I§.stageWidth;
            _loc3_ = §-!I§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §%!%§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§'!k§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §]"-§.§6V§("flashScreenshotReadyHandler",Base64.§[!A§(new §+!u§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §%!%§.§"T§.§<n§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
