package §]!A§
{
   import §'6§.§"]§;
   import §+N§.§@!]§;
   import §2h§.§1!^§;
   import §6!B§.§>!E§;
   import §6o§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §8!4§ extends EventDispatcher
   {
       
      
      private var §9"$§:Boolean;
      
      private var §^!w§:Stage;
      
      private var §^!C§:Boolean = false;
      
      public function §8!4§(param1:Stage)
      {
         super();
         this.§^!w§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §@!]§.addCallback("pause",this.§4"7§);
         §@!]§.addCallback("resume",this.§]n§);
      }
      
      private function §4"7§() : void
      {
         if(!this.§^!C§)
         {
            this.§^!C§ = true;
            this.§9"$§ = !§#6§.isPaused;
            §#6§.pause();
            AngryBirdsFP11.§@<§.§#m§();
            this.§!!p§();
            AngryBirdsFP11.§@<§.externalPause();
         }
      }
      
      private function §]n§() : void
      {
         if(!this.§^!C§)
         {
            return;
         }
         this.§^!C§ = false;
         if(this.§9"$§)
         {
            §#6§.resume();
         }
         §>!E§.§7X§(AngryBirdsFP11.§9q§);
         AngryBirdsFP11.§@<§.externalResume();
         AngryBirdsFP11.§@<§.§0_§();
      }
      
      public function §!!p§() : void
      {
         §"]§.§!X§.§ "0§ = this.§%r§;
      }
      
      private function §%r§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§^!w§.stageWidth;
         var _loc3_:int = this.§^!w§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §"]§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§^!w§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §@!]§.§9"'§("flashScreenshotReadyHandler",Base64.§ !q§(new §1!^§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §"]§.§!X§.§ "0§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
