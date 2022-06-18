package §6h§
{
   import §"6§.§!9§;
   import §'0§.§]!2§;
   import §'5§.§1`§;
   import §7!§.§,L§;
   import §@!;§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §3K§ extends EventDispatcher
   {
       
      
      private var §[=§:Boolean;
      
      private var §`!"§:Stage;
      
      private var §'!&§:Boolean = false;
      
      public function §3K§(param1:Stage)
      {
         super();
         this.§`!"§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §!9§.addCallback("pause",this.§#L§);
         §!9§.addCallback("resume",this.§+J§);
      }
      
      private function §#L§() : void
      {
         if(!this.§'!&§)
         {
            this.§'!&§ = true;
            this.§[=§ = !§[!4§.isPaused;
            §[!4§.pause();
            AngryBirdsFP11.§6C§.§+m§();
            this.§0T§();
            AngryBirdsFP11.§6C§.externalPause();
         }
      }
      
      private function §+J§() : void
      {
         if(!this.§'!&§)
         {
            return;
         }
         this.§'!&§ = false;
         if(this.§[=§)
         {
            §[!4§.resume();
         }
         §]!2§.§]7§(AngryBirdsFP11.§&[§);
         AngryBirdsFP11.§6C§.externalResume();
         AngryBirdsFP11.§6C§.§^!D§();
      }
      
      public function §0T§() : void
      {
         §,L§.§3v§.§?W§ = this.§"5§;
      }
      
      private function §"5§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§`!"§.stageWidth;
         var _loc3_:int = this.§`!"§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §,L§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§`!"§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §!9§.§=G§("flashScreenshotReadyHandler",Base64.§4!=§(new §1`§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §,L§.§3v§.§?W§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
