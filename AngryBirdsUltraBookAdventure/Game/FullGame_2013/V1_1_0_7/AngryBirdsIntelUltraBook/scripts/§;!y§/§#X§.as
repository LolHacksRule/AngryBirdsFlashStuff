package §;!y§
{
   import §1!B§.Base64;
   import §2m§.§<!?§;
   import §9-§.§,!q§;
   import §>L§.§+!i§;
   import §[!b§.§-!Q§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#X§ extends EventDispatcher
   {
       
      
      private var §7!s§:Boolean;
      
      private var §@e§:Stage;
      
      private var §9!U§:Boolean = false;
      
      public function §#X§(param1:Stage)
      {
         super();
         this.§@e§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §+!i§.addCallback("pause",this.§&!b§);
         §+!i§.addCallback("resume",this.§'!n§);
      }
      
      private function §&!b§() : void
      {
         if(!this.§9!U§)
         {
            this.§9!U§ = true;
            this.§7!s§ = !§,!s§.isPaused;
            §,!s§.pause();
            AngryBirdsFP11.§'!g§.§5!M§();
            this.§#u§();
            AngryBirdsFP11.§'!g§.externalPause();
         }
      }
      
      private function §'!n§() : void
      {
         if(!this.§9!U§)
         {
            return;
         }
         this.§9!U§ = false;
         if(this.§7!s§)
         {
            §,!s§.resume();
         }
         §-!Q§.§,!=§(AngryBirdsFP11.§0!7§);
         AngryBirdsFP11.§'!g§.externalResume();
         AngryBirdsFP11.§'!g§.§5;§();
      }
      
      public function §#u§() : void
      {
         §<!?§.§,=§.§"]§ = this.§+^§;
      }
      
      private function §+^§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§@e§.stageWidth;
         var _loc3_:int = this.§@e§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §<!?§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§@e§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §+!i§.§>!y§("flashScreenshotReadyHandler",Base64.§8!1§(new §,!q§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §<!?§.§,=§.§"]§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
