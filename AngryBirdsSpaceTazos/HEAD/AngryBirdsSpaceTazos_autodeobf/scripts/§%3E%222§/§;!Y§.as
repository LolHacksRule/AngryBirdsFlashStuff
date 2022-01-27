package §>"2§
{
   import §#R§.§`B§;
   import §'!B§.§8T§;
   import §26§.§3v§;
   import §3!S§.§<5§;
   import §@"9§.§4j§;
   import §`!w§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!Y§ extends EventDispatcher
   {
       
      
      private var §"!q§:Boolean;
      
      private var §6N§:Stage;
      
      private var §!B§:Boolean = false;
      
      public function §;!Y§(param1:Stage)
      {
         super();
         this.§6N§ = param1;
         this.init();
      }
      
      public function §%!I§() : Boolean
      {
         return this.§!B§;
      }
      
      private function init() : void
      {
         §3v§.addCallback("pause",this.§,"1§);
         §3v§.addCallback("resume",this.§^!3§);
      }
      
      private function §,"1§() : void
      {
         if(!this.§!B§)
         {
            this.§!B§ = true;
            this.§"!q§ = !§8k§.isPaused;
            dispatchEvent(new §`B§(§`B§.§"!D§));
            §2&§.§6o§.§4"C§();
            this.§]!7§();
            §2&§.§6o§.§+r§();
         }
      }
      
      private function §^!3§() : void
      {
         if(!this.§!B§)
         {
            return;
         }
         this.§!B§ = false;
         if(this.§"!q§)
         {
            dispatchEvent(new §`B§(§`B§.§=W§));
         }
         §<5§.§4h§(§2&§.§8"B§);
         §2&§.§6o§.§&">§();
         §2&§.§6o§.§;>§();
      }
      
      public function §]!7§() : void
      {
         §8T§.§5!Y§.§+!J§ = this.§!!D§;
      }
      
      private function §!!D§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§6N§.stageWidth;
         var _loc3_:int = this.§6N§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §2&§.stageWidth;
            _loc3_ = §2&§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §8T§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§6N§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §3v§.§0!Z§("flashScreenshotReadyHandler",Base64.§"!§(new §4j§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §8T§.§5!Y§.§+!J§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
