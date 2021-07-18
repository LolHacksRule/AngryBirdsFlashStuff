package §,P§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §6U§.§-!U§;
   import §6]§.Base64;
   import §[!8§.§6!H§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1T§ extends EventDispatcher
   {
       
      
      private var §7]§:Boolean;
      
      private var §0"§:Stage;
      
      private var §`!-§:Boolean = false;
      
      public function §1T§(param1:Stage)
      {
         super();
         this.§0"§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §6!H§.addCallback("pause",this.§^!u§);
         §6!H§.addCallback("resume",this.§+b§);
      }
      
      private function §^!u§() : void
      {
         if(!this.§`!-§)
         {
            this.§`!-§ = true;
            this.§7]§ = !§'_§.isPaused;
            §'_§.pause();
            AngryBirdsFP11.§@"7§.§>!A§();
            this.§'" §();
            AngryBirdsFP11.§@"7§.§[0§();
         }
      }
      
      private function §+b§() : void
      {
         if(!this.§`!-§)
         {
            return;
         }
         this.§`!-§ = false;
         if(this.§7]§)
         {
            §'_§.resume();
         }
         §0"#§.§5#§(AngryBirdsFP11.§2B§);
         AngryBirdsFP11.§@"7§.§=g§();
         AngryBirdsFP11.§@"7§.§>M§();
      }
      
      public function §'" §() : void
      {
         §%K§.§`9§.§>"§ = this.§=!3§;
      }
      
      private function §=!3§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§0"§.stageWidth;
         var _loc3_:int = this.§0"§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §%K§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§0"§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §6!H§.§2!i§("flashScreenshotReadyHandler",Base64.§7o§(new §-!U§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §%K§.§`9§.§>"§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
